function varargout = TransformatorIdeal(varargin)
% TRANSFORMATORIDEAL MATLAB code for TransformatorIdeal.fig
%      TRANSFORMATORIDEAL, by itself, creates a new TRANSFORMATORIDEAL or raises the existing
%      singleton*.
%
%      H = TRANSFORMATORIDEAL returns the handle to a new TRANSFORMATORIDEAL or the handle to
%      the existing singleton*.
%
%      TRANSFORMATORIDEAL('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TRANSFORMATORIDEAL.M with the given input arguments.
%
%      TRANSFORMATORIDEAL('Property','Value',...) creates a new TRANSFORMATORIDEAL or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before TransformatorIdeal_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to TransformatorIdeal_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help TransformatorIdeal

% Last Modified by GUIDE v2.5 25-Jun-2025 01:35:51

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @TransformatorIdeal_OpeningFcn, ...
                   'gui_OutputFcn',  @TransformatorIdeal_OutputFcn, ...
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


% --- Executes just before TransformatorIdeal is made visible.
function TransformatorIdeal_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to TransformatorIdeal (see VARARGIN)

% Choose default command line output for TransformatorIdeal
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes TransformatorIdeal wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = TransformatorIdeal_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function vp_Callback(hObject, eventdata, handles)
% hObject    handle to vp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of vp as text
%        str2double(get(hObject,'String')) returns contents of vp as a double


% --- Executes during object creation, after setting all properties.
function vp_CreateFcn(hObject, eventdata, handles)
% hObject    handle to vp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function vs_Callback(hObject, eventdata, handles)
% hObject    handle to vs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of vs as text
%        str2double(get(hObject,'String')) returns contents of vs as a double


% --- Executes during object creation, after setting all properties.
function vs_CreateFcn(hObject, eventdata, handles)
% hObject    handle to vs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function is_Callback(hObject, eventdata, handles)
% hObject    handle to is (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of is as text
%        str2double(get(hObject,'String')) returns contents of is as a double


% --- Executes during object creation, after setting all properties.
function is_CreateFcn(hObject, eventdata, handles)
% hObject    handle to is (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ip_Callback(hObject, eventdata, handles)
% hObject    handle to ip (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ip as text
%        str2double(get(hObject,'String')) returns contents of ip as a double


% --- Executes during object creation, after setting all properties.
function ip_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ip (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function np_Callback(hObject, eventdata, handles)
% hObject    handle to np (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of np as text
%        str2double(get(hObject,'String')) returns contents of np as a double


% --- Executes during object creation, after setting all properties.
function np_CreateFcn(hObject, eventdata, handles)
% hObject    handle to np (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ns_Callback(hObject, eventdata, handles)
% hObject    handle to ns (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ns as text
%        str2double(get(hObject,'String')) returns contents of ns as a double


% --- Executes during object creation, after setting all properties.
function ns_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ns (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in hitung.
function hitung_Callback(hObject, eventdata, handles)
% Ambil nilai dari edit text
Vp = str2double(get(handles.vp, 'String'));
Vs = str2double(get(handles.vs, 'String'));
Ip = str2double(get(handles.ip, 'String'));
Is = str2double(get(handles.is, 'String'));
Np = str2double(get(handles.np, 'String'));
Ns = str2double(get(handles.ns, 'String'));

inputs = [~isnan(Vp), ~isnan(Vs), ~isnan(Ip), ~isnan(Is), ~isnan(Np), ~isnan(Ns)];
valid_count = sum(inputs);

v_valid = (~isnan(Vp) && ~isnan(Vs));
i_valid = (~isnan(Ip) && ~isnan(Is));
n_valid = (~isnan(Np) && ~isnan(Ns));

% jika ada lebih dari 3 input dan jumlah pecahan kurang dari atau sama dengan 2
if (v_valid + i_valid + n_valid <= 2)
    % Cek pecahan mana yang valid
    if v_valid
        k = Vp / Vs; 
        if(isnan(Ip) && ~isnan(Is))
           Ip_hasil = Is/k;
           set(handles.ip, 'String', num2str(Ip_hasil));
        elseif(isnan(Is) && ~isnan(Ip))
           Is_hasil = Ip*k;
           set(handles.is, 'String', num2str(Is_hasil));
        elseif(isnan(Ip) && isnan(Is))
            set(handles.ip, 'String','');
            set(handles.is, 'String','');
        end
        if(isnan(Np) && ~isnan(Ns))
           Np_hasil = Ns*k;
           set(handles.np, 'String', num2str(Np_hasil));
        elseif(isnan(Ns) && ~isnan(Np))
           Ns_hasil = Np/k;
           set(handles.ns, 'String', num2str(Ns_hasil));
        elseif(isnan(Np) && isnan(Ns))
           set(handles.np, 'String','');
           set(handles.ns, 'String',''); 
        end
            
    elseif i_valid
        k = Is / Ip; 
        if(isnan(Vp) && ~isnan(Vs))
           Vp_hasil = Vs*k;
           set(handles.vp, 'String', num2str(Vp_hasil));
        elseif(isnan(Vs) && ~isnan(Vp))
           Vs_hasil = Vp/k;
           set(handles.vs, 'String', num2str(Vs_hasil));
        elseif(isnan(Vp) && isnan(Vs))
            set(handles.vp, 'String','');
            set(handles.vs, 'String',''); 
        end
        if(isnan(Np) && ~isnan(Ns))
           Np_hasil = Ns*k;
           set(handles.np, 'String', num2str(Np_hasil));
        elseif(isnan(Ns) && ~isnan(Np))
           Ns_hasil = Np/k;
           set(handles.ns, 'String', num2str(Ns_hasil));
        elseif(isnan(Np) && isnan(Ns))
           set(handles.np, 'String','');
           set(handles.ns, 'String',''); 
        end
    elseif n_valid
        k = Np / Ns; 
        if(isnan(Vp) && ~isnan(Vs))
           Vp_hasil = Vs*k;
           set(handles.vp, 'String', num2str(Vp_hasil));
        elseif(isnan(Vs) && ~isnan(Vp))
           Vs_hasil = Vp/k;
           set(handles.vs, 'String', num2str(Vs_hasil));
        elseif(isnan(Vp) && isnan(Vs))
            set(handles.vp, 'String','');
            set(handles.vs, 'String','');  
        end
        if(isnan(Ip) && ~isnan(Is))
           Ip_hasil = Is/k;
           set(handles.ip, 'String', num2str(Ip_hasil));
        elseif(isnan(Is) && ~isnan(Ip))
           Is_hasil = Ip*k;
           set(handles.ip, 'String', num2str(Is_hasil));
        elseif(isnan(Ip) && isnan(Is))
            set(handles.ip, 'String','');
            set(handles.is, 'String','');       
        end
    end   
end
if (v_valid + i_valid + n_valid > 2) % lebih dari 2 pecahan
    if((Vp/Vs == Is/Ip) && (Is/Ip == Np/Ns))
        set(handles.alert,'Visible','On');        
        set(handles.alert, 'BackgroundColor', [193 221 198] / 255);
        set(handles.alert, 'ForegroundColor', [0 0 0]);
        set(handles.alert, 'String', 'Kondisi Transformator Ideal');
    else
        set(handles.alert,'Visible','On');
        set(handles.alert, 'BackgroundColor', [1 0 0]);
        set(handles.alert, 'ForegroundColor', [1 1 1]);
        set(handles.alert, 'String', 'Input penuh / Transformator tidak ideal');
    end
end
if (v_valid + i_valid + n_valid == 0)
    set(handles.alert,'Visible','On');
    set(handles.alert, 'BackgroundColor', [1 0 0]);
    set(handles.alert, 'ForegroundColor', [1 1 1]);
    set(handles.alert, 'String', 'Masukkan minimal 3 nilai!');
end


% --- Executes on button press in reset.
function reset_Callback(hObject, eventdata, handles)
set(handles.alert,'Visible','Off');
set(handles.vp,'String','');
set(handles.vs,'String','');
set(handles.ip,'String','');
set(handles.is,'String','');
set(handles.np,'String','');
set(handles.ns,'String','');



function alert_Callback(hObject, eventdata, handles)
% hObject    handle to alert (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of alert as text
%        str2double(get(hObject,'String')) returns contents of alert as a double


% --- Executes during object creation, after setting all properties.
function alert_CreateFcn(hObject, eventdata, handles)
% hObject    handle to alert (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in close.
function close_Callback(hObject, eventdata, handles)
close;
