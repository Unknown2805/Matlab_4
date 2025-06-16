function varargout = tugas_akhir_4(varargin)
% TUGAS_AKHIR_4 MATLAB code for tugas_akhir_4.fig
%      TUGAS_AKHIR_4, by itself, creates a new TUGAS_AKHIR_4 or raises the existing
%      singleton*.
%
%      H = TUGAS_AKHIR_4 returns the handle to a new TUGAS_AKHIR_4 or the handle to
%      the existing singleton*.
%
%      TUGAS_AKHIR_4('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TUGAS_AKHIR_4.M with the given input arguments.
%
%      TUGAS_AKHIR_4('Property','Value',...) creates a new TUGAS_AKHIR_4 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before tugas_akhir_4_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to tugas_akhir_4_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help tugas_akhir_4

% Last Modified by GUIDE v2.5 16-Jun-2025 15:46:38

% Begin initialization code - DO NOT EDIT
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
% End initialization code - DO NOT EDIT


% --- Executes just before tugas_akhir_4 is made visible.
function tugas_akhir_4_OpeningFcn(hObject, eventdata, handles, varargin)

if strcmp(get(handles.content4, 'Visible'), 'on')
    axes(handles.content4_1);
    imshow('unindra_logo.png');
    axis off;

end
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes tugas_akhir_4 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = tugas_akhir_4_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in navbar1.
function navbar1_Callback(hObject, eventdata, handles)
    set(handles.content4,'Visible','off');
    set(handles.content3,'Visible','off');
    cla(handles.content4_1);

% --- Executes on button press in navbar2.
function navbar2_Callback(hObject, eventdata, handles)
    set(handles.content4,'Visible','off');
    set(handles.content3,'Visible','off');
    cla(handles.content4_1);

% --- Executes on button press in navbar3.
function navbar3_Callback(hObject, eventdata, handles)
    set(handles.content4,'Visible','off');    
    set(handles.content3,'Visible','on');
    
    if strcmp(get(handles.content3, 'Visible'), 'on')
        axes(handles.content3_1);
        imshow('rpl_logo.png');
        axis off;
    end
% --- Executes on button press in navbar4.
function navbar4_Callback(hObject, eventdata, handles)
    set(handles.content4,'Visible','on');
    set(handles.content3,'Visible','off');
    
    if strcmp(get(handles.content4, 'Visible'), 'on')
        axes(handles.content3_1);
        imshow('unindra_logo.png');
        axis off;
    end

    

% --- Executes on button press in close.
function close_Callback(hObject, eventdata, handles)
close;

% --- Executes during object creation, after setting all properties.
function content4_1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to content4_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
