function varargout = EfisiensiTransformator(varargin)
% EFISIENSITRANSFORMATOR MATLAB code for EfisiensiTransformator.fig
%      EFISIENSITRANSFORMATOR, by itself, creates a new EFISIENSITRANSFORMATOR or raises the existing
%      singleton*.
%
%      H = EFISIENSITRANSFORMATOR returns the handle to a new EFISIENSITRANSFORMATOR or the handle to
%      the existing singleton*.
%
%      EFISIENSITRANSFORMATOR('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in EFISIENSITRANSFORMATOR.M with the given input arguments.
%
%      EFISIENSITRANSFORMATOR('Property','Value',...) creates a new EFISIENSITRANSFORMATOR or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before EfisiensiTransformator_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to EfisiensiTransformator_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help EfisiensiTransformator

% Last Modified by GUIDE v2.5 26-Jun-2025 10:42:50

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @EfisiensiTransformator_OpeningFcn, ...
                   'gui_OutputFcn',  @EfisiensiTransformator_OutputFcn, ...
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


% --- Executes just before EfisiensiTransformator is made visible.
function EfisiensiTransformator_OpeningFcn(hObject, eventdata, handles, varargin)

handles.output = hObject;

guidata(hObject, handles);


% --- Outputs from this function are returned to the command line.
function varargout = EfisiensiTransformator_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in close2.
function close2_Callback(hObject, eventdata, handles)
close;



function ip2_Callback(hObject, eventdata, handles)
% hObject    handle to ip2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ip2 as text
%        str2double(get(hObject,'String')) returns contents of ip2 as a double


% --- Executes during object creation, after setting all properties.
function ip2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ip2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function is2_Callback(hObject, eventdata, handles)
% hObject    handle to is2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of is2 as text
%        str2double(get(hObject,'String')) returns contents of is2 as a double


% --- Executes during object creation, after setting all properties.
function is2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to is2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function np2_Callback(hObject, eventdata, handles)
% hObject    handle to np2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of np2 as text
%        str2double(get(hObject,'String')) returns contents of np2 as a double


% --- Executes during object creation, after setting all properties.
function np2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to np2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ns2_Callback(hObject, eventdata, handles)
% hObject    handle to ns2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ns2 as text
%        str2double(get(hObject,'String')) returns contents of ns2 as a double


% --- Executes during object creation, after setting all properties.
function ns2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ns2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function output2_Callback(hObject, eventdata, handles)
% hObject    handle to output2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of output2 as text
%        str2double(get(hObject,'String')) returns contents of output2 as a double


% --- Executes during object creation, after setting all properties.
function output2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to output2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in hitung2.
function hitung2_Callback(hObject, eventdata, handles)
Ip2 = str2double(get(handles.ip2,'string'));
Is2 = str2double(get(handles.is2,'string'));
Np2 = str2double(get(handles.np2,'string'));
Ns2 = str2double(get(handles.ns2,'string'));

n = ((Is2*Ns2)/(Ip2*Np2))*100%;

set(handles.output2,'string',n);


% --- Executes on button press in reset2.
function reset2_Callback(hObject, eventdata, handles)
set(handles.ip2,'string','');
set(handles.is2,'string','');
set(handles.np2,'string','');
set(handles.ns2,'string','');
set(handles.output2,'string','');
