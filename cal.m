function varargout = cal(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @cal_OpeningFcn, ...
                   'gui_OutputFcn',  @cal_OutputFcn, ...
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
function cal_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject;
guidata(hObject, handles);
function varargout = cal_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;
function display_Callback(hObject, eventdata, handles)
function display_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function pushbutton1_Callback(hObject, eventdata, handles)
str = get(handles.display,'string');
str = [str,get(hObject,'string')];
set(handles.display,'string',str);

function pushbutton2_Callback(hObject, eventdata, handles)

str = get(handles.display,'string');
str = [str,get(hObject,'string')];
set(handles.display,'string',str);
function pushbutton3_Callback(hObject, eventdata, handles)
str = get(handles.display,'string');
str = [str,get(hObject,'string')];
set(handles.display,'string',str);
function pushbutton4_Callback(hObject, eventdata, handles)
str = get(handles.display,'string');
str =str2num(str);
if isempty(str)
    str = get(handles.display,'string');
    set(handles.display,'string',str);
else
    str = get(handles.display,'string');
    str = [str,get(hObject,'string')];
    set(handles.display,'string',str);
end
function pushbutton5_Callback(hObject, eventdata, handles)
str = get(handles.display,'string');
str = [str,get(hObject,'string')];
set(handles.display,'string',str);
function pushbutton6_Callback(hObject, eventdata, handles)
str = get(handles.display,'string');
str = [str,get(hObject,'string')];
set(handles.display,'string',str);
function pushbutton7_Callback(hObject, eventdata, handles)
str = get(handles.display,'string');
str = [str,get(hObject,'string')];
set(handles.display,'string',str);
function pushbutton8_Callback(hObject, eventdata, handles)
str = get(handles.display,'string');
str =str2num(str);
if isempty(str)
    str = get(handles.display,'string');
    set(handles.display,'string',str);
else
    str = get(handles.display,'string');
    str = [str,get(hObject,'string')];
    set(handles.display,'string',str);
end
function pushbutton9_Callback(hObject, eventdata, handles)
str = get(handles.display,'string');
str = [str,get(hObject,'string')];
set(handles.display,'string',str);
function pushbutton10_Callback(hObject, eventdata, handles)
str = get(handles.display,'string');
str = [str,get(hObject,'string')];
set(handles.display,'string',str);
function pushbutton11_Callback(hObject, eventdata, handles)

str = get(handles.display,'string');
str = [str,get(hObject,'string')];
set(handles.display,'string',str);
function pushbutton12_Callback(hObject, eventdata, handles)

str = get(handles.display,'string');
str =str2num(str);
if isempty(str)
    str = get(handles.display,'string');
    set(handles.display,'string',str);
else
    str = get(handles.display,'string');
    str = [str,get(hObject,'string')];
    set(handles.display,'string',str);
end
function pushbutton13_Callback(hObject, eventdata, handles)
str = get(handles.display,'string');
str =str2num(str);
if isempty(str)
    str = get(handles.display,'string');
    set(handles.display,'string',str);
else
    str = get(handles.display,'string');
    str = [str,get(hObject,'string')];
    set(handles.display,'string',str);
end
function pushbutton14_Callback(hObject, eventdata, handles)
str = get(handles.display,'string');
str = [str,get(hObject,'string')];
set(handles.display,'string',str);
function pushbutton15_Callback(hObject, eventdata, handles)
set(handles.display,'string','');
function pushbutton16_Callback(hObject, eventdata, handles)
str = get(handles.display,'string');
str =str2num(str);
if isempty(str)
    str = get(handles.display,'string');
    set(handles.display,'string',str);
else
    str = get(handles.display,'string');
    str = [str,get(hObject,'string')];
    set(handles.display,'string',str);
end
function pushbutton17_Callback(hObject, eventdata, handles)
str = get(handles.display,'string');
val = eval(str);
set(handles.display,'string',num2str(val));