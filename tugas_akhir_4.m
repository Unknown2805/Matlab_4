function varargout = tugas_akhir_4(varargin)

gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @tugas_akhir_4_OpeningFcn, ...
                   'gui_OutputFcn',  @tugas_akhir_4_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end

function tugas_akhir_4_OpeningFcn(hObject, eventdata, handles, varargin)
    
    if strcmp(get(handles.content1, 'Visible'), 'on')
        axes(handles.content1_1);
        imshow('content1_1.png');
        axis off;
        
            set(handles.navbar1,'BackgroundColor',[52 77 126] /255);
            set(handles.navbar2,'BackgroundColor',[10 36 106] /255);
            set(handles.navbar3,'BackgroundColor',[10 36 106] /255);
            set(handles.navbar4,'BackgroundColor',[10 36 106] /255);            

            set(handles.content1,'Visible','on');
            set(handles.content2,'Visible','off');
            set(handles.content3,'Visible','off');        
            set(handles.content4,'Visible','off');
            
            set(handles.kalkulator,'Visible','off');
    end
handles.output = hObject;
guidata(hObject, handles);

function varargout = tugas_akhir_4_OutputFcn(hObject, eventdata, handles) 

varargout{1} = handles.output;


% --- Executes on button press in navbar4.
function navbar1_Callback(hObject, eventdata, handles)
    set(handles.navbar1,'BackgroundColor',[52 77 126] /255);
    set(handles.navbar2,'BackgroundColor',[10 36 106] /255);
    set(handles.navbar3,'BackgroundColor',[10 36 106] /255);
    set(handles.navbar4,'BackgroundColor',[10 36 106] /255);
    
    set(handles.content1,'Visible','on'); 
    set(handles.content2,'Visible','off');
    set(handles.content3,'Visible','off');
    set(handles.content4,'Visible','off');
    
    if strcmp(get(handles.content1, 'Visible'), 'on')
        axes(handles.content1_1);
        imshow('content1_1.png');
        axis off;
        set(handles.kalkulator,'Visible','off');
    end
     
      
      

% --- Executes on button press in navbar4.
function navbar2_Callback(hObject, eventdata, handles)
    set(handles.navbar1,'BackgroundColor',[10 36 106] /255);
    set(handles.navbar2,'BackgroundColor',[52 77 126] /255);
    set(handles.navbar3,'BackgroundColor',[10 36 106] /255);
    set(handles.navbar4,'BackgroundColor',[10 36 106] /255);

    set(handles.content1,'Visible','off'); 
    set(handles.content2,'Visible','on');
    set(handles.content3,'Visible','off');
    set(handles.content4,'Visible','off');
    
    if strcmp(get(handles.content2, 'Visible'), 'on')       
        axes(handles.content2_1);
        imshow('content2_1.png');
        axis off;
        set(handles.kalkulator,'Visible','on');
    end

% --- Executes on button press in navbar4.
function navbar3_Callback(hObject, eventdata, handles)
    set(handles.navbar1,'BackgroundColor',[10 36 106] /255);
    set(handles.navbar2,'BackgroundColor',[10 36 106] /255);
    set(handles.navbar3,'BackgroundColor',[52 77 126] /255);
    set(handles.navbar4,'BackgroundColor',[10 36 106] /255);
    
    set(handles.content1,'Visible','off'); 
    set(handles.content2,'Visible','off');
    set(handles.content3,'Visible','on');
    set(handles.content4,'Visible','off');
    
    if strcmp(get(handles.content3, 'Visible'), 'on')
        axes(handles.content3_1);
        imshow('content3_1.png');
        axis off;     
        set(handles.kalkulator,'Visible','on');
    end

function navbar4_Callback(hObject, eventdata, handles)
    set(handles.navbar1,'BackgroundColor',[10 36 106] /255);
    set(handles.navbar2,'BackgroundColor',[10 36 106] /255);
    set(handles.navbar3,'BackgroundColor',[10 36 106] /255);
    set(handles.navbar4,'BackgroundColor',[52 77 126] /255);
    
    set(handles.content1,'Visible','off'); 
    set(handles.content2,'Visible','off');
    set(handles.content3,'Visible','off');
    set(handles.content4,'Visible','on');
 
    if strcmp(get(handles.content4, 'Visible'), 'on')
        axes(handles.content4_1);
        imshow('content4_1.png');
        axis off;       
        set(handles.kalkulator,'Visible','on');
    end

function close_Callback(hObject, eventdata, handles)
close;

function content1_1_CreateFcn(hObject, eventdata, handles)

function edit2_Callback(hObject, eventdata, handles)

function edit2_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function kalkulator_Callback(hObject, eventdata, handles)
if strcmp(get(handles.content2, 'Visible'), 'on')
    TransformatorIdeal;    
elseif strcmp(get(handles.content3, 'Visible'), 'on')
    EfisiensiTransformator;
elseif strcmp(get(handles.content4, 'Visible'), 'on')
    RugiDaya;
end
