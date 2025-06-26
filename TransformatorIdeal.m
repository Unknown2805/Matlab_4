function varargout = TransformatorIdeal(varargin)

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

function TransformatorIdeal_OpeningFcn(hObject, eventdata, handles, varargin)

handles.output = hObject;

guidata(hObject, handles);

function varargout = TransformatorIdeal_OutputFcn(hObject, eventdata, handles) 

varargout{1} = handles.output;

function vp_Callback(hObject, eventdata, handles)

function vp_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function vs_Callback(hObject, eventdata, handles)

function vs_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function is_Callback(hObject, eventdata, handles)

function is_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function ip_Callback(hObject, eventdata, handles)

function ip_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function np_Callback(hObject, eventdata, handles)

function np_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function ns_Callback(hObject, eventdata, handles)

function ns_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

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
if (valid_count < 3)
    set(handles.alert,'Visible','On');
    set(handles.alert, 'BackgroundColor', [1 0 0]);
    set(handles.alert, 'ForegroundColor', [1 1 1]);
    set(handles.alert, 'String', 'Masukkan minimal 3 nilai!');
end

function reset_Callback(hObject, eventdata, handles)
set(handles.alert,'Visible','Off');
set(handles.vp,'String','');
set(handles.vs,'String','');
set(handles.ip,'String','');
set(handles.is,'String','');
set(handles.np,'String','');
set(handles.ns,'String','');

function alert_Callback(hObject, eventdata, handles)

function alert_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function close_Callback(hObject, eventdata, handles)
close;
