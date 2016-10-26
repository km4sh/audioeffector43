function varargout = audioeffector43(varargin)
% AUDIOEFFECTOR43 MATLAB code for audioeffector43.fig
%      AUDIOEFFECTOR43, by itself, creates a new AUDIOEFFECTOR43 or raises the existing
%      singleton*.
%
%      H = AUDIOEFFECTOR43 returns the handle to a new AUDIOEFFECTOR43 or the handle to
%      the existing singleton*.
%
%      AUDIOEFFECTOR43('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in AUDIOEFFECTOR43.M with the given input arguments.
%
%      AUDIOEFFECTOR43('Property','Value',...) creates a new AUDIOEFFECTOR43 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before audioeffector43_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to audioeffector43_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help audioeffector43

% Last Modified by GUIDE v2.5 26-Oct-2016 22:38:44

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @audioeffector43_OpeningFcn, ...
                   'gui_OutputFcn',  @audioeffector43_OutputFcn, ...
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


% --- Executes just before audioeffector43 is made visible.
function audioeffector43_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to audioeffector43 (see VARARGIN)
handles.mPEQ = multibandParametricEQ(...
    'NumEQBands',10,...
    'Frequencies',[31,63,127,255,511,1023,2047,4095,8191,16383],...
    'QualityFactors',[1,1,1,1,1,1,1,1,1,1],...
    'PeakGains',[0,0,0,0,0,0,0,0,0,0],...
    'HasHighShelfFilter',true,...
    'HighShelfCutoff',14000,...
    'HighShelfSlope',0.3,...
    'HighShelfGain',-5,...
    'SampleRate',44100);
guidata(hObject, handles);
% there has a problem about fit the 'visualize' to a plot in gui.
% 
% Choose default command line output for audioeffector43
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes audioeffector43 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = audioeffector43_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on slider movement.
function s31_Callback(hObject, eventdata, handles)
% hObject    handle to s31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.mPEQ.PeakGains(1) = get(hObject,'Value');
guidata(hObject,handles);
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function s31_CreateFcn(hObject, eventdata, handles)
% hObject    handle to s31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function s63_Callback(hObject, eventdata, handles)
% hObject    handle to s63 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.mPEQ.PeakGains(2) = get(hObject,'Value');
guidata(hObject,handles);
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function s63_CreateFcn(hObject, eventdata, handles)
% hObject    handle to s63 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

 
% --- Executes on slider movement.
function s127_Callback(hObject, eventdata, handles)
% hObject    handle to s127 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.mPEQ.PeakGains(3) = get(hObject,'Value');
guidata(hObject,handles);
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function s127_CreateFcn(hObject, eventdata, handles)
% hObject    handle to s127 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function s255_Callback(hObject, eventdata, handles)
% hObject    handle to s255 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.mPEQ.PeakGains(4) = get(hObject,'Value');
guidata(hObject,handles);
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function s255_CreateFcn(hObject, eventdata, handles)
% hObject    handle to s255 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function s511_Callback(hObject, eventdata, handles)
% hObject    handle to s511 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.mPEQ.PeakGains(5) = get(hObject,'Value');
guidata(hObject,handles);
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function s511_CreateFcn(hObject, eventdata, handles)
% hObject    handle to s511 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function s1k_Callback(hObject, eventdata, handles)
% hObject    handle to s1k (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.mPEQ.PeakGains(6) = get(hObject,'Value');
guidata(hObject,handles);
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function s1k_CreateFcn(hObject, eventdata, handles)
% hObject    handle to s1k (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function s2k_Callback(hObject, eventdata, handles)
% hObject    handle to s2k (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.mPEQ.PeakGains(7) = get(hObject,'Value');
guidata(hObject,handles);
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function s2k_CreateFcn(hObject, eventdata, handles)
% hObject    handle to s2k (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function s4k_Callback(hObject, eventdata, handles)
% hObject    handle to s4k (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.mPEQ.PeakGains(8) = get(hObject,'Value');
guidata(hObject,handles);
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function s4k_CreateFcn(hObject, eventdata, handles)
% hObject    handle to s4k (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function s8k_Callback(hObject, eventdata, handles)
% hObject    handle to s8k (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.mPEQ.PeakGains(9) = get(hObject,'Value');
guidata(hObject,handles);
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function s8k_CreateFcn(hObject, eventdata, handles)
% hObject    handle to s8k (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function s16k_Callback(hObject, eventdata, handles)
% hObject    handle to s16k (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.mPEQ.PeakGains(10) = get(hObject,'Value');
guidata(hObject,handles);
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function s16k_CreateFcn(hObject, eventdata, handles)
% hObject    handle to s16k (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in openbutton.
function openbutton_Callback(hObject, eventdata, handles)
% hObject    handle to openbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% MATT the ifs below are judging the members in handles struct,
% MATT if them exist, then release for opening a new file.
% if isfield(handles,'fileReader')
%     release(handles.fileReader)
% end
% if isfield(handles,'mPEQ')
%     release(handles.mPEQ)
% end
% if isfield(handles,'deviceWriter')
%     release(handles.deviceWriter)
% end
[filename,pathname]=uigetfile(...
    {'*.wav','WAV Files(*.wav)';...
    '*.*','All Files(*.*)'}, ...
    'Select a *.wav file');
if isequal(filename,0)||isequal(pathname,0)
    return;
else
    set(handles.nowplay,'String',filename);
end
% frameLength = 512;
% handles.fileReader = dsp.AudioFileReader(...
%     'Filename',filename,...
%     'SamplesPerFrame',frameLength);
% handles.deviceWriter = audioDeviceWriter(...
%     'SampleRate',handles.fileReader.SampleRate);
% setup(handles.deviceWriter,ones(frameLength,2));
[wave] = audioread(filename);
set(handles.axes2,'YLim',[-1.0,1.0]);
plot(handles.axes2,wave,'k');
handles.filename = filename;
guidata(hObject, handles);

% --- Executes on button press in generatebutton.
function generatebutton_Callback(hObject, eventdata, handles)
% hObject    handle to generatebutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
val = get(handles.popupmenu1,'Value');
switch val
    case 1
        return;
    case 2
        denosingfilename = denosing(handles.filename);
end
if isfield(handles,'fileReader')
    release(handles.fileReader)
end
if isfield(handles,'deviceWriter')
    release(handles.deviceWriter)
end
frameLength = 512;
handles.fileReader = dsp.AudioFileReader(...
    'Filename',denosingfilename,...
    'SamplesPerFrame',frameLength);
handles.deviceWriter = audioDeviceWriter(...
    'SampleRate',handles.fileReader.SampleRate);
setup(handles.deviceWriter,ones(frameLength,2));
[wave] = audioread(denosingfilename);
set(handles.axes3,'YLim',[-1,1]);
set(handles.axes3,'XLim',[0,length(wave)]);
plot(handles.axes3,wave,'k');
handles.denosingfilename = denosingfilename;
guidata(hObject, handles);


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in playbutton1.
function playbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to playbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global flag;
if ~isfield(handles,'filename')
    errordlg('Please select an audio file.','Error');
    return;
end
nowstate = get(handles.pausebutton1,'String');
if  strcmp(nowstate,'Continue')
   set(handles.pausebutton1,'String','Pause');
end
if isfield(handles,'fileReader')
    release(handles.fileReader)
end
if isfield(handles,'mPEQ')
    release(handles.mPEQ)
end
if isfield(handles,'deviceWriter')
    release(handles.deviceWriter)
end

frameLength = 512;
handles.fileReader = dsp.AudioFileReader(...
    'Filename',handles.filename,...
    'SamplesPerFrame',frameLength);
handles.deviceWriter = audioDeviceWriter(...
    'SampleRate',handles.fileReader.SampleRate);
setup(handles.deviceWriter,ones(frameLength,2));
guidata(hObject, handles);
while ~isDone(handles.fileReader)&&~flag
    handles.originalSignal = handles.fileReader();
    switch get(handles.eqenable,'Value')
        case 1
            handles.equalizedSignal = handles.mPEQ(handles.originalSignal);
            handles.deviceWriter(handles.equalizedSignal);
        case 0
            handles.deviceWriter(handles.originalSignal);
    end
	pause(1e-2);
end
flag = 0;
% releasing
if isfield(handles,'fileReader')&&isDone(handles.fileReader)
    release(handles.fileReader)
end
if isfield(handles,'deviceWriter')&&isDone(handles.fileReader)
    release(handles.deviceWriter)
end

% --- Executes on button press in pausebutton1.
function pausebutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pausebutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
nowstate = get(hObject,'String');
if  strcmp(nowstate,'Continue')
   set(hObject,'String','Pause');
   uiresume;
elseif strcmp(nowstate,'Pause')
    set(hObject,'String','Continue');
    uiwait;
end

% --- Executes on button press in stopbutton1.
function stopbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to stopbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% delete(handles.fileReader);
global flag;
flag = 1;
nowstate = get(handles.pausebutton1,'String');
if  strcmp(nowstate,'Continue')
   set(handles.pausebutton1,'String','Pause');
   flag = 0;
end
guidata(hObject, handles)


% --- Executes on button press in exitbutton.
function exitbutton_Callback(hObject, eventdata, handles)
% hObject    handle to exitbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global flag;
flag = 1;

close();

% --- Executes on button press in playbutton2.
function playbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to playbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if isfield(handles,'fileReader')
    release(handles.fileReader)
end
if isfield(handles,'mPEQ')
    release(handles.mPEQ)
end
if isfield(handles,'deviceWriter')
    release(handles.deviceWriter)
end

frameLength = 512;
handles.fileReader = dsp.AudioFileReader(...
    'Filename',handles.denosingfilename,...
    'SamplesPerFrame',frameLength);
handles.deviceWriter = audioDeviceWriter(...
    'SampleRate',handles.fileReader.SampleRate);
setup(handles.deviceWriter,ones(frameLength,2));
while ~isDone(handles.fileReader)
	handles.originalSignal = handles.fileReader();
    switch get(handles.eqenable,'Value')
        case 1
            handles.equalizedSignal = handles.mPEQ(handles.originalSignal);
            handles.deviceWriter(handles.equalizedSignal);
        case 0
            handles.deviceWriter(handles.originalSignal);
    end
end
% releasing
if isfield(handles,'fileReader')&&isDone(handles.fileReader)
    release(handles.fileReader)
end
if isfield(handles,'deviceWriter')&&isDone(handles.fileReader)
    release(handles.deviceWriter)
end
guidata(hObject, handles);


% --- Executes on button press in pausebutton2.
function pausebutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pausebutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in stopbutton2.
function stopbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to stopbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in savebutton.
function savebutton_Callback(hObject, eventdata, handles)
% hObject    handle to savebutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on slider movement.
function slideruseless_Callback(hObject, eventdata, handles)
% hObject    handle to slideruseless (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slideruseless_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slideruseless (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes1


% --- Executes on mouse press over axes background.
function axes1_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over openbutton.
function openbutton_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to openbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



% --- Executes on button press in eqenable.
function eqenable_Callback(hObject, eventdata, handles)
% hObject    handle to eqenable (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
eqval = get(hObject,'Value');
switch eqval;
    case 1
        set(hObject,'String','EQ ON');
    case 0
        set(hObject,'String','EQ OFF');
end
% Hint: get(hObject,'Value') returns toggle state of eqenable


% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over eqenable.
function eqenable_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to eqenable (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over exitbutton.
function exitbutton_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to exitbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes during object creation, after setting all properties.
function axes2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes2


% --- Executes during object creation, after setting all properties.
function stopbutton1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to stopbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
global flag;
flag = 0;
guidata(hObject, handles);
