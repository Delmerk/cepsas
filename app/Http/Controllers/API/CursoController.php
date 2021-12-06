<?php

namespace App\Http\Controllers\API;

use App\Curso;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class CursoController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth:api');
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //if (\Gate::allows('isAdmin') || \Gate::allows('isAuthor')) {
        return Curso::latest()->paginate(20);
        //}
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request,[
            'nombre'            => 'required|string|max:450'
            , 'categoria'       => 'required|integer|max:11'
            , 'tutor'           => 'required|integer|max:11'
            , 'duracion'        => 'required|integer'
            , 'tipo_duracion'   => 'required|string|max:300'            
            , 'descripcion'     => 'required|string'
           
        ]);
           // print_r($request); exit; die;
           $curso = new Curso();
           $curso->nombre = $request['nombre'];
           
        return Curso::create([
            'nombre'            => $request['nombre']
            , 'categoria'       => $request['categoria']
            , 'tutor'           => $request['tutor']
            , 'duracion'        => $request['duracion']
            , 'tipo_duracion'   => $request['tipo_duracion']
            , 'img'             => $request['img'] ?  $request['img'] : ''
            , 'valor'           => $request['valor'] ?  $request['img'] : ''
            , 'descripcion'     => $request['descripcion'] ?  $request['img'] : ''
            , 'tipo'            => $request['tipo'] ?  $request['img'] : ''
            , 'validez'         => $request['validez'] ?  $request['img'] : ''
            , 'tipo_validez'    => $request['tipo_validez'] ?  $request['img'] : ''
        ]);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $curso = Curso::findOrFail($id);
        
        $this->validate($request,[
            'nombre'            => 'required|string|max:450'
            , 'categoria'       => 'required|integer|max:11'
            , 'tutor'           => 'required|integer|max:11'
            , 'duracion'        => 'required|integer'
            , 'tipo_duracion'   => 'required|string|max:300'
            
        ]);
        //print_r($request['img']); exit; die;
        $currentPhoto = $curso->img;


        if($request['img'] != $curso->img && $request['img']!=''){
            
            $name =  time().'.' .explode('/', explode(':', substr($request->img, 0, strpos($request->img, ';')))[1])[1];
            //print_r($name); exit;
            \Image::make($request['img'])->save(public_path('img/cursos/').$name);
           // print_r($request['img']); exit; die;
            $request['img'] = $name;
        //}
            $fotocurso = public_path('img/cursos/').$currentPhoto;
            if(file_exists($fotocurso)){
                @unlink($fotocurso);
            }

        }
        
        $curso->nombre          = $request['nombre'];
        $curso->categoria       = $request['categoria'];
        $curso->tutor           = $request['tutor'];
        $curso->duracion        = $request['duracion'];
        $curso->tipo_duracion   = $request['tipo_duracion'];
        $curso->img             = $request['img'] ?  $request['img'] : '';
        //$newPath = $request->photo->store('photos', 's3');
        $curso->valor           = $request['valor'] ?  $request['valor'] : '0';
        $curso->descripcion     = $request['descripcion'] ?  $request['descripcion'] : '';
        $curso->tipo            = $request['tipo'] ?  $request['tipo'] : '';
        $curso->validez         = $request['validez'] ?  $request['validez'] : '';
        $curso->tipo_validez    = $request['tipo_validez'] ?  $request['tipo_validez'] : '';

        $curso->save();
        return ['message' => 'Curso actualizado', 'curso' => $curso];
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $this->authorize('isAdmin');

        $curso = Curso::findOrFail($id);
        
        $curso->delete();

        return ['message' => 'Curso eliminado'];
    }

    public function search ()
    {
        if ($search = \Request::get('q')) {
            $cursos = Curso::where(function ($query) use ($search) {
                $query->where('nombre', 'LIKE', "%$search%")
                        ->orWhere('tipo_duracion', 'LIKE', "%$search%")
                        ->orWhere('descripcion', 'LIKE', "%$search%");
            })->paginate(20);
        } else {
            $cursos = Curso::latest()->paginate(5);
        }

        return $cursos;
    }

    public function getCurso ($id)
    {
       
        $curso = Curso::findOrFail($id);

        return $curso;
    }
}
