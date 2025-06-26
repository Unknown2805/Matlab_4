function varargout = RugiDaya(varargin)

gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @RugiDaya_OpeningFcn, ...
                   'gui_OutputFcn',  @RugiDaya_OutputFcn, ...
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

function RugiDaya_OpeningFcn(hObject, eventdata, handles, varargin)

handles.output = hObject;
guidata(hObject, handles);

function varargout = RugiDaya_OutputFcn(hObject, eventdata, handles) 

varargout{1} = handles.output;

function close3_Callback(hObject, eventdata, handles)
close;

function ip3_Callback(hObject, eventdata, handles)

function ip3_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function is3_Callback(hObject, eventdata, handles)

function is3_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function vp3_Callback(hObject, eventdata, handles)

function vp3_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function vs3_Callback(hObject, eventdata, handles)

function vs3_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function output3_Callback(hObject, eventdata, handles)

function output3_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function hitung3_Callback(hObject, eventdata, handles)
Ip3 = str2double(get(handles.ip3,'string'));
Is3 = str2double(get(handles.is3,'string'));
Vp3 = str2double(get(handles.vp3,'string'));
Vs3 = str2double(get(handles.vs3,'string'));

Prugi = (Vp3*Ip3)-(Vs3*Is3);

set(handles.output3,'string',Prugi);

function reset3_Callback(hObject, eventdata, handles)
set(handles.ip3,'string','');
set(handles.is3,'string','');
set(handles.vp3,'string','');
set(handles.vs3,'string','');
set(handles.output3,'string','');
