.class public final Lcom/android/server/am/ActivityManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final CAPABILITIES:[Ljava/lang/String;

.field public static final LOG_NAME_TIME_FORMATTER:Ljava/time/format/DateTimeFormatter;


# instance fields
.field public mActivityType:I

.field public mAgent:Ljava/lang/String;

.field public mAsync:Z

.field public mAttachAgentDuringBind:Z

.field public mAutoStop:Z

.field public mBroadcastOptions:Landroid/app/BroadcastOptions;

.field public mClockType:I

.field public mDismissKeyguardIfInsecure:Z

.field public mDisplayId:I

.field public final mDumping:Z

.field public mForceLaunchTaskOnHome:Z

.field public mForceWindowingMode:I

.field public final mInterface:Lcom/android/server/am/ActivityManagerService;

.field public final mInternal:Lcom/android/server/am/ActivityManagerService;

.field public mIsLockTask:Z

.field public mIsResumeAffordanceRequested:Z

.field public mIsTaskOverlay:Z

.field public final mPm:Landroid/content/pm/IPackageManager;

.field public mProfileFile:Ljava/lang/String;

.field public mProfilerOutputVersion:I

.field public mReceiverPermission:Ljava/lang/String;

.field public mRepeat:I

.field public mSamplingInterval:I

.field public mShowSplashScreen:Z

.field public mStartFlags:I

.field public mStopOption:Z

.field public mStreaming:Z

.field public mTaskDisplayAreaFeatureId:I

.field public mTaskId:I

.field public final mTaskInterface:Lcom/android/server/wm/ActivityTaskManagerService;

.field public mUserId:I

.field public mWaitOption:Z

.field public mWindowingMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string/jumbo v0, "yyyyMMdd-HHmmss"

    .line 2
    .line 3
    .line 4
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 5
    .line 6
    invoke-static {v0, v1}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lcom/android/server/am/ActivityManagerShellCommand;->LOG_NAME_TIME_FORMATTER:Ljava/time/format/DateTimeFormatter;

    .line 11
    .line 12
    const-string/jumbo v0, "start.suspend"

    .line 13
    .line 14
    .line 15
    filled-new-array {v0}, [Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Lcom/android/server/am/ActivityManagerShellCommand;->CAPABILITIES:[Ljava/lang/String;

    .line 20
    .line 21
    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mStartFlags:I

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mWaitOption:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mStopOption:Z

    .line 10
    .line 11
    iput v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mRepeat:I

    .line 12
    .line 13
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Lcom/android/server/am/ActivityManagerService;

    .line 14
    .line 15
    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 18
    .line 19
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    .line 20
    .line 21
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mPm:Landroid/content/pm/IPackageManager;

    .line 26
    .line 27
    iput-boolean p2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mDumping:Z

    .line 28
    .line 29
    return-void
.end method

.method public static addExtensionsForConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I[ILjava/util/Set;)V
    .locals 4

    .line 1
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2, v0, p4}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    .line 4
    .line 5
    .line 6
    move-result-object p4

    .line 7
    if-ne p4, v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-interface {p0, p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    sget-object p3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 15
    .line 16
    if-ne p2, p3, :cond_1

    .line 17
    .line 18
    invoke-interface {p0, p1, p4}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    invoke-interface {p0, p1, p2, p2, p4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 23
    .line 24
    .line 25
    const/16 p3, 0x1f03

    .line 26
    .line 27
    invoke-static {p3}, Landroid/opengl/GLES10;->glGetString(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p3

    .line 31
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_2

    .line 36
    .line 37
    const-string v0, " "

    .line 38
    .line 39
    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p3

    .line 43
    array-length v0, p3

    .line 44
    const/4 v1, 0x0

    .line 45
    :goto_0
    if-ge v1, v0, :cond_2

    .line 46
    .line 47
    aget-object v2, p3, v1

    .line 48
    .line 49
    move-object v3, p5

    .line 50
    check-cast v3, Ljava/util/HashSet;

    .line 51
    .line 52
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    add-int/lit8 v1, v1, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    sget-object p3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 59
    .line 60
    sget-object p5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    .line 61
    .line 62
    invoke-interface {p0, p1, p3, p3, p5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 63
    .line 64
    .line 65
    invoke-interface {p0, p1, p2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 66
    .line 67
    .line 68
    invoke-interface {p0, p1, p4}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public static dumpHelp(Ljava/io/PrintWriter;Z)V
    .locals 7
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const-string p1, "Activity manager dump options:"

    .line 4
    .line 5
    const-string v0, "  [-a] [-c] [-p PACKAGE] [-h] [WHAT] ..."

    .line 6
    .line 7
    const-string v1, "  WHAT may be one of:"

    .line 8
    .line 9
    const-string v2, "    a[ctivities]: activity stack state"

    .line 10
    .line 11
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string p1, "    r[recents]: recent activities state"

    .line 15
    .line 16
    const-string v0, "    b[roadcasts] [PACKAGE_NAME] [history [-s]]: broadcast state"

    .line 17
    .line 18
    const-string v1, "    broadcast-stats [PACKAGE_NAME]: aggregated broadcast statistics"

    .line 19
    .line 20
    const-string v2, "    i[ntents] [PACKAGE_NAME]: pending intent state"

    .line 21
    .line 22
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string p1, "    p[rocesses] [PACKAGE_NAME]: process state"

    .line 26
    .line 27
    const-string v0, "    o[om]: out of memory management"

    .line 28
    .line 29
    const-string v1, "    perm[issions]: URI permission grant state"

    .line 30
    .line 31
    const-string v2, "    prov[iders] [COMP_SPEC ...]: content provider state"

    .line 32
    .line 33
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string p1, "    provider [COMP_SPEC]: provider client-side state"

    .line 37
    .line 38
    const-string v0, "    s[ervices] [COMP_SPEC ...]: service state"

    .line 39
    .line 40
    const-string v1, "    allowed-associations: current package association restrictions"

    .line 41
    .line 42
    const-string v2, "    as[sociations]: tracked app associations"

    .line 43
    .line 44
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const-string p1, "    start-info [PACKAGE_NAME]: historical process start information"

    .line 48
    .line 49
    const-string v0, "    exit-info [PACKAGE_NAME]: historical process exit information"

    .line 50
    .line 51
    const-string v1, "    lmk: stats on low memory killer"

    .line 52
    .line 53
    const-string v2, "    lru: raw LRU process list"

    .line 54
    .line 55
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const-string p1, "    binder-proxies: stats on binder objects and IPCs"

    .line 59
    .line 60
    const-string v0, "    settings: currently applied config settings"

    .line 61
    .line 62
    const-string v1, "    timers: the current ANR timer state"

    .line 63
    .line 64
    const-string v2, "    service [COMP_SPEC]: service client-side state"

    .line 65
    .line 66
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const-string p1, "    package [PACKAGE_NAME]: all state related to given package"

    .line 70
    .line 71
    const-string v0, "    all: dump all activities"

    .line 72
    .line 73
    const-string v1, "    top: dump the top activity"

    .line 74
    .line 75
    const-string v2, "    users: user state"

    .line 76
    .line 77
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    const-string p1, "  WHAT may also be a COMP_SPEC to dump activities."

    .line 81
    .line 82
    const-string v0, "  COMP_SPEC may be a component name (com.foo/.myApp),"

    .line 83
    .line 84
    const-string v1, "    a partial substring in a component name, a"

    .line 85
    .line 86
    const-string v2, "    hex object identifier."

    .line 87
    .line 88
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    const-string p1, "  -a: include all available server state."

    .line 92
    .line 93
    const-string v0, "  -c: include client state."

    .line 94
    .line 95
    const-string v1, "  -p: limit output to given package."

    .line 96
    .line 97
    const-string v2, "  -d: limit output to given display."

    .line 98
    .line 99
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    const-string p1, "  --checkin: output checkin format, resetting data."

    .line 103
    .line 104
    const-string v0, "  --C: output checkin format, not resetting data."

    .line 105
    .line 106
    const-string v1, "  --proto: output dump in protocol buffer format."

    .line 107
    .line 108
    invoke-static {p0, p1, v0, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    const-string p1, "--dump-dumpable"

    .line 112
    .line 113
    const-string v0, "--list-dumpables"

    .line 114
    .line 115
    filled-new-array {p1, v0}, [Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    const-string v1, "  %s: dump just the DUMPABLE-related state of an activity. Use the %s option to list the supported DUMPABLEs\n"

    .line 120
    .line 121
    invoke-virtual {p0, v1, p1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 122
    .line 123
    .line 124
    const-string p1, "  %s: show the available dumpables in an activity\n"

    .line 125
    .line 126
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {p0, p1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 131
    .line 132
    .line 133
    goto/16 :goto_0

    .line 134
    .line 135
    :cond_0
    const-string p1, "Activity manager (activity) commands:"

    .line 136
    .line 137
    const-string v0, "  help"

    .line 138
    .line 139
    const-string v1, "      Print this help text."

    .line 140
    .line 141
    const-string v2, "  start-activity [-D] [-N] [-W] [-P <FILE>] [--start-profiler <FILE>]"

    .line 142
    .line 143
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    const-string p1, "          [--sampling INTERVAL] [--clock-type <TYPE>] [--streaming]"

    .line 147
    .line 148
    const-string v0, "          [--profiler-output-version NUMBER]"

    .line 149
    .line 150
    const-string v1, "          [-R COUNT] [-S] [--track-allocation]"

    .line 151
    .line 152
    const-string v2, "          [--user <USER_ID> | current] [--suspend] <INTENT>"

    .line 153
    .line 154
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    const-string p1, "      Start an Activity.  Options are:"

    .line 158
    .line 159
    const-string v0, "      -D: enable debugging"

    .line 160
    .line 161
    const-string v1, "      --suspend: debugged app suspend threads at startup (only with -D)"

    .line 162
    .line 163
    const-string v2, "      -N: enable native debugging"

    .line 164
    .line 165
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    const-string p1, "      -W: wait for launch to complete (initial display)"

    .line 169
    .line 170
    const-string v0, "      --start-profiler <FILE>: start profiler and send results to <FILE>"

    .line 171
    .line 172
    const-string v1, "      --sampling INTERVAL: use sample profiling with INTERVAL microseconds"

    .line 173
    .line 174
    const-string v2, "          between samples (use with --start-profiler)"

    .line 175
    .line 176
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    const-string p1, "      --clock-type <TYPE>: type can be wall / thread-cpu / dual. Specify"

    .line 180
    .line 181
    const-string v0, "          the clock that is used to report the timestamps when profiling"

    .line 182
    .line 183
    const-string v2, "          The default value is dual. (use with --start-profiler)"

    .line 184
    .line 185
    const-string v3, "      --streaming: stream the profiling output to the specified file"

    .line 186
    .line 187
    invoke-static {p0, p1, v0, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    const-string p1, "          (use with --start-profiler)"

    .line 191
    .line 192
    const-string v0, "      --profiler-output-version Specify the version of the"

    .line 193
    .line 194
    const-string v2, "          profiling output (use with --start-profiler)"

    .line 195
    .line 196
    const-string v3, "      -P <FILE>: like above, but profiling stops when app goes idle"

    .line 197
    .line 198
    invoke-static {p0, p1, v0, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    const-string p1, "      --attach-agent <agent>: attach the given agent before binding"

    .line 202
    .line 203
    const-string v0, "      --attach-agent-bind <agent>: attach the given agent during binding"

    .line 204
    .line 205
    const-string v2, "      -R: repeat the activity launch <COUNT> times.  Prior to each repeat,"

    .line 206
    .line 207
    const-string v3, "          the top activity will be finished."

    .line 208
    .line 209
    invoke-static {p0, p1, v0, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    const-string p1, "      -S: force stop the target app before starting the activity"

    .line 213
    .line 214
    const-string v0, "      --track-allocation: enable tracking of object allocations"

    .line 215
    .line 216
    const-string v2, "      --user <USER_ID> | current: Specify which user to run as; if not"

    .line 217
    .line 218
    const-string v3, "          specified then run as the current user."

    .line 219
    .line 220
    invoke-static {p0, p1, v0, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    const-string p1, "      --windowingMode <WINDOWING_MODE>: The windowing mode to launch the activity into."

    .line 224
    .line 225
    const-string v0, "      --activityType <ACTIVITY_TYPE>: The activity type to launch the activity as."

    .line 226
    .line 227
    const-string v4, "      --display <DISPLAY_ID>: The display to launch the activity into."

    .line 228
    .line 229
    const-string v5, "      --splashscreen-icon: Show the splash screen icon on launch."

    .line 230
    .line 231
    invoke-static {p0, p1, v0, v4, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    const-string p1, "  start-in-vsync"

    .line 235
    .line 236
    const-string v0, "      Start an Activity with vsync aligned. See `start-activity` for the"

    .line 237
    .line 238
    const-string v4, "      possible options."

    .line 239
    .line 240
    const-string v5, "  start-service [--user <USER_ID> | current] <INTENT>"

    .line 241
    .line 242
    invoke-static {p0, p1, v0, v4, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    const-string p1, "      Start a Service.  Options are:"

    .line 246
    .line 247
    const-string v0, "  start-foreground-service [--user <USER_ID> | current] <INTENT>"

    .line 248
    .line 249
    invoke-static {p0, p1, v2, v3, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    const-string p1, "      Start a foreground Service.  Options are:"

    .line 253
    .line 254
    const-string v0, "  stop-service [--user <USER_ID> | current] <INTENT>"

    .line 255
    .line 256
    invoke-static {p0, p1, v2, v3, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    const-string p1, "      Stop a Service.  Options are:"

    .line 260
    .line 261
    const-string v0, "  broadcast [--user <USER_ID> | all | current]"

    .line 262
    .line 263
    invoke-static {p0, p1, v2, v3, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    const-string p1, "          [--receiver-permission <PERMISSION>]"

    .line 267
    .line 268
    const-string v0, "          [--allow-background-activity-starts]"

    .line 269
    .line 270
    const-string v2, "          [--async] <INTENT>"

    .line 271
    .line 272
    const-string v3, "      Send a broadcast Intent.  Options are:"

    .line 273
    .line 274
    invoke-static {p0, p1, v0, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    const-string p1, "      --user <USER_ID> | all | current: Specify which user to send to; if not"

    .line 278
    .line 279
    const-string v0, "          specified then send to all users."

    .line 280
    .line 281
    const-string v2, "      --receiver-permission <PERMISSION>: Require receiver to hold permission."

    .line 282
    .line 283
    const-string v3, "      --allow-background-activity-starts: The receiver may start activities"

    .line 284
    .line 285
    invoke-static {p0, p1, v0, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    const-string p1, "          even if in the background."

    .line 289
    .line 290
    const-string v0, "      --async: Send without waiting for the completion of the receiver."

    .line 291
    .line 292
    const-string v2, "  compact {some|full} <PROCESS>"

    .line 293
    .line 294
    const-string v3, "      Perform a single process compaction. The given <PROCESS> argument"

    .line 295
    .line 296
    invoke-static {p0, p1, v0, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    const-string p1, "          may be either a process name or pid."

    .line 300
    .line 301
    const-string v0, "      some: execute file compaction."

    .line 302
    .line 303
    const-string v2, "      full: execute anon + file compaction."

    .line 304
    .line 305
    const-string v3, "  compact system"

    .line 306
    .line 307
    invoke-static {p0, p1, v0, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    const-string p1, "      Perform a full system compaction."

    .line 311
    .line 312
    const-string v3, "  compact native {some|full} <pid>"

    .line 313
    .line 314
    const-string v4, "      Perform a native compaction for process with <pid>."

    .line 315
    .line 316
    invoke-static {p0, p1, v3, v4, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    const-string p1, "  freeze [--sticky] <PROCESS>"

    .line 320
    .line 321
    const-string v0, "      Freeze a process. The given <PROCESS> argument"

    .line 322
    .line 323
    const-string v3, "          may be either a process name or pid.  Options are:"

    .line 324
    .line 325
    invoke-static {p0, v2, p1, v0, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    const-string p1, "      --sticky: persists the frozen state for the process lifetime or"

    .line 329
    .line 330
    const-string v0, "                  until an unfreeze is triggered via shell"

    .line 331
    .line 332
    const-string v2, "  unfreeze [--sticky] <PROCESS>"

    .line 333
    .line 334
    const-string v4, "      Unfreeze a process. The given <PROCESS> argument"

    .line 335
    .line 336
    invoke-static {p0, p1, v0, v2, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    const-string p1, "      --sticky: persists the unfrozen state for the process lifetime or"

    .line 340
    .line 341
    const-string v0, "                  until a freeze is triggered via shell"

    .line 342
    .line 343
    const-string v2, "  instrument [-r] [-e <NAME> <VALUE>] [-p <FILE>] [-w]"

    .line 344
    .line 345
    invoke-static {p0, v3, p1, v0, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    const-string p1, "          [--user <USER_ID> | current]"

    .line 349
    .line 350
    const-string v0, "          [--no-hidden-api-checks [--no-test-api-access]]"

    .line 351
    .line 352
    const-string v2, "          [--no-isolated-storage]"

    .line 353
    .line 354
    const-string v3, "          [--no-window-animation] [--abi <ABI>] <COMPONENT>"

    .line 355
    .line 356
    invoke-static {p0, p1, v0, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    const-string p1, "      Start an Instrumentation.  Typically this target <COMPONENT> is in the"

    .line 360
    .line 361
    const-string v0, "      form <TEST_PACKAGE>/<RUNNER_CLASS> or only <TEST_PACKAGE> if there"

    .line 362
    .line 363
    const-string v2, "      is only one instrumentation.  Options are:"

    .line 364
    .line 365
    const-string v3, "      -r: print raw results (otherwise decode REPORT_KEY_STREAMRESULT).  Use with"

    .line 366
    .line 367
    invoke-static {p0, p1, v0, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    .line 369
    .line 370
    const-string p1, "          [-e perf true] to generate raw output for performance measurements."

    .line 371
    .line 372
    const-string v0, "      -e <NAME> <VALUE>: set argument <NAME> to <VALUE>.  For test runners a"

    .line 373
    .line 374
    const-string v2, "          common form is [-e <testrunner_flag> <value>[,<value>...]]."

    .line 375
    .line 376
    const-string v3, "      -p <FILE>: write profiling data to <FILE>"

    .line 377
    .line 378
    invoke-static {p0, p1, v0, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    .line 380
    .line 381
    const-string p1, "      -m: Write output as protobuf to stdout (machine readable)"

    .line 382
    .line 383
    const-string v0, "      -f <Optional PATH/TO/FILE>: Write output as protobuf to a file (machine"

    .line 384
    .line 385
    const-string v2, "          readable). If path is not specified, default directory and file name will"

    .line 386
    .line 387
    const-string v3, "          be used: /sdcard/instrument-logs/log-yyyyMMdd-hhmmss-SSS.instrumentation_data_proto"

    .line 388
    .line 389
    invoke-static {p0, p1, v0, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    .line 391
    .line 392
    const-string p1, "      -w: wait for instrumentation to finish before returning.  Required for"

    .line 393
    .line 394
    const-string v0, "          test runners."

    .line 395
    .line 396
    const-string v2, "      --user <USER_ID> | current: Specify user instrumentation runs in;"

    .line 397
    .line 398
    const-string v3, "          current user if not specified."

    .line 399
    .line 400
    invoke-static {p0, p1, v0, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    .line 402
    .line 403
    const-string p1, "      --no-hidden-api-checks: disable restrictions on use of hidden API."

    .line 404
    .line 405
    const-string v0, "      --no-test-api-access: do not allow access to test APIs, if hidden"

    .line 406
    .line 407
    const-string v2, "          API checks are enabled."

    .line 408
    .line 409
    const-string v3, "      --no-isolated-storage: don\'t use isolated storage sandbox and "

    .line 410
    .line 411
    invoke-static {p0, p1, v0, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    .line 413
    .line 414
    const-string p1, "          mount full external storage"

    .line 415
    .line 416
    const-string v0, "      --no-window-animation: turn off window animations while running."

    .line 417
    .line 418
    const-string v2, "      --abi <ABI>: Launch the instrumented process with the selected ABI."

    .line 419
    .line 420
    const-string v3, "          This assumes that the process supports the selected ABI."

    .line 421
    .line 422
    invoke-static {p0, p1, v0, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    .line 424
    .line 425
    const-string p1, "  trace-ipc [start|stop] [--dump-file <FILE>]"

    .line 426
    .line 427
    const-string v0, "      Trace IPC transactions."

    .line 428
    .line 429
    const-string v2, "      start: start tracing IPC transactions."

    .line 430
    .line 431
    const-string v3, "      stop: stop tracing IPC transactions and dump the results to file."

    .line 432
    .line 433
    invoke-static {p0, p1, v0, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    .line 435
    .line 436
    const-string p1, "      --dump-file <FILE>: Specify the file the trace should be dumped to."

    .line 437
    .line 438
    const-string v0, "  profile start [--user <USER_ID> current]"

    .line 439
    .line 440
    const-string v2, "          [--clock-type <TYPE>]"

    .line 441
    .line 442
    const-string v3, "          [--profiler-output-version VERSION]"

    .line 443
    .line 444
    invoke-static {p0, p1, v0, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    .line 446
    .line 447
    const-string p1, "          [--sampling INTERVAL | --streaming] <PROCESS> <FILE>"

    .line 448
    .line 449
    const-string v0, "      Start profiler on a process.  The given <PROCESS> argument"

    .line 450
    .line 451
    const-string v2, "        may be either a process name or pid.  Options are:"

    .line 452
    .line 453
    const-string v3, "      --user <USER_ID> | current: When supplying a process name,"

    .line 454
    .line 455
    invoke-static {p0, p1, v0, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    .line 457
    .line 458
    const-string p1, "          specify user of process to profile; uses current user if not"

    .line 459
    .line 460
    const-string v0, "          specified."

    .line 461
    .line 462
    const-string v4, "      --clock-type <TYPE>: use the specified clock to report timestamps."

    .line 463
    .line 464
    const-string v5, "          The type can be one of wall | thread-cpu | dual. The default"

    .line 465
    .line 466
    invoke-static {p0, p1, v0, v4, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    .line 468
    .line 469
    const-string v4, "          value is dual."

    .line 470
    .line 471
    const-string v5, "      --profiler-output-versionVERSION: specifies the output"

    .line 472
    .line 473
    const-string v6, "          format version"

    .line 474
    .line 475
    invoke-static {p0, v4, v5, v6, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    .line 477
    .line 478
    const-string v1, "          between samples."

    .line 479
    .line 480
    const-string v4, "      --streaming: stream the profiling output to the specified file."

    .line 481
    .line 482
    const-string v5, "  profile stop [--user <USER_ID> current] <PROCESS>"

    .line 483
    .line 484
    const-string v6, "      Stop profiler on a process.  The given <PROCESS> argument"

    .line 485
    .line 486
    invoke-static {p0, v1, v4, v5, v6}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    .line 488
    .line 489
    invoke-static {p0, v2, v3, p1, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    .line 491
    .line 492
    const-string p1, "  dumpheap [--user <USER_ID> current] [-n] [-g] [-b <format>] "

    .line 493
    .line 494
    const-string v0, "           <PROCESS> <FILE>"

    .line 495
    .line 496
    const-string v1, "      Dump the heap of a process.  The given <PROCESS> argument may"

    .line 497
    .line 498
    const-string v2, "        be either a process name or pid.  Options are:"

    .line 499
    .line 500
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    .line 502
    .line 503
    const-string p1, "      -n: dump native heap instead of managed heap"

    .line 504
    .line 505
    const-string v0, "      -g: force GC before dumping the heap"

    .line 506
    .line 507
    const-string v1, "      -b <format>: dump contents of bitmaps in the format specified,"

    .line 508
    .line 509
    const-string v2, "         which can be \"png\", \"jpg\" or \"webp\"."

    .line 510
    .line 511
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    .line 513
    .line 514
    const-string p1, "          specify user of process to dump; uses current user if not specified."

    .line 515
    .line 516
    const-string v0, "  set-debug-app [-w] [--persistent] <PACKAGE>"

    .line 517
    .line 518
    const-string v1, "      Set application <PACKAGE> to debug.  Options are:"

    .line 519
    .line 520
    invoke-static {p0, v3, p1, v0, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    .line 522
    .line 523
    const-string p1, "      -w: wait for debugger when application starts"

    .line 524
    .line 525
    const-string v0, "      --persistent: retain this value"

    .line 526
    .line 527
    const-string v1, "  clear-debug-app"

    .line 528
    .line 529
    const-string v2, "      Clear the previously set-debug-app."

    .line 530
    .line 531
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    .line 533
    .line 534
    const-string p1, "  set-watch-heap <PROCESS> <MEM-LIMIT>"

    .line 535
    .line 536
    const-string v0, "      Start monitoring pss size of <PROCESS>, if it is at or"

    .line 537
    .line 538
    const-string v1, "      above <HEAP-LIMIT> then a heap dump is collected for the user to report."

    .line 539
    .line 540
    const-string v2, "  clear-watch-heap"

    .line 541
    .line 542
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    .line 544
    .line 545
    const-string p1, "      Clear the previously set-watch-heap."

    .line 546
    .line 547
    const-string v0, "  clear-start-info [--user <USER_ID> | all | current] <PACKAGE>"

    .line 548
    .line 549
    const-string v1, "      Clear process start-info for the given package."

    .line 550
    .line 551
    const-string v2, "      Clear start-info for all packages if no package is provided."

    .line 552
    .line 553
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    .line 555
    .line 556
    const-string p1, "  start-info-detailed-monitoring [--user <USER_ID> | all | current] <PACKAGE>"

    .line 557
    .line 558
    const-string v0, "      Enable application start info detailed monitoring for the given package."

    .line 559
    .line 560
    const-string v1, "      Disable if no package is supplied."

    .line 561
    .line 562
    const-string v2, "  clear-exit-info [--user <USER_ID> | all | current] <PACKAGE>"

    .line 563
    .line 564
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    .line 566
    .line 567
    const-string p1, "      Clear process exit-info for the given package."

    .line 568
    .line 569
    const-string v0, "      Clear exit-info for all packages if no package is provided."

    .line 570
    .line 571
    const-string v1, "  bug-report [--progress | --telephony]"

    .line 572
    .line 573
    const-string v2, "      Request bug report generation; will launch a notification"

    .line 574
    .line 575
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    .line 577
    .line 578
    const-string p1, "        when done to select where it should be delivered. Options are:"

    .line 579
    .line 580
    const-string v0, "     --progress: will launch a notification right away to show its progress."

    .line 581
    .line 582
    const-string v1, "     --telephony: will dump only telephony sections."

    .line 583
    .line 584
    const-string v2, "  fgs-notification-rate-limit {enable | disable}"

    .line 585
    .line 586
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    .line 588
    .line 589
    const-string p1, "     Enable/disable rate limit on FGS notification deferral policy."

    .line 590
    .line 591
    const-string v0, "  force-stop [--user <USER_ID> | all | current] <PACKAGE>"

    .line 592
    .line 593
    const-string v1, "      Completely stop the given application package."

    .line 594
    .line 595
    const-string v2, "  stop-app [--user <USER_ID> | all | current] <PACKAGE>"

    .line 596
    .line 597
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    .line 599
    .line 600
    const-string p1, "      Stop an app and all of its services.  Unlike `force-stop` this does"

    .line 601
    .line 602
    const-string v0, "      not cancel the app\'s scheduled alarms and jobs."

    .line 603
    .line 604
    const-string v1, "  crash [--user <USER_ID>] <PACKAGE|PID>"

    .line 605
    .line 606
    const-string v2, "      Induce a VM crash in the specified package or process"

    .line 607
    .line 608
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    .line 610
    .line 611
    const-string p1, "  kill [--user <USER_ID> | all | current] <PACKAGE>"

    .line 612
    .line 613
    const-string v0, "      Kill all background processes associated with the given application."

    .line 614
    .line 615
    const-string v1, "  kill-all"

    .line 616
    .line 617
    const-string v2, "      Kill all processes that are safe to kill (cached, etc)."

    .line 618
    .line 619
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    .line 621
    .line 622
    const-string p1, "  make-uid-idle [--user <USER_ID> | all | current] <PACKAGE>"

    .line 623
    .line 624
    const-string v0, "      If the given application\'s uid is in the background and waiting to"

    .line 625
    .line 626
    const-string v1, "      become idle (not allowing background services), do that now."

    .line 627
    .line 628
    const-string v2, "  set-deterministic-uid-idle [--user <USER_ID> | all | current] <true|false>"

    .line 629
    .line 630
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    .line 632
    .line 633
    const-string p1, "      If true, sets the timing of making UIDs idle consistent and"

    .line 634
    .line 635
    const-string v0, "      deterministic. If false, the timing will be variable depending on"

    .line 636
    .line 637
    const-string v1, "      other activity on the device. The default is false."

    .line 638
    .line 639
    const-string v2, "  monitor [--gdb <port>] [-p <TARGET>] [-s] [-c] [-k]"

    .line 640
    .line 641
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    .line 643
    .line 644
    const-string p1, "      Start monitoring for crashes or ANRs."

    .line 645
    .line 646
    const-string v0, "      --gdb: start gdbserv on the given port at crash/ANR"

    .line 647
    .line 648
    const-string v1, "      -p: only show events related to a specific process / package"

    .line 649
    .line 650
    const-string v2, "      -s: simple mode, only show a summary line for each event"

    .line 651
    .line 652
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    .line 654
    .line 655
    const-string p1, "      -c: assume the input is always [c]ontinue"

    .line 656
    .line 657
    const-string v0, "      -k: assume the input is always [k]ill"

    .line 658
    .line 659
    const-string v1, "         -c and -k are mutually exclusive."

    .line 660
    .line 661
    const-string v2, "  watch-uids [--oom <uid>] [--mask <capabilities integer>]"

    .line 662
    .line 663
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    .line 665
    .line 666
    const-string p1, "      Start watching for and reporting uid state changes."

    .line 667
    .line 668
    const-string v0, "      --oom: specify a uid for which to report detailed change messages."

    .line 669
    .line 670
    const-string v1, "      --mask: Specify PROCESS_CAPABILITY_XXX mask to report. "

    .line 671
    .line 672
    const-string v2, "              By default, it only reports FOREGROUND_LOCATION (1)"

    .line 673
    .line 674
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    .line 676
    .line 677
    const-string p1, "              FOREGROUND_CAMERA (2), FOREGROUND_MICROPHONE (4)"

    .line 678
    .line 679
    const-string v0, "              and NETWORK (8). New capabilities added on or after"

    .line 680
    .line 681
    const-string v1, "              Android UDC will not be reported by default."

    .line 682
    .line 683
    const-string v2, "  hang [--allow-restart]"

    .line 684
    .line 685
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    .line 687
    .line 688
    const-string p1, "      Hang the system."

    .line 689
    .line 690
    const-string v0, "      --allow-restart: allow watchdog to perform normal system restart"

    .line 691
    .line 692
    const-string v1, "  restart"

    .line 693
    .line 694
    const-string v2, "      Restart the user-space system."

    .line 695
    .line 696
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    .line 698
    .line 699
    const-string p1, "  idle-maintenance"

    .line 700
    .line 701
    const-string v0, "      Perform idle maintenance now."

    .line 702
    .line 703
    const-string v1, "  screen-compat [on|off] <PACKAGE>"

    .line 704
    .line 705
    const-string v2, "      Control screen compatibility mode of <PACKAGE>."

    .line 706
    .line 707
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    .line 709
    .line 710
    const-string p1, "  package-importance <PACKAGE>"

    .line 711
    .line 712
    const-string v0, "      Print current importance of <PACKAGE>."

    .line 713
    .line 714
    const-string v1, "  to-uri [INTENT]"

    .line 715
    .line 716
    const-string v2, "      Print the given Intent specification as a URI."

    .line 717
    .line 718
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    .line 720
    .line 721
    const-string p1, "  to-intent-uri [INTENT]"

    .line 722
    .line 723
    const-string v0, "      Print the given Intent specification as an intent: URI."

    .line 724
    .line 725
    const-string v1, "  to-app-uri [INTENT]"

    .line 726
    .line 727
    const-string v2, "      Print the given Intent specification as an android-app: URI."

    .line 728
    .line 729
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    .line 731
    .line 732
    const-string p1, "  switch-user <USER_ID>"

    .line 733
    .line 734
    const-string v0, "      Switch to put USER_ID in the foreground, starting"

    .line 735
    .line 736
    const-string v1, "      execution of that user if it is currently stopped."

    .line 737
    .line 738
    const-string v2, "  get-current-user"

    .line 739
    .line 740
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    .line 742
    .line 743
    const-string p1, "      Returns id of the current foreground user."

    .line 744
    .line 745
    const-string v0, "  start-user [-w] [--display DISPLAY_ID] <USER_ID>"

    .line 746
    .line 747
    const-string v1, "      Start USER_ID in background if it is currently stopped;"

    .line 748
    .line 749
    const-string v2, "      use switch-user if you want to start the user in foreground."

    .line 750
    .line 751
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    .line 753
    .line 754
    const-string p1, "      -w: wait for start-user to complete and the user to be unlocked."

    .line 755
    .line 756
    const-string v0, "      --display <DISPLAY_ID>: starts the user visible in that display, which allows the user to launch activities on it."

    .line 757
    .line 758
    const-string v1, "        (not supported on all devices; typically only on automotive builds where the vehicle has passenger displays)"

    .line 759
    .line 760
    const-string v2, "  unlock-user <USER_ID>"

    .line 761
    .line 762
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    .line 764
    .line 765
    const-string p1, "      Unlock the given user.  This will only work if the user doesn\'t"

    .line 766
    .line 767
    const-string v0, "      have an LSKF (PIN/pattern/password)."

    .line 768
    .line 769
    const-string v1, "  stop-user [-w] [-f] <USER_ID>"

    .line 770
    .line 771
    const-string v2, "      Stop execution of USER_ID, not allowing it to run any"

    .line 772
    .line 773
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    .line 775
    .line 776
    const-string p1, "      code until a later explicit start or switch to it."

    .line 777
    .line 778
    const-string v0, "      -w: wait for stop-user to complete."

    .line 779
    .line 780
    const-string v1, "      -f: force stop, even if user has an unstoppable parent."

    .line 781
    .line 782
    const-string v2, "  is-user-stopped <USER_ID>"

    .line 783
    .line 784
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    .line 786
    .line 787
    const-string p1, "      Returns whether <USER_ID> has been stopped or not."

    .line 788
    .line 789
    const-string v0, "  get-started-user-state <USER_ID>"

    .line 790
    .line 791
    const-string v1, "      Gets the current state of the given started user."

    .line 792
    .line 793
    const-string v2, "  track-associations"

    .line 794
    .line 795
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    .line 797
    .line 798
    const-string p1, "      Enable association tracking."

    .line 799
    .line 800
    const-string v0, "  untrack-associations"

    .line 801
    .line 802
    const-string v1, "      Disable and clear association tracking."

    .line 803
    .line 804
    const-string v2, "  get-uid-state <UID>"

    .line 805
    .line 806
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    .line 808
    .line 809
    const-string p1, "      Gets the process state of an app given its <UID>."

    .line 810
    .line 811
    const-string v0, "  attach-agent <PROCESS> <FILE>"

    .line 812
    .line 813
    const-string v1, "    Attach an agent to the specified <PROCESS>, which may be either a process name or a PID."

    .line 814
    .line 815
    const-string v2, "  get-config [--days N] [--device] [--proto] [--display <DISPLAY_ID>]"

    .line 816
    .line 817
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    .line 819
    .line 820
    const-string p1, "      Retrieve the configuration and any recent configurations of the device."

    .line 821
    .line 822
    const-string v0, "      --days: also return last N days of configurations that have been seen."

    .line 823
    .line 824
    const-string v1, "      --device: also output global device configuration info."

    .line 825
    .line 826
    const-string v2, "      --proto: return result as a proto; does not include --days info."

    .line 827
    .line 828
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    .line 830
    .line 831
    const-string p1, "      --display: Specify for which display to run the command; if not "

    .line 832
    .line 833
    const-string v0, "          specified then run for the default display."

    .line 834
    .line 835
    const-string v1, "  supports-multiwindow"

    .line 836
    .line 837
    const-string v2, "      Returns true if the device supports multiwindow."

    .line 838
    .line 839
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    .line 841
    .line 842
    const-string p1, "  supports-split-screen-multi-window"

    .line 843
    .line 844
    const-string v0, "      Returns true if the device supports split screen multiwindow."

    .line 845
    .line 846
    const-string v1, "  suppress-resize-config-changes <true|false>"

    .line 847
    .line 848
    const-string v2, "      Suppresses configuration changes due to user resizing an activity/task."

    .line 849
    .line 850
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    .line 852
    .line 853
    const-string p1, "  set-inactive [--user <USER_ID>] <PACKAGE> true|false"

    .line 854
    .line 855
    const-string v0, "      Sets the inactive state of an app."

    .line 856
    .line 857
    const-string v1, "  get-inactive [--user <USER_ID>] <PACKAGE>"

    .line 858
    .line 859
    const-string v2, "      Returns the inactive state of an app."

    .line 860
    .line 861
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    .line 863
    .line 864
    const-string p1, "  set-standby-bucket [--user <USER_ID>] <PACKAGE> active|working_set|frequent|rare|restricted"

    .line 865
    .line 866
    const-string v0, "      Puts an app in the standby bucket."

    .line 867
    .line 868
    const-string v1, "  get-standby-bucket [--user <USER_ID>] <PACKAGE>"

    .line 869
    .line 870
    const-string v2, "      Returns the standby bucket of an app."

    .line 871
    .line 872
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    .line 874
    .line 875
    const-string p1, "  send-trim-memory [--user <USER_ID>] <PROCESS>"

    .line 876
    .line 877
    const-string v0, "          [HIDDEN|RUNNING_MODERATE|BACKGROUND|RUNNING_LOW|MODERATE|RUNNING_CRITICAL|COMPLETE]"

    .line 878
    .line 879
    const-string v1, "      Send a memory trim event to a <PROCESS>.  May also supply a raw trim int level."

    .line 880
    .line 881
    const-string v2, "  display [COMMAND] [...]: sub-commands for operating on displays."

    .line 882
    .line 883
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    .line 885
    .line 886
    const-string p1, "       move-stack <STACK_ID> <DISPLAY_ID>"

    .line 887
    .line 888
    const-string v0, "           Move <STACK_ID> from its current display to <DISPLAY_ID>."

    .line 889
    .line 890
    const-string v1, "  stack [COMMAND] [...]: sub-commands for operating on activity stacks."

    .line 891
    .line 892
    const-string v2, "       move-task <TASK_ID> <STACK_ID> [true|false]"

    .line 893
    .line 894
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    .line 896
    .line 897
    const-string p1, "           Move <TASK_ID> from its current stack to the top (true) or"

    .line 898
    .line 899
    const-string v0, "           bottom (false) of <STACK_ID>."

    .line 900
    .line 901
    const-string v1, "       list"

    .line 902
    .line 903
    const-string v2, "           List all of the activity stacks and their sizes."

    .line 904
    .line 905
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    .line 907
    .line 908
    const-string p1, "       info <WINDOWING_MODE> <ACTIVITY_TYPE>"

    .line 909
    .line 910
    const-string v0, "           Display the information about activity stack in <WINDOWING_MODE> and <ACTIVITY_TYPE>."

    .line 911
    .line 912
    const-string v1, "       remove <STACK_ID>"

    .line 913
    .line 914
    const-string v2, "           Remove stack <STACK_ID>."

    .line 915
    .line 916
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    .line 918
    .line 919
    const-string p1, "  task [COMMAND] [...]: sub-commands for operating on activity tasks."

    .line 920
    .line 921
    const-string v0, "       lock <TASK_ID>"

    .line 922
    .line 923
    const-string v1, "           Bring <TASK_ID> to the front and don\'t allow other tasks to run."

    .line 924
    .line 925
    const-string v2, "       lock stop"

    .line 926
    .line 927
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 928
    .line 929
    .line 930
    const-string p1, "           End the current task lock."

    .line 931
    .line 932
    const-string v0, "       resizeable <TASK_ID> [0|1|2|3]"

    .line 933
    .line 934
    const-string v1, "           Change resizeable mode of <TASK_ID> to one of the following:"

    .line 935
    .line 936
    const-string v2, "           0: unresizeable"

    .line 937
    .line 938
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    .line 940
    .line 941
    const-string p1, "           1: crop_windows"

    .line 942
    .line 943
    const-string v0, "           2: resizeable"

    .line 944
    .line 945
    const-string v1, "           3: resizeable_and_pipable"

    .line 946
    .line 947
    const-string v2, "       resize <TASK_ID> <LEFT> <TOP> <RIGHT> <BOTTOM>"

    .line 948
    .line 949
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    .line 951
    .line 952
    const-string p1, "           The task is resized only if it is in multi-window windowing"

    .line 953
    .line 954
    const-string v0, "           mode or freeform windowing mode."

    .line 955
    .line 956
    const-string v1, "  update-appinfo <USER_ID> <PACKAGE_NAME> [<PACKAGE_NAME>...]"

    .line 957
    .line 958
    const-string v2, "      Update the ApplicationInfo objects of the listed packages for <USER_ID>"

    .line 959
    .line 960
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    .line 962
    .line 963
    const-string p1, "      without restarting any processes."

    .line 964
    .line 965
    const-string v0, "  write"

    .line 966
    .line 967
    const-string v1, "      Write all pending state to storage."

    .line 968
    .line 969
    const-string v2, "  compat [COMMAND] [...]: sub-commands for toggling app-compat changes."

    .line 970
    .line 971
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    .line 973
    .line 974
    const-string p1, "         enable|disable [--no-kill] <CHANGE_ID|CHANGE_NAME> <PACKAGE_NAME>"

    .line 975
    .line 976
    const-string v0, "            Toggles a change either by id or by name for <PACKAGE_NAME>."

    .line 977
    .line 978
    const-string v1, "            It kills <PACKAGE_NAME> (to allow the toggle to take effect) unless --no-kill is provided."

    .line 979
    .line 980
    const-string v2, "         reset <CHANGE_ID|CHANGE_NAME> <PACKAGE_NAME>"

    .line 981
    .line 982
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 983
    .line 984
    .line 985
    const-string p1, "            It kills <PACKAGE_NAME> (to allow the toggle to take effect)."

    .line 986
    .line 987
    const-string v2, "         enable-all|disable-all <targetSdkVersion> <PACKAGE_NAME>"

    .line 988
    .line 989
    const-string v3, "            Toggles all changes that are gated by <targetSdkVersion>."

    .line 990
    .line 991
    invoke-static {p0, v0, p1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 992
    .line 993
    .line 994
    const-string p1, "         reset-all [--no-kill] <PACKAGE_NAME>"

    .line 995
    .line 996
    const-string v0, "            Removes all existing overrides for all changes for "

    .line 997
    .line 998
    const-string v2, "            <PACKAGE_NAME> (back to default behaviour)."

    .line 999
    .line 1000
    invoke-static {p0, p1, v0, v2, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    .line 1002
    .line 1003
    const-string p1, "  memory-factor [command] [...]: sub-commands for overriding memory pressure factor"

    .line 1004
    .line 1005
    const-string v0, "         set <NORMAL|MODERATE|LOW|CRITICAL>"

    .line 1006
    .line 1007
    const-string v1, "            Overrides memory pressure factor. May also supply a raw int level"

    .line 1008
    .line 1009
    const-string v2, "         show"

    .line 1010
    .line 1011
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    .line 1013
    .line 1014
    const-string p1, "            Shows the existing memory pressure factor"

    .line 1015
    .line 1016
    const-string v0, "         reset"

    .line 1017
    .line 1018
    const-string v1, "            Removes existing override for memory pressure factor"

    .line 1019
    .line 1020
    const-string v2, "  service-restart-backoff <COMMAND> [...]: sub-commands to toggle service restart backoff policy."

    .line 1021
    .line 1022
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    .line 1024
    .line 1025
    const-string p1, "         enable|disable <PACKAGE_NAME>"

    .line 1026
    .line 1027
    const-string v0, "            Toggles the restart backoff policy on/off for <PACKAGE_NAME>."

    .line 1028
    .line 1029
    const-string v1, "         show <PACKAGE_NAME>"

    .line 1030
    .line 1031
    const-string v2, "            Shows the restart backoff policy state for <PACKAGE_NAME>."

    .line 1032
    .line 1033
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    .line 1035
    .line 1036
    const-string p1, "  get-isolated-pids <UID>"

    .line 1037
    .line 1038
    const-string v0, "         Get the PIDs of isolated processes with packages in this <UID>"

    .line 1039
    .line 1040
    const-string v1, "  set-stop-user-on-switch [true|false]"

    .line 1041
    .line 1042
    const-string v2, "         Sets whether the current user (and its profiles) should be stopped when switching to a different user."

    .line 1043
    .line 1044
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1045
    .line 1046
    .line 1047
    const-string p1, "         Without arguments, it resets to the value defined by platform."

    .line 1048
    .line 1049
    const-string v0, "  set-bg-abusive-uids [uid=percentage][,uid=percentage...]"

    .line 1050
    .line 1051
    const-string v1, "         Force setting the battery usage of the given UID."

    .line 1052
    .line 1053
    const-string v2, "  set-bg-restriction-level [--user <USER_ID>] <PACKAGE> unrestricted|exempted|adaptive_bucket|restricted_bucket|background_restricted|hibernation"

    .line 1054
    .line 1055
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    .line 1057
    .line 1058
    const-string p1, "         Set an app\'s background restriction level which in turn map to a app standby bucket."

    .line 1059
    .line 1060
    const-string v0, "  get-bg-restriction-level [--user <USER_ID>] <PACKAGE>"

    .line 1061
    .line 1062
    const-string v1, "         Get an app\'s background restriction level."

    .line 1063
    .line 1064
    const-string v2, "  list-displays-for-starting-users"

    .line 1065
    .line 1066
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1067
    .line 1068
    .line 1069
    const-string p1, "         Lists the id of displays that can be used to start users on background."

    .line 1070
    .line 1071
    const-string v0, "  set-foreground-service-delegate [--user <USER_ID>] <PACKAGE> start|stop"

    .line 1072
    .line 1073
    const-string v1, "         Start/stop an app\'s foreground service delegate."

    .line 1074
    .line 1075
    const-string v2, "  set-ignore-delivery-group-policy <ACTION>"

    .line 1076
    .line 1077
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1078
    .line 1079
    .line 1080
    const-string p1, "         Start ignoring delivery group policy set for a broadcast action"

    .line 1081
    .line 1082
    const-string v0, "  clear-ignore-delivery-group-policy <ACTION>"

    .line 1083
    .line 1084
    const-string v1, "         Stop ignoring delivery group policy set for a broadcast action"

    .line 1085
    .line 1086
    const-string v2, "  capabilities [--protobuf]"

    .line 1087
    .line 1088
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1089
    .line 1090
    .line 1091
    const-string p1, "         Output am supported features (text format). Options are:"

    .line 1092
    .line 1093
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1094
    .line 1095
    .line 1096
    const-string p1, "         --protobuf: format output using protobuffer"

    .line 1097
    .line 1098
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1099
    .line 1100
    .line 1101
    const-string p1, ""

    .line 1102
    .line 1103
    invoke-static {p0, p1}, Landroid/content/Intent;->printIntentArgsHelp(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1104
    .line 1105
    .line 1106
    :goto_0
    return-void
.end method


# virtual methods
.method public final bucketNameToBucketValue(Ljava/lang/String;)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "ac"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    const/16 p0, 0xa

    .line 14
    .line 15
    return p0

    .line 16
    :cond_0
    const-string/jumbo v1, "wo"

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    const/16 p0, 0x14

    .line 26
    .line 27
    return p0

    .line 28
    :cond_1
    const-string/jumbo v1, "fr"

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    const/16 p0, 0x1e

    .line 38
    .line 39
    return p0

    .line 40
    :cond_2
    const-string/jumbo v1, "ra"

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_3

    .line 48
    .line 49
    const/16 p0, 0x28

    .line 50
    .line 51
    return p0

    .line 52
    :cond_3
    const-string/jumbo v1, "re"

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_4

    .line 60
    .line 61
    const/16 p0, 0x2d

    .line 62
    .line 63
    return p0

    .line 64
    :cond_4
    const-string/jumbo v1, "ne"

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-eqz v1, :cond_5

    .line 72
    .line 73
    const/16 p0, 0x32

    .line 74
    .line 75
    return p0

    .line 76
    :cond_5
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    return p0

    .line 81
    :catch_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    const-string v0, "Error: Unknown bucket: "

    .line 86
    .line 87
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    const/4 p0, -0x1

    .line 95
    return p0
.end method

.method public final getProcessFromShell()Lcom/android/server/am/ProcessRecord;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    .line 11
    .line 12
    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    .line 13
    .line 14
    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    :try_start_1
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    .line 16
    .line 17
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    .line 18
    .line 19
    invoke-virtual {v4, v2}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    .line 20
    .line 21
    .line 22
    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 23
    :try_start_2
    monitor-exit v3

    .line 24
    goto :goto_1

    .line 25
    :catchall_0
    move-exception v4

    .line 26
    goto :goto_0

    .line 27
    :catchall_1
    move-exception v4

    .line 28
    move-object v2, v1

    .line 29
    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 30
    :try_start_3
    throw v4
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1

    .line 31
    :catch_0
    move-object v2, v1

    .line 32
    :catch_1
    :goto_1
    if-nez v2, :cond_3

    .line 33
    .line 34
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    .line 35
    .line 36
    iget-object v3, v2, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    .line 37
    .line 38
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 39
    .line 40
    .line 41
    monitor-enter v3

    .line 42
    :try_start_4
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    .line 43
    .line 44
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 45
    .line 46
    iget-object v2, v2, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    .line 47
    .line 48
    invoke-virtual {v2}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Landroid/util/SparseArray;

    .line 57
    .line 58
    if-eqz v0, :cond_2

    .line 59
    .line 60
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-nez v2, :cond_0

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    const/4 v4, 0x1

    .line 72
    if-le v2, v4, :cond_1

    .line 73
    .line 74
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    const-string v0, "Error: more than one processes found"

    .line 79
    .line 80
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 84
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 85
    .line 86
    .line 87
    return-object v1

    .line 88
    :catchall_2
    move-exception p0

    .line 89
    goto :goto_3

    .line 90
    :cond_1
    const/4 p0, 0x0

    .line 91
    :try_start_5
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    move-object v2, p0

    .line 96
    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 97
    .line 98
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 99
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 100
    .line 101
    .line 102
    goto :goto_4

    .line 103
    :cond_2
    :goto_2
    :try_start_6
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    const-string v0, "Error: could not find process"

    .line 108
    .line 109
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 113
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 114
    .line 115
    .line 116
    return-object v1

    .line 117
    :goto_3
    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 118
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 119
    .line 120
    .line 121
    throw p0

    .line 122
    :cond_3
    :goto_4
    return-object v2
.end method

.method public final getResources(Ljava/io/PrintWriter;)Landroid/content/res/Resources;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getConfiguration()Landroid/content/res/Configuration;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    new-instance p1, Landroid/util/DisplayMetrics;

    .line 10
    .line 11
    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 15
    .line 16
    .line 17
    new-instance v0, Landroid/content/res/Resources;

    .line 18
    .line 19
    invoke-static {}, Landroid/content/res/AssetManager;->getSystem()Landroid/content/res/AssetManager;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-direct {v0, v1, p1, p0}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 24
    .line 25
    .line 26
    return-object v0
.end method

.method public final getUidState(Ljava/io/PrintWriter;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    const-string v1, "android.permission.DUMP"

    .line 4
    .line 5
    const-string/jumbo v2, "getUidState()"

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    invoke-virtual {v0, p0}, Lcom/android/server/am/ActivityManagerService;->getUidState(I)I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(I)V

    .line 26
    .line 27
    .line 28
    const-string v0, " ("

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-class v0, Landroid/app/ActivityManager;

    .line 34
    .line 35
    const-string v1, "PROCESS_STATE_"

    .line 36
    .line 37
    invoke-static {v0, v1, p0}, Landroid/util/DebugUtils;->valueToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    const/4 v0, 0x0

    .line 42
    new-array v0, v0, [Ljava/lang/Object;

    .line 43
    .line 44
    invoke-virtual {p1, p0, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 45
    .line 46
    .line 47
    const-string p0, ")"

    .line 48
    .line 49
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public final makeIntent()Landroid/content/Intent;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mStartFlags:I

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mWaitOption:Z

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mStopOption:Z

    .line 7
    .line 8
    iput v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mRepeat:I

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mProfileFile:Ljava/lang/String;

    .line 12
    .line 13
    iput v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mSamplingInterval:I

    .line 14
    .line 15
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mAutoStop:Z

    .line 16
    .line 17
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mStreaming:Z

    .line 18
    .line 19
    const/4 v2, -0x2

    .line 20
    iput v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    .line 21
    .line 22
    const/4 v2, -0x1

    .line 23
    iput v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mDisplayId:I

    .line 24
    .line 25
    iput v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskDisplayAreaFeatureId:I

    .line 26
    .line 27
    iput v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mWindowingMode:I

    .line 28
    .line 29
    iput v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mForceWindowingMode:I

    .line 30
    .line 31
    iput v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mActivityType:I

    .line 32
    .line 33
    iput v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskId:I

    .line 34
    .line 35
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mIsTaskOverlay:Z

    .line 36
    .line 37
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mIsLockTask:Z

    .line 38
    .line 39
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mAsync:Z

    .line 40
    .line 41
    iput-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mBroadcastOptions:Landroid/app/BroadcastOptions;

    .line 42
    .line 43
    new-instance v0, Lcom/android/server/am/ActivityManagerShellCommand$1;

    .line 44
    .line 45
    invoke-direct {v0, p0}, Lcom/android/server/am/ActivityManagerShellCommand$1;-><init>(Lcom/android/server/am/ActivityManagerShellCommand;)V

    .line 46
    .line 47
    .line 48
    invoke-static {p0, v0}, Landroid/content/Intent;->parseCommandArgs(Landroid/os/ShellCommand;Landroid/content/Intent$CommandOptionHandler;)Landroid/content/Intent;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0
.end method

.method public final onCommand(Ljava/lang/String;)I
    .locals 9

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, -0x1

    .line 13
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x1

    .line 18
    const/16 v4, 0x20

    .line 19
    .line 20
    const/4 v5, 0x2

    .line 21
    const/4 v6, 0x0

    .line 22
    sparse-switch v2, :sswitch_data_0

    .line 23
    .line 24
    .line 25
    goto/16 :goto_0

    .line 26
    .line 27
    :sswitch_0
    const-string/jumbo v2, "switch-user"

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    const/16 v2, 0x30

    .line 37
    .line 38
    goto/16 :goto_1

    .line 39
    .line 40
    :catch_0
    move-exception p0

    .line 41
    goto/16 :goto_8

    .line 42
    .line 43
    :sswitch_1
    const-string/jumbo v2, "clear-recent-apps"

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_1

    .line 51
    .line 52
    const/16 v2, 0x1f

    .line 53
    .line 54
    goto/16 :goto_1

    .line 55
    .line 56
    :sswitch_2
    const-string/jumbo v2, "stop-service"

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-eqz v2, :cond_1

    .line 64
    .line 65
    const/16 v2, 0xb

    .line 66
    .line 67
    goto/16 :goto_1

    .line 68
    .line 69
    :sswitch_3
    const-string/jumbo v2, "idle-maintenance"

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-eqz v2, :cond_1

    .line 77
    .line 78
    const/16 v2, 0x2a

    .line 79
    .line 80
    goto/16 :goto_1

    .line 81
    .line 82
    :sswitch_4
    const-string/jumbo v2, "no-home-screen"

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    if-eqz v2, :cond_1

    .line 90
    .line 91
    const/16 v2, 0x49

    .line 92
    .line 93
    goto/16 :goto_1

    .line 94
    .line 95
    :sswitch_5
    const-string/jumbo v2, "set-stop-user-on-switch"

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    if-eqz v2, :cond_1

    .line 103
    .line 104
    const/16 v2, 0x55

    .line 105
    .line 106
    goto/16 :goto_1

    .line 107
    .line 108
    :sswitch_6
    const-string/jumbo v2, "stop-app"

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    if-eqz v2, :cond_1

    .line 116
    .line 117
    const/16 v2, 0x1e

    .line 118
    .line 119
    goto/16 :goto_1

    .line 120
    .line 121
    :sswitch_7
    const-string/jumbo v2, "display"

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    if-eqz v2, :cond_1

    .line 129
    .line 130
    const/16 v2, 0x41

    .line 131
    .line 132
    goto/16 :goto_1

    .line 133
    .line 134
    :sswitch_8
    const-string/jumbo v2, "wait-for-broadcast-idle"

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v2

    .line 141
    if-eqz v2, :cond_1

    .line 142
    .line 143
    const/16 v2, 0x4a

    .line 144
    .line 145
    goto/16 :goto_1

    .line 146
    .line 147
    :sswitch_9
    const-string/jumbo v2, "stop-user"

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    if-eqz v2, :cond_1

    .line 155
    .line 156
    const/16 v2, 0x34

    .line 157
    .line 158
    goto/16 :goto_1

    .line 159
    .line 160
    :sswitch_a
    const-string/jumbo v2, "instrument"

    .line 161
    .line 162
    .line 163
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v2

    .line 167
    if-eqz v2, :cond_1

    .line 168
    .line 169
    const/16 v2, 0x10

    .line 170
    .line 171
    goto/16 :goto_1

    .line 172
    .line 173
    :sswitch_b
    const-string/jumbo v2, "monitor"

    .line 174
    .line 175
    .line 176
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result v2

    .line 180
    if-eqz v2, :cond_1

    .line 181
    .line 182
    const/16 v2, 0x26

    .line 183
    .line 184
    goto/16 :goto_1

    .line 185
    .line 186
    :sswitch_c
    const-string/jumbo v2, "get-started-user-state"

    .line 187
    .line 188
    .line 189
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move-result v2

    .line 193
    if-eqz v2, :cond_1

    .line 194
    .line 195
    const/16 v2, 0x36

    .line 196
    .line 197
    goto/16 :goto_1

    .line 198
    .line 199
    :sswitch_d
    const-string/jumbo v2, "refresh-settings-cache"

    .line 200
    .line 201
    .line 202
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    move-result v2

    .line 206
    if-eqz v2, :cond_1

    .line 207
    .line 208
    const/16 v2, 0x51

    .line 209
    .line 210
    goto/16 :goto_1

    .line 211
    .line 212
    :sswitch_e
    const-string/jumbo v2, "wait-for-broadcast-dispatch"

    .line 213
    .line 214
    .line 215
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result v2

    .line 219
    if-eqz v2, :cond_1

    .line 220
    .line 221
    const/16 v2, 0x4d

    .line 222
    .line 223
    goto/16 :goto_1

    .line 224
    .line 225
    :sswitch_f
    const-string/jumbo v2, "update-appinfo"

    .line 226
    .line 227
    .line 228
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    move-result v2

    .line 232
    if-eqz v2, :cond_1

    .line 233
    .line 234
    const/16 v2, 0x48

    .line 235
    .line 236
    goto/16 :goto_1

    .line 237
    .line 238
    :sswitch_10
    const-string/jumbo v2, "restart"

    .line 239
    .line 240
    .line 241
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    move-result v2

    .line 245
    if-eqz v2, :cond_1

    .line 246
    .line 247
    const/16 v2, 0x29

    .line 248
    .line 249
    goto/16 :goto_1

    .line 250
    .line 251
    :sswitch_11
    const-string/jumbo v2, "clear-debug-app"

    .line 252
    .line 253
    .line 254
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    move-result v2

    .line 258
    if-eqz v2, :cond_1

    .line 259
    .line 260
    const/16 v2, 0x16

    .line 261
    .line 262
    goto/16 :goto_1

    .line 263
    .line 264
    :sswitch_12
    const-string/jumbo v2, "set-ignore-delivery-group-policy"

    .line 265
    .line 266
    .line 267
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 268
    .line 269
    .line 270
    move-result v2

    .line 271
    if-eqz v2, :cond_1

    .line 272
    .line 273
    const/16 v2, 0x4e

    .line 274
    .line 275
    goto/16 :goto_1

    .line 276
    .line 277
    :sswitch_13
    const-string v2, "attach-agent"

    .line 278
    .line 279
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 280
    .line 281
    .line 282
    move-result v2

    .line 283
    if-eqz v2, :cond_1

    .line 284
    .line 285
    const/16 v2, 0x45

    .line 286
    .line 287
    goto/16 :goto_1

    .line 288
    .line 289
    :sswitch_14
    const-string/jumbo v2, "compact"

    .line 290
    .line 291
    .line 292
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 293
    .line 294
    .line 295
    move-result v2

    .line 296
    if-eqz v2, :cond_1

    .line 297
    .line 298
    const/16 v2, 0xd

    .line 299
    .line 300
    goto/16 :goto_1

    .line 301
    .line 302
    :sswitch_15
    const-string/jumbo v2, "start-fg-service"

    .line 303
    .line 304
    .line 305
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 306
    .line 307
    .line 308
    move-result v2

    .line 309
    if-eqz v2, :cond_1

    .line 310
    .line 311
    const/16 v2, 0x9

    .line 312
    .line 313
    goto/16 :goto_1

    .line 314
    .line 315
    :sswitch_16
    const-string/jumbo v2, "clear-ignore-delivery-group-policy"

    .line 316
    .line 317
    .line 318
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 319
    .line 320
    .line 321
    move-result v2

    .line 322
    if-eqz v2, :cond_1

    .line 323
    .line 324
    const/16 v2, 0x4f

    .line 325
    .line 326
    goto/16 :goto_1

    .line 327
    .line 328
    :sswitch_17
    const-string/jumbo v2, "set-agent-app"

    .line 329
    .line 330
    .line 331
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 332
    .line 333
    .line 334
    move-result v2

    .line 335
    if-eqz v2, :cond_1

    .line 336
    .line 337
    const/16 v2, 0x15

    .line 338
    .line 339
    goto/16 :goto_1

    .line 340
    .line 341
    :sswitch_18
    const-string/jumbo v2, "clear-watch-heap"

    .line 342
    .line 343
    .line 344
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 345
    .line 346
    .line 347
    move-result v2

    .line 348
    if-eqz v2, :cond_1

    .line 349
    .line 350
    const/16 v2, 0x18

    .line 351
    .line 352
    goto/16 :goto_1

    .line 353
    .line 354
    :sswitch_19
    const-string/jumbo v2, "set-watch-heap"

    .line 355
    .line 356
    .line 357
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 358
    .line 359
    .line 360
    move-result v2

    .line 361
    if-eqz v2, :cond_1

    .line 362
    .line 363
    const/16 v2, 0x17

    .line 364
    .line 365
    goto/16 :goto_1

    .line 366
    .line 367
    :sswitch_1a
    const-string/jumbo v2, "to-intent-uri"

    .line 368
    .line 369
    .line 370
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 371
    .line 372
    .line 373
    move-result v2

    .line 374
    if-eqz v2, :cond_1

    .line 375
    .line 376
    const/16 v2, 0x2e

    .line 377
    .line 378
    goto/16 :goto_1

    .line 379
    .line 380
    :sswitch_1b
    const-string/jumbo v2, "set-bg-abusive-uids"

    .line 381
    .line 382
    .line 383
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 384
    .line 385
    .line 386
    move-result v2

    .line 387
    if-eqz v2, :cond_1

    .line 388
    .line 389
    const/16 v2, 0x56

    .line 390
    .line 391
    goto/16 :goto_1

    .line 392
    .line 393
    :sswitch_1c
    const-string/jumbo v2, "supports-multiwindow"

    .line 394
    .line 395
    .line 396
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 397
    .line 398
    .line 399
    move-result v2

    .line 400
    if-eqz v2, :cond_1

    .line 401
    .line 402
    const/16 v2, 0x46

    .line 403
    .line 404
    goto/16 :goto_1

    .line 405
    .line 406
    :sswitch_1d
    const-string/jumbo v2, "start-in-vsync"

    .line 407
    .line 408
    .line 409
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 410
    .line 411
    .line 412
    move-result v2

    .line 413
    if-eqz v2, :cond_1

    .line 414
    .line 415
    const/4 v2, 0x3

    .line 416
    goto/16 :goto_1

    .line 417
    .line 418
    :sswitch_1e
    const-string/jumbo v2, "trace-ipc"

    .line 419
    .line 420
    .line 421
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 422
    .line 423
    .line 424
    move-result v2

    .line 425
    if-eqz v2, :cond_1

    .line 426
    .line 427
    const/16 v2, 0x11

    .line 428
    .line 429
    goto/16 :goto_1

    .line 430
    .line 431
    :sswitch_1f
    const-string/jumbo v2, "supports-split-screen-multi-window"

    .line 432
    .line 433
    .line 434
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 435
    .line 436
    .line 437
    move-result v2

    .line 438
    if-eqz v2, :cond_1

    .line 439
    .line 440
    const/16 v2, 0x47

    .line 441
    .line 442
    goto/16 :goto_1

    .line 443
    .line 444
    :sswitch_20
    const-string/jumbo v2, "bug-report"

    .line 445
    .line 446
    .line 447
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 448
    .line 449
    .line 450
    move-result v2

    .line 451
    if-eqz v2, :cond_1

    .line 452
    .line 453
    const/16 v2, 0x1c

    .line 454
    .line 455
    goto/16 :goto_1

    .line 456
    .line 457
    :sswitch_21
    const-string/jumbo v2, "wait-for-application-barrier"

    .line 458
    .line 459
    .line 460
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 461
    .line 462
    .line 463
    move-result v2

    .line 464
    if-eqz v2, :cond_1

    .line 465
    .line 466
    const/16 v2, 0x4c

    .line 467
    .line 468
    goto/16 :goto_1

    .line 469
    .line 470
    :sswitch_22
    const-string/jumbo v2, "untrack-associations"

    .line 471
    .line 472
    .line 473
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 474
    .line 475
    .line 476
    move-result v2

    .line 477
    if-eqz v2, :cond_1

    .line 478
    .line 479
    const/16 v2, 0x38

    .line 480
    .line 481
    goto/16 :goto_1

    .line 482
    .line 483
    :sswitch_23
    const-string/jumbo v2, "start-activity"

    .line 484
    .line 485
    .line 486
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 487
    .line 488
    .line 489
    move-result v2

    .line 490
    if-eqz v2, :cond_1

    .line 491
    .line 492
    move v2, v5

    .line 493
    goto/16 :goto_1

    .line 494
    .line 495
    :sswitch_24
    const-string/jumbo v2, "to-app-uri"

    .line 496
    .line 497
    .line 498
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 499
    .line 500
    .line 501
    move-result v2

    .line 502
    if-eqz v2, :cond_1

    .line 503
    .line 504
    const/16 v2, 0x2f

    .line 505
    .line 506
    goto/16 :goto_1

    .line 507
    .line 508
    :sswitch_25
    const-string/jumbo v2, "startservice"

    .line 509
    .line 510
    .line 511
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 512
    .line 513
    .line 514
    move-result v2

    .line 515
    if-eqz v2, :cond_1

    .line 516
    .line 517
    const/4 v2, 0x4

    .line 518
    goto/16 :goto_1

    .line 519
    .line 520
    :sswitch_26
    const-string/jumbo v2, "memory-factor"

    .line 521
    .line 522
    .line 523
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 524
    .line 525
    .line 526
    move-result v2

    .line 527
    if-eqz v2, :cond_1

    .line 528
    .line 529
    const/16 v2, 0x52

    .line 530
    .line 531
    goto/16 :goto_1

    .line 532
    .line 533
    :sswitch_27
    const-string/jumbo v2, "write"

    .line 534
    .line 535
    .line 536
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 537
    .line 538
    .line 539
    move-result v2

    .line 540
    if-eqz v2, :cond_1

    .line 541
    .line 542
    const/16 v2, 0x44

    .line 543
    .line 544
    goto/16 :goto_1

    .line 545
    .line 546
    :sswitch_28
    const-string/jumbo v2, "start"

    .line 547
    .line 548
    .line 549
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 550
    .line 551
    .line 552
    move-result v2

    .line 553
    if-eqz v2, :cond_1

    .line 554
    .line 555
    move v2, v3

    .line 556
    goto/16 :goto_1

    .line 557
    .line 558
    :sswitch_29
    const-string/jumbo v2, "stack"

    .line 559
    .line 560
    .line 561
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 562
    .line 563
    .line 564
    move-result v2

    .line 565
    if-eqz v2, :cond_1

    .line 566
    .line 567
    const/16 v2, 0x42

    .line 568
    .line 569
    goto/16 :goto_1

    .line 570
    .line 571
    :sswitch_2a
    const-string/jumbo v2, "crash"

    .line 572
    .line 573
    .line 574
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 575
    .line 576
    .line 577
    move-result v2

    .line 578
    if-eqz v2, :cond_1

    .line 579
    .line 580
    const/16 v2, 0x21

    .line 581
    .line 582
    goto/16 :goto_1

    .line 583
    .line 584
    :sswitch_2b
    const-string/jumbo v2, "force-stop"

    .line 585
    .line 586
    .line 587
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 588
    .line 589
    .line 590
    move-result v2

    .line 591
    if-eqz v2, :cond_1

    .line 592
    .line 593
    const/16 v2, 0x1d

    .line 594
    .line 595
    goto/16 :goto_1

    .line 596
    .line 597
    :sswitch_2c
    const-string/jumbo v2, "task"

    .line 598
    .line 599
    .line 600
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 601
    .line 602
    .line 603
    move-result v2

    .line 604
    if-eqz v2, :cond_1

    .line 605
    .line 606
    const/16 v2, 0x43

    .line 607
    .line 608
    goto/16 :goto_1

    .line 609
    .line 610
    :sswitch_2d
    const-string/jumbo v2, "kill"

    .line 611
    .line 612
    .line 613
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 614
    .line 615
    .line 616
    move-result v2

    .line 617
    if-eqz v2, :cond_1

    .line 618
    .line 619
    const/16 v2, 0x22

    .line 620
    .line 621
    goto/16 :goto_1

    .line 622
    .line 623
    :sswitch_2e
    const-string/jumbo v2, "help"

    .line 624
    .line 625
    .line 626
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 627
    .line 628
    .line 629
    move-result v2

    .line 630
    if-eqz v2, :cond_1

    .line 631
    .line 632
    move v2, v6

    .line 633
    goto/16 :goto_1

    .line 634
    .line 635
    :sswitch_2f
    const-string/jumbo v2, "hang"

    .line 636
    .line 637
    .line 638
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 639
    .line 640
    .line 641
    move-result v2

    .line 642
    if-eqz v2, :cond_1

    .line 643
    .line 644
    const/16 v2, 0x28

    .line 645
    .line 646
    goto/16 :goto_1

    .line 647
    .line 648
    :sswitch_30
    const-string/jumbo v2, "make-uid-idle"

    .line 649
    .line 650
    .line 651
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 652
    .line 653
    .line 654
    move-result v2

    .line 655
    if-eqz v2, :cond_1

    .line 656
    .line 657
    const/16 v2, 0x24

    .line 658
    .line 659
    goto/16 :goto_1

    .line 660
    .line 661
    :sswitch_31
    const-string/jumbo v2, "get-bg-restriction-level"

    .line 662
    .line 663
    .line 664
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 665
    .line 666
    .line 667
    move-result v2

    .line 668
    if-eqz v2, :cond_1

    .line 669
    .line 670
    const/16 v2, 0x59

    .line 671
    .line 672
    goto/16 :goto_1

    .line 673
    .line 674
    :sswitch_32
    const-string/jumbo v2, "startforegroundservice"

    .line 675
    .line 676
    .line 677
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 678
    .line 679
    .line 680
    move-result v2

    .line 681
    if-eqz v2, :cond_1

    .line 682
    .line 683
    const/4 v2, 0x6

    .line 684
    goto/16 :goto_1

    .line 685
    .line 686
    :sswitch_33
    const-string/jumbo v2, "clear-exit-info"

    .line 687
    .line 688
    .line 689
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 690
    .line 691
    .line 692
    move-result v2

    .line 693
    if-eqz v2, :cond_1

    .line 694
    .line 695
    const/16 v2, 0x1b

    .line 696
    .line 697
    goto/16 :goto_1

    .line 698
    .line 699
    :sswitch_34
    const-string/jumbo v2, "watch-uids"

    .line 700
    .line 701
    .line 702
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 703
    .line 704
    .line 705
    move-result v2

    .line 706
    if-eqz v2, :cond_1

    .line 707
    .line 708
    const/16 v2, 0x27

    .line 709
    .line 710
    goto/16 :goto_1

    .line 711
    .line 712
    :sswitch_35
    const-string/jumbo v2, "list-bg-exemptions-config"

    .line 713
    .line 714
    .line 715
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 716
    .line 717
    .line 718
    move-result v2

    .line 719
    if-eqz v2, :cond_1

    .line 720
    .line 721
    const/16 v2, 0x57

    .line 722
    .line 723
    goto/16 :goto_1

    .line 724
    .line 725
    :sswitch_36
    const-string/jumbo v2, "set-inactive"

    .line 726
    .line 727
    .line 728
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 729
    .line 730
    .line 731
    move-result v2

    .line 732
    if-eqz v2, :cond_1

    .line 733
    .line 734
    const/16 v2, 0x3c

    .line 735
    .line 736
    goto/16 :goto_1

    .line 737
    .line 738
    :sswitch_37
    const-string/jumbo v2, "service-restart-backoff"

    .line 739
    .line 740
    .line 741
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 742
    .line 743
    .line 744
    move-result v2

    .line 745
    if-eqz v2, :cond_1

    .line 746
    .line 747
    const/16 v2, 0x53

    .line 748
    .line 749
    goto/16 :goto_1

    .line 750
    .line 751
    :sswitch_38
    const-string/jumbo v2, "profile"

    .line 752
    .line 753
    .line 754
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 755
    .line 756
    .line 757
    move-result v2

    .line 758
    if-eqz v2, :cond_1

    .line 759
    .line 760
    const/16 v2, 0x12

    .line 761
    .line 762
    goto/16 :goto_1

    .line 763
    .line 764
    :sswitch_39
    const-string/jumbo v2, "screen-compat"

    .line 765
    .line 766
    .line 767
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 768
    .line 769
    .line 770
    move-result v2

    .line 771
    if-eqz v2, :cond_1

    .line 772
    .line 773
    const/16 v2, 0x2b

    .line 774
    .line 775
    goto/16 :goto_1

    .line 776
    .line 777
    :sswitch_3a
    const-string/jumbo v2, "unfreeze"

    .line 778
    .line 779
    .line 780
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 781
    .line 782
    .line 783
    move-result v2

    .line 784
    if-eqz v2, :cond_1

    .line 785
    .line 786
    const/16 v2, 0xf

    .line 787
    .line 788
    goto/16 :goto_1

    .line 789
    .line 790
    :sswitch_3b
    const-string/jumbo v2, "track-associations"

    .line 791
    .line 792
    .line 793
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 794
    .line 795
    .line 796
    move-result v2

    .line 797
    if-eqz v2, :cond_1

    .line 798
    .line 799
    const/16 v2, 0x37

    .line 800
    .line 801
    goto/16 :goto_1

    .line 802
    .line 803
    :sswitch_3c
    const-string/jumbo v2, "fgs-notification-rate-limit"

    .line 804
    .line 805
    .line 806
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 807
    .line 808
    .line 809
    move-result v2

    .line 810
    if-eqz v2, :cond_1

    .line 811
    .line 812
    move v2, v4

    .line 813
    goto/16 :goto_1

    .line 814
    .line 815
    :sswitch_3d
    const-string/jumbo v2, "observe-foreground-process"

    .line 816
    .line 817
    .line 818
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 819
    .line 820
    .line 821
    move-result v2

    .line 822
    if-eqz v2, :cond_1

    .line 823
    .line 824
    const/16 v2, 0x5a

    .line 825
    .line 826
    goto/16 :goto_1

    .line 827
    .line 828
    :sswitch_3e
    const-string/jumbo v2, "is-user-stopped"

    .line 829
    .line 830
    .line 831
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 832
    .line 833
    .line 834
    move-result v2

    .line 835
    if-eqz v2, :cond_1

    .line 836
    .line 837
    const/16 v2, 0x35

    .line 838
    .line 839
    goto/16 :goto_1

    .line 840
    .line 841
    :sswitch_3f
    const-string/jumbo v2, "kill-all"

    .line 842
    .line 843
    .line 844
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 845
    .line 846
    .line 847
    move-result v2

    .line 848
    if-eqz v2, :cond_1

    .line 849
    .line 850
    const/16 v2, 0x23

    .line 851
    .line 852
    goto/16 :goto_1

    .line 853
    .line 854
    :sswitch_40
    const-string/jumbo v2, "clear-start-info"

    .line 855
    .line 856
    .line 857
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 858
    .line 859
    .line 860
    move-result v2

    .line 861
    if-eqz v2, :cond_1

    .line 862
    .line 863
    const/16 v2, 0x19

    .line 864
    .line 865
    goto/16 :goto_1

    .line 866
    .line 867
    :sswitch_41
    const-string/jumbo v2, "get-config"

    .line 868
    .line 869
    .line 870
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 871
    .line 872
    .line 873
    move-result v2

    .line 874
    if-eqz v2, :cond_1

    .line 875
    .line 876
    const/16 v2, 0x3a

    .line 877
    .line 878
    goto/16 :goto_1

    .line 879
    .line 880
    :sswitch_42
    const-string/jumbo v2, "set-standby-bucket"

    .line 881
    .line 882
    .line 883
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 884
    .line 885
    .line 886
    move-result v2

    .line 887
    if-eqz v2, :cond_1

    .line 888
    .line 889
    const/16 v2, 0x3e

    .line 890
    .line 891
    goto/16 :goto_1

    .line 892
    .line 893
    :sswitch_43
    const-string/jumbo v2, "get-current-user"

    .line 894
    .line 895
    .line 896
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 897
    .line 898
    .line 899
    move-result v2

    .line 900
    if-eqz v2, :cond_1

    .line 901
    .line 902
    const/16 v2, 0x31

    .line 903
    .line 904
    goto/16 :goto_1

    .line 905
    .line 906
    :sswitch_44
    const-string/jumbo v2, "to-uri"

    .line 907
    .line 908
    .line 909
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 910
    .line 911
    .line 912
    move-result v2

    .line 913
    if-eqz v2, :cond_1

    .line 914
    .line 915
    const/16 v2, 0x2d

    .line 916
    .line 917
    goto/16 :goto_1

    .line 918
    .line 919
    :sswitch_45
    const-string/jumbo v2, "set-bg-restriction-level"

    .line 920
    .line 921
    .line 922
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 923
    .line 924
    .line 925
    move-result v2

    .line 926
    if-eqz v2, :cond_1

    .line 927
    .line 928
    const/16 v2, 0x58

    .line 929
    .line 930
    goto/16 :goto_1

    .line 931
    .line 932
    :sswitch_46
    const-string/jumbo v2, "start-foreground-service"

    .line 933
    .line 934
    .line 935
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 936
    .line 937
    .line 938
    move-result v2

    .line 939
    if-eqz v2, :cond_1

    .line 940
    .line 941
    const/16 v2, 0x8

    .line 942
    .line 943
    goto/16 :goto_1

    .line 944
    .line 945
    :sswitch_47
    const-string/jumbo v2, "unlock-user"

    .line 946
    .line 947
    .line 948
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 949
    .line 950
    .line 951
    move-result v2

    .line 952
    if-eqz v2, :cond_1

    .line 953
    .line 954
    const/16 v2, 0x33

    .line 955
    .line 956
    goto/16 :goto_1

    .line 957
    .line 958
    :sswitch_48
    const-string/jumbo v2, "startfgservice"

    .line 959
    .line 960
    .line 961
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 962
    .line 963
    .line 964
    move-result v2

    .line 965
    if-eqz v2, :cond_1

    .line 966
    .line 967
    const/4 v2, 0x7

    .line 968
    goto/16 :goto_1

    .line 969
    .line 970
    :sswitch_49
    const-string/jumbo v2, "stopservice"

    .line 971
    .line 972
    .line 973
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 974
    .line 975
    .line 976
    move-result v2

    .line 977
    if-eqz v2, :cond_1

    .line 978
    .line 979
    const/16 v2, 0xa

    .line 980
    .line 981
    goto/16 :goto_1

    .line 982
    .line 983
    :sswitch_4a
    const-string/jumbo v2, "get-uid-state"

    .line 984
    .line 985
    .line 986
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 987
    .line 988
    .line 989
    move-result v2

    .line 990
    if-eqz v2, :cond_1

    .line 991
    .line 992
    const/16 v2, 0x39

    .line 993
    .line 994
    goto/16 :goto_1

    .line 995
    .line 996
    :sswitch_4b
    const-string/jumbo v2, "start-service"

    .line 997
    .line 998
    .line 999
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1000
    .line 1001
    .line 1002
    move-result v2

    .line 1003
    if-eqz v2, :cond_1

    .line 1004
    .line 1005
    const/4 v2, 0x5

    .line 1006
    goto/16 :goto_1

    .line 1007
    .line 1008
    :sswitch_4c
    const-string/jumbo v2, "set-foreground-service-delegate"

    .line 1009
    .line 1010
    .line 1011
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1012
    .line 1013
    .line 1014
    move-result v2

    .line 1015
    if-eqz v2, :cond_1

    .line 1016
    .line 1017
    const/16 v2, 0x5d

    .line 1018
    .line 1019
    goto/16 :goto_1

    .line 1020
    .line 1021
    :sswitch_4d
    const-string/jumbo v2, "freeze"

    .line 1022
    .line 1023
    .line 1024
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1025
    .line 1026
    .line 1027
    move-result v2

    .line 1028
    if-eqz v2, :cond_1

    .line 1029
    .line 1030
    const/16 v2, 0xe

    .line 1031
    .line 1032
    goto/16 :goto_1

    .line 1033
    .line 1034
    :sswitch_4e
    const-string/jumbo v2, "wait-for-broadcast-barrier"

    .line 1035
    .line 1036
    .line 1037
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1038
    .line 1039
    .line 1040
    move-result v2

    .line 1041
    if-eqz v2, :cond_1

    .line 1042
    .line 1043
    const/16 v2, 0x4b

    .line 1044
    .line 1045
    goto/16 :goto_1

    .line 1046
    .line 1047
    :sswitch_4f
    const-string/jumbo v2, "send-trim-memory"

    .line 1048
    .line 1049
    .line 1050
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1051
    .line 1052
    .line 1053
    move-result v2

    .line 1054
    if-eqz v2, :cond_1

    .line 1055
    .line 1056
    const/16 v2, 0x40

    .line 1057
    .line 1058
    goto/16 :goto_1

    .line 1059
    .line 1060
    :sswitch_50
    const-string/jumbo v2, "suppress-resize-config-changes"

    .line 1061
    .line 1062
    .line 1063
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1064
    .line 1065
    .line 1066
    move-result v2

    .line 1067
    if-eqz v2, :cond_1

    .line 1068
    .line 1069
    const/16 v2, 0x3b

    .line 1070
    .line 1071
    goto/16 :goto_1

    .line 1072
    .line 1073
    :sswitch_51
    const-string/jumbo v2, "compat"

    .line 1074
    .line 1075
    .line 1076
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1077
    .line 1078
    .line 1079
    move-result v2

    .line 1080
    if-eqz v2, :cond_1

    .line 1081
    .line 1082
    const/16 v2, 0x50

    .line 1083
    .line 1084
    goto/16 :goto_1

    .line 1085
    .line 1086
    :sswitch_52
    const-string/jumbo v2, "reset-dropbox-rate-limiter"

    .line 1087
    .line 1088
    .line 1089
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1090
    .line 1091
    .line 1092
    move-result v2

    .line 1093
    if-eqz v2, :cond_1

    .line 1094
    .line 1095
    const/16 v2, 0x5b

    .line 1096
    .line 1097
    goto/16 :goto_1

    .line 1098
    .line 1099
    :sswitch_53
    const-string/jumbo v2, "capabilities"

    .line 1100
    .line 1101
    .line 1102
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1103
    .line 1104
    .line 1105
    move-result v2

    .line 1106
    if-eqz v2, :cond_1

    .line 1107
    .line 1108
    const/16 v2, 0x5e

    .line 1109
    .line 1110
    goto/16 :goto_1

    .line 1111
    .line 1112
    :sswitch_54
    const-string/jumbo v2, "start-info-detailed-monitoring"

    .line 1113
    .line 1114
    .line 1115
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1116
    .line 1117
    .line 1118
    move-result v2

    .line 1119
    if-eqz v2, :cond_1

    .line 1120
    .line 1121
    const/16 v2, 0x1a

    .line 1122
    .line 1123
    goto/16 :goto_1

    .line 1124
    .line 1125
    :sswitch_55
    const-string/jumbo v2, "list-displays-for-starting-users"

    .line 1126
    .line 1127
    .line 1128
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1129
    .line 1130
    .line 1131
    move-result v2

    .line 1132
    if-eqz v2, :cond_1

    .line 1133
    .line 1134
    const/16 v2, 0x5c

    .line 1135
    .line 1136
    goto/16 :goto_1

    .line 1137
    .line 1138
    :sswitch_56
    const-string/jumbo v2, "broadcast"

    .line 1139
    .line 1140
    .line 1141
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1142
    .line 1143
    .line 1144
    move-result v2

    .line 1145
    if-eqz v2, :cond_1

    .line 1146
    .line 1147
    const/16 v2, 0xc

    .line 1148
    .line 1149
    goto :goto_1

    .line 1150
    :sswitch_57
    const-string/jumbo v2, "start-user"

    .line 1151
    .line 1152
    .line 1153
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1154
    .line 1155
    .line 1156
    move-result v2

    .line 1157
    if-eqz v2, :cond_1

    .line 1158
    .line 1159
    const/16 v2, 0x32

    .line 1160
    .line 1161
    goto :goto_1

    .line 1162
    :sswitch_58
    const-string/jumbo v2, "get-standby-bucket"

    .line 1163
    .line 1164
    .line 1165
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1166
    .line 1167
    .line 1168
    move-result v2

    .line 1169
    if-eqz v2, :cond_1

    .line 1170
    .line 1171
    const/16 v2, 0x3f

    .line 1172
    .line 1173
    goto :goto_1

    .line 1174
    :sswitch_59
    const-string/jumbo v2, "package-importance"

    .line 1175
    .line 1176
    .line 1177
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1178
    .line 1179
    .line 1180
    move-result v2

    .line 1181
    if-eqz v2, :cond_1

    .line 1182
    .line 1183
    const/16 v2, 0x2c

    .line 1184
    .line 1185
    goto :goto_1

    .line 1186
    :sswitch_5a
    const-string/jumbo v2, "get-inactive"

    .line 1187
    .line 1188
    .line 1189
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1190
    .line 1191
    .line 1192
    move-result v2

    .line 1193
    if-eqz v2, :cond_1

    .line 1194
    .line 1195
    const/16 v2, 0x3d

    .line 1196
    .line 1197
    goto :goto_1

    .line 1198
    :sswitch_5b
    const-string/jumbo v2, "get-isolated-pids"

    .line 1199
    .line 1200
    .line 1201
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1202
    .line 1203
    .line 1204
    move-result v2

    .line 1205
    if-eqz v2, :cond_1

    .line 1206
    .line 1207
    const/16 v2, 0x54

    .line 1208
    .line 1209
    goto :goto_1

    .line 1210
    :sswitch_5c
    const-string/jumbo v2, "set-deterministic-uid-idle"

    .line 1211
    .line 1212
    .line 1213
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1214
    .line 1215
    .line 1216
    move-result v2

    .line 1217
    if-eqz v2, :cond_1

    .line 1218
    .line 1219
    const/16 v2, 0x25

    .line 1220
    .line 1221
    goto :goto_1

    .line 1222
    :sswitch_5d
    const-string/jumbo v2, "set-debug-app"

    .line 1223
    .line 1224
    .line 1225
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1226
    .line 1227
    .line 1228
    move-result v2

    .line 1229
    if-eqz v2, :cond_1

    .line 1230
    .line 1231
    const/16 v2, 0x14

    .line 1232
    .line 1233
    goto :goto_1

    .line 1234
    :sswitch_5e
    const-string/jumbo v2, "dumpheap"

    .line 1235
    .line 1236
    .line 1237
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1238
    .line 1239
    .line 1240
    move-result v2

    .line 1241
    if-eqz v2, :cond_1

    .line 1242
    .line 1243
    const/16 v2, 0x13

    .line 1244
    .line 1245
    goto :goto_1

    .line 1246
    :cond_1
    :goto_0
    move v2, v1

    .line 1247
    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 1248
    .line 1249
    .line 1250
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 1251
    .line 1252
    .line 1253
    move-result p0

    .line 1254
    return p0

    .line 1255
    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runCapabilities(Ljava/io/PrintWriter;)I

    .line 1256
    .line 1257
    .line 1258
    move-result p0

    .line 1259
    return p0

    .line 1260
    :pswitch_1
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSetForegroundServiceDelegate(Ljava/io/PrintWriter;)I

    .line 1261
    .line 1262
    .line 1263
    move-result p0

    .line 1264
    return p0

    .line 1265
    :pswitch_2
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Lcom/android/server/am/ActivityManagerService;

    .line 1266
    .line 1267
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->getDisplayIdsForStartingVisibleBackgroundUsers()[I

    .line 1268
    .line 1269
    .line 1270
    move-result-object p0

    .line 1271
    if-eqz p0, :cond_3

    .line 1272
    .line 1273
    array-length p1, p0

    .line 1274
    if-nez p1, :cond_2

    .line 1275
    .line 1276
    goto :goto_2

    .line 1277
    :cond_2
    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 1278
    .line 1279
    .line 1280
    move-result-object p0

    .line 1281
    goto :goto_3

    .line 1282
    :cond_3
    :goto_2
    const-string/jumbo p0, "none"

    .line 1283
    .line 1284
    .line 1285
    :goto_3
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1286
    .line 1287
    .line 1288
    return v6

    .line 1289
    :pswitch_3
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    .line 1290
    .line 1291
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mDropboxRateLimiter:Lcom/android/server/am/DropboxRateLimiter;

    .line 1292
    .line 1293
    invoke-virtual {p0}, Lcom/android/server/am/DropboxRateLimiter;->reset()V

    .line 1294
    .line 1295
    .line 1296
    invoke-static {}, Lcom/android/server/BootReceiver;->resetDropboxRateLimiter()V

    .line 1297
    .line 1298
    .line 1299
    return v6

    .line 1300
    :pswitch_4
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    .line 1301
    .line 1302
    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->runGetCurrentForegroundProcess(Ljava/io/PrintWriter;Landroid/app/IActivityManager;)V

    .line 1303
    .line 1304
    .line 1305
    return v6

    .line 1306
    :pswitch_5
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runGetBgRestrictionLevel(Ljava/io/PrintWriter;)I

    .line 1307
    .line 1308
    .line 1309
    move-result p0

    .line 1310
    return p0

    .line 1311
    :pswitch_6
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSetBgRestrictionLevel(Ljava/io/PrintWriter;)I

    .line 1312
    .line 1313
    .line 1314
    move-result p0

    .line 1315
    return p0

    .line 1316
    :pswitch_7
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    .line 1317
    .line 1318
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    .line 1319
    .line 1320
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mBgRestrictionExemptioFromSysConfig:Landroid/util/ArraySet;

    .line 1321
    .line 1322
    if-eqz p0, :cond_5

    .line 1323
    .line 1324
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    .line 1325
    .line 1326
    .line 1327
    move-result p1

    .line 1328
    move v2, v6

    .line 1329
    :goto_4
    if-ge v2, p1, :cond_4

    .line 1330
    .line 1331
    invoke-virtual {p0, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 1332
    .line 1333
    .line 1334
    move-result-object v3

    .line 1335
    check-cast v3, Ljava/lang/String;

    .line 1336
    .line 1337
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1338
    .line 1339
    .line 1340
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 1341
    .line 1342
    .line 1343
    add-int/lit8 v2, v2, 0x1

    .line 1344
    .line 1345
    goto :goto_4

    .line 1346
    :cond_4
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 1347
    .line 1348
    .line 1349
    :cond_5
    return v6

    .line 1350
    :pswitch_8
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSetBgAbusiveUids()I

    .line 1351
    .line 1352
    .line 1353
    move-result p0

    .line 1354
    return p0

    .line 1355
    :pswitch_9
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSetStopUserOnSwitch(Ljava/io/PrintWriter;)V

    .line 1356
    .line 1357
    .line 1358
    return v6

    .line 1359
    :pswitch_a
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runGetIsolatedProcesses(Ljava/io/PrintWriter;)V

    .line 1360
    .line 1361
    .line 1362
    return v6

    .line 1363
    :pswitch_b
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runServiceRestartBackoff(Ljava/io/PrintWriter;)I

    .line 1364
    .line 1365
    .line 1366
    move-result p0

    .line 1367
    return p0

    .line 1368
    :pswitch_c
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runMemoryFactor(Ljava/io/PrintWriter;)I

    .line 1369
    .line 1370
    .line 1371
    move-result p0

    .line 1372
    return p0

    .line 1373
    :pswitch_d
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    .line 1374
    .line 1375
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mCoreSettingsObserver:Lcom/android/server/am/CoreSettingsObserver;

    .line 1376
    .line 1377
    invoke-virtual {p0, v3}, Lcom/android/server/am/CoreSettingsObserver;->onChange(Z)V

    .line 1378
    .line 1379
    .line 1380
    return v6

    .line 1381
    :pswitch_e
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runCompat(Ljava/io/PrintWriter;)I

    .line 1382
    .line 1383
    .line 1384
    move-result p0

    .line 1385
    return p0

    .line 1386
    :pswitch_f
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1387
    .line 1388
    .line 1389
    move-result-object p1

    .line 1390
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    .line 1391
    .line 1392
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1393
    .line 1394
    .line 1395
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1396
    .line 1397
    .line 1398
    const-string v2, "android.permission.DUMP"

    .line 1399
    .line 1400
    const-string/jumbo v3, "waitForBroadcastBarrier()"

    .line 1401
    .line 1402
    .line 1403
    invoke-virtual {p0, v2, v3}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1404
    .line 1405
    .line 1406
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService;->mDeliveryGroupPolicyIgnoredActions:Landroid/util/ArraySet;

    .line 1407
    .line 1408
    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1409
    :try_start_1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mDeliveryGroupPolicyIgnoredActions:Landroid/util/ArraySet;

    .line 1410
    .line 1411
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1412
    .line 1413
    .line 1414
    monitor-exit v2

    .line 1415
    return v6

    .line 1416
    :catchall_0
    move-exception p0

    .line 1417
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1418
    :try_start_2
    throw p0

    .line 1419
    :pswitch_10
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1420
    .line 1421
    .line 1422
    move-result-object p1

    .line 1423
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    .line 1424
    .line 1425
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1426
    .line 1427
    .line 1428
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1429
    .line 1430
    .line 1431
    const-string v2, "android.permission.DUMP"

    .line 1432
    .line 1433
    const-string/jumbo v3, "waitForBroadcastBarrier()"

    .line 1434
    .line 1435
    .line 1436
    invoke-virtual {p0, v2, v3}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1437
    .line 1438
    .line 1439
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService;->mDeliveryGroupPolicyIgnoredActions:Landroid/util/ArraySet;

    .line 1440
    .line 1441
    monitor-enter v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1442
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mDeliveryGroupPolicyIgnoredActions:Landroid/util/ArraySet;

    .line 1443
    .line 1444
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1445
    .line 1446
    .line 1447
    monitor-exit v2

    .line 1448
    return v6

    .line 1449
    :catchall_1
    move-exception p0

    .line 1450
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1451
    :try_start_4
    throw p0

    .line 1452
    :pswitch_11
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runWaitForBroadcastDispatch(Ljava/io/PrintWriter;)V

    .line 1453
    .line 1454
    .line 1455
    return v6

    .line 1456
    :pswitch_12
    new-instance p1, Ljava/io/PrintWriter;

    .line 1457
    .line 1458
    new-instance v2, Landroid/util/TeeWriter;

    .line 1459
    .line 1460
    const/4 v3, 0x2

    .line 1461
    new-array v3, v3, [Ljava/io/Writer;

    .line 1462
    .line 1463
    sget-object v4, Lcom/android/server/am/ActivityManagerDebugConfig;->LOG_WRITER_INFO:Ljava/io/PrintWriter;

    .line 1464
    .line 1465
    const/4 v5, 0x0

    .line 1466
    aput-object v4, v3, v5

    .line 1467
    .line 1468
    const/4 v4, 0x1

    .line 1469
    aput-object v0, v3, v4

    .line 1470
    .line 1471
    invoke-direct {v2, v3}, Landroid/util/TeeWriter;-><init>([Ljava/io/Writer;)V

    .line 1472
    .line 1473
    .line 1474
    invoke-direct {p1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 1475
    .line 1476
    .line 1477
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    .line 1478
    .line 1479
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService;->waitForApplicationBarrier(Ljava/io/PrintWriter;)V

    .line 1480
    .line 1481
    .line 1482
    return v6

    .line 1483
    :pswitch_13
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runWaitForBroadcastBarrier(Ljava/io/PrintWriter;)I

    .line 1484
    .line 1485
    .line 1486
    move-result p0

    .line 1487
    return p0

    .line 1488
    :pswitch_14
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runWaitForBroadcastIdle(Ljava/io/PrintWriter;)I

    .line 1489
    .line 1490
    .line 1491
    move-result p0

    .line 1492
    return p0

    .line 1493
    :pswitch_15
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->getResources(Ljava/io/PrintWriter;)Landroid/content/res/Resources;

    .line 1494
    .line 1495
    .line 1496
    move-result-object p0

    .line 1497
    if-nez p0, :cond_6

    .line 1498
    .line 1499
    const/4 p0, -0x1

    .line 1500
    goto :goto_5

    .line 1501
    :cond_6
    const p1, 0x11101ef

    .line 1502
    .line 1503
    .line 1504
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 1505
    .line 1506
    .line 1507
    move-result p0

    .line 1508
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1509
    .line 1510
    .line 1511
    const/4 p0, 0x0

    .line 1512
    :goto_5
    return p0

    .line 1513
    :pswitch_16
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runUpdateApplicationInfo(Ljava/io/PrintWriter;)V

    .line 1514
    .line 1515
    .line 1516
    return v6

    .line 1517
    :pswitch_17
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->getResources(Ljava/io/PrintWriter;)Landroid/content/res/Resources;

    .line 1518
    .line 1519
    .line 1520
    move-result-object p1

    .line 1521
    if-nez p1, :cond_7

    .line 1522
    .line 1523
    const/4 p0, -0x1

    .line 1524
    goto :goto_6

    .line 1525
    :cond_7
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    .line 1526
    .line 1527
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 1528
    .line 1529
    invoke-static {p0}, Landroid/app/ActivityTaskManager;->supportsSplitScreenMultiWindow(Landroid/content/Context;)Z

    .line 1530
    .line 1531
    .line 1532
    move-result p0

    .line 1533
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1534
    .line 1535
    .line 1536
    const/4 p0, 0x0

    .line 1537
    :goto_6
    return p0

    .line 1538
    :pswitch_18
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSupportsMultiwindow(Ljava/io/PrintWriter;)I

    .line 1539
    .line 1540
    .line 1541
    move-result p0

    .line 1542
    return p0

    .line 1543
    :pswitch_19
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runAttachAgent(Ljava/io/PrintWriter;)I

    .line 1544
    .line 1545
    .line 1546
    move-result p0

    .line 1547
    return p0

    .line 1548
    :pswitch_1a
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runWrite(Ljava/io/PrintWriter;)V

    .line 1549
    .line 1550
    .line 1551
    return v6

    .line 1552
    :pswitch_1b
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runTask(Ljava/io/PrintWriter;)I

    .line 1553
    .line 1554
    .line 1555
    move-result p0

    .line 1556
    return p0

    .line 1557
    :pswitch_1c
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runStack(Ljava/io/PrintWriter;)I

    .line 1558
    .line 1559
    .line 1560
    move-result p0

    .line 1561
    return p0

    .line 1562
    :pswitch_1d
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->runDisplay()I

    .line 1563
    .line 1564
    .line 1565
    move-result p0

    .line 1566
    return p0

    .line 1567
    :pswitch_1e
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSendTrimMemory()I

    .line 1568
    .line 1569
    .line 1570
    move-result p0

    .line 1571
    return p0

    .line 1572
    :pswitch_1f
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runGetStandbyBucket(Ljava/io/PrintWriter;)I

    .line 1573
    .line 1574
    .line 1575
    move-result p0

    .line 1576
    return p0

    .line 1577
    :pswitch_20
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSetStandbyBucket()I

    .line 1578
    .line 1579
    .line 1580
    move-result p0

    .line 1581
    return p0

    .line 1582
    :pswitch_21
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runGetInactive(Ljava/io/PrintWriter;)I

    .line 1583
    .line 1584
    .line 1585
    move-result p0

    .line 1586
    return p0

    .line 1587
    :pswitch_22
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSetInactive()I

    .line 1588
    .line 1589
    .line 1590
    move-result p0

    .line 1591
    return p0

    .line 1592
    :pswitch_23
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1593
    .line 1594
    .line 1595
    move-result-object p1

    .line 1596
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 1597
    .line 1598
    .line 1599
    move-result-object p1

    .line 1600
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1601
    .line 1602
    .line 1603
    move-result p1

    .line 1604
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1605
    .line 1606
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->suppressResizeConfigChanges(Z)V

    .line 1607
    .line 1608
    .line 1609
    return v6

    .line 1610
    :pswitch_24
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runGetConfig(Ljava/io/PrintWriter;)I

    .line 1611
    .line 1612
    .line 1613
    move-result p0

    .line 1614
    return p0

    .line 1615
    :pswitch_25
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->getUidState(Ljava/io/PrintWriter;)V

    .line 1616
    .line 1617
    .line 1618
    return v6

    .line 1619
    :pswitch_26
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runUntrackAssociations(Ljava/io/PrintWriter;)V

    .line 1620
    .line 1621
    .line 1622
    return v6

    .line 1623
    :pswitch_27
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runTrackAssociations(Ljava/io/PrintWriter;)V

    .line 1624
    .line 1625
    .line 1626
    return v6

    .line 1627
    :pswitch_28
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runGetStartedUserState(Ljava/io/PrintWriter;)V

    .line 1628
    .line 1629
    .line 1630
    return v6

    .line 1631
    :pswitch_29
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runIsUserStopped(Ljava/io/PrintWriter;)V

    .line 1632
    .line 1633
    .line 1634
    return v6

    .line 1635
    :pswitch_2a
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->runStopUser()I

    .line 1636
    .line 1637
    .line 1638
    move-result p0

    .line 1639
    return p0

    .line 1640
    :pswitch_2b
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runUnlockUser(Ljava/io/PrintWriter;)I

    .line 1641
    .line 1642
    .line 1643
    move-result p0

    .line 1644
    return p0

    .line 1645
    :pswitch_2c
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runStartUser(Ljava/io/PrintWriter;)I

    .line 1646
    .line 1647
    .line 1648
    move-result p0

    .line 1649
    return p0

    .line 1650
    :pswitch_2d
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runGetCurrentUser(Ljava/io/PrintWriter;)V

    .line 1651
    .line 1652
    .line 1653
    return v6

    .line 1654
    :pswitch_2e
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSwitchUser(Ljava/io/PrintWriter;)I

    .line 1655
    .line 1656
    .line 1657
    move-result p0

    .line 1658
    return p0

    .line 1659
    :pswitch_2f
    invoke-virtual {p0, v5, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runToUri(ILjava/io/PrintWriter;)V

    .line 1660
    .line 1661
    .line 1662
    return v6

    .line 1663
    :pswitch_30
    invoke-virtual {p0, v3, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runToUri(ILjava/io/PrintWriter;)V

    .line 1664
    .line 1665
    .line 1666
    return v6

    .line 1667
    :pswitch_31
    invoke-virtual {p0, v6, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runToUri(ILjava/io/PrintWriter;)V

    .line 1668
    .line 1669
    .line 1670
    return v6

    .line 1671
    :pswitch_32
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runPackageImportance(Ljava/io/PrintWriter;)V

    .line 1672
    .line 1673
    .line 1674
    return v6

    .line 1675
    :pswitch_33
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->runScreenCompat()I

    .line 1676
    .line 1677
    .line 1678
    move-result p0

    .line 1679
    return p0

    .line 1680
    :pswitch_34
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runIdleMaintenance(Ljava/io/PrintWriter;)I

    .line 1681
    .line 1682
    .line 1683
    move-result p0

    .line 1684
    return p0

    .line 1685
    :pswitch_35
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runRestart(Ljava/io/PrintWriter;)I

    .line 1686
    .line 1687
    .line 1688
    move-result p0

    .line 1689
    return p0

    .line 1690
    :pswitch_36
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runHang(Ljava/io/PrintWriter;)I

    .line 1691
    .line 1692
    .line 1693
    move-result p0

    .line 1694
    return p0

    .line 1695
    :pswitch_37
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runWatchUids(Ljava/io/PrintWriter;)I

    .line 1696
    .line 1697
    .line 1698
    move-result p0

    .line 1699
    return p0

    .line 1700
    :pswitch_38
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runMonitor(Ljava/io/PrintWriter;)I

    .line 1701
    .line 1702
    .line 1703
    move-result p0

    .line 1704
    return p0

    .line 1705
    :pswitch_39
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSetDeterministicUidIdle()I

    .line 1706
    .line 1707
    .line 1708
    move-result p0

    .line 1709
    return p0

    .line 1710
    :pswitch_3a
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->runMakeIdle()I

    .line 1711
    .line 1712
    .line 1713
    move-result p0

    .line 1714
    return p0

    .line 1715
    :pswitch_3b
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Lcom/android/server/am/ActivityManagerService;

    .line 1716
    .line 1717
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->killAllBackgroundProcesses()V

    .line 1718
    .line 1719
    .line 1720
    return v6

    .line 1721
    :pswitch_3c
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->runKill()I

    .line 1722
    .line 1723
    .line 1724
    move-result p0

    .line 1725
    return p0

    .line 1726
    :pswitch_3d
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->runCrash()I

    .line 1727
    .line 1728
    .line 1729
    move-result p0

    .line 1730
    return p0

    .line 1731
    :pswitch_3e
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->runFgsNotificationRateLimit()V

    .line 1732
    .line 1733
    .line 1734
    return v6

    .line 1735
    :pswitch_3f
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->runClearRecentApps()V

    .line 1736
    .line 1737
    .line 1738
    return v6

    .line 1739
    :pswitch_40
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->runStopApp()I

    .line 1740
    .line 1741
    .line 1742
    move-result p0

    .line 1743
    return p0

    .line 1744
    :pswitch_41
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->runForceStop()I

    .line 1745
    .line 1746
    .line 1747
    move-result p0

    .line 1748
    return p0

    .line 1749
    :pswitch_42
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runBugReport(Ljava/io/PrintWriter;)I

    .line 1750
    .line 1751
    .line 1752
    move-result p0

    .line 1753
    return p0

    .line 1754
    :pswitch_43
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->runClearExitInfo()I

    .line 1755
    .line 1756
    .line 1757
    move-result p0

    .line 1758
    return p0

    .line 1759
    :pswitch_44
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runStartInfoDetailedMonitoring(Ljava/io/PrintWriter;)I

    .line 1760
    .line 1761
    .line 1762
    move-result p0

    .line 1763
    return p0

    .line 1764
    :pswitch_45
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->runClearStartInfo()I

    .line 1765
    .line 1766
    .line 1767
    move-result p0

    .line 1768
    return p0

    .line 1769
    :pswitch_46
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->runClearWatchHeap()V

    .line 1770
    .line 1771
    .line 1772
    return v6

    .line 1773
    :pswitch_47
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSetWatchHeap()V

    .line 1774
    .line 1775
    .line 1776
    return v6

    .line 1777
    :pswitch_48
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->runClearDebugApp()V

    .line 1778
    .line 1779
    .line 1780
    return v6

    .line 1781
    :pswitch_49
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSetAgentApp()V

    .line 1782
    .line 1783
    .line 1784
    return v6

    .line 1785
    :pswitch_4a
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSetDebugApp()I

    .line 1786
    .line 1787
    .line 1788
    move-result p0

    .line 1789
    return p0

    .line 1790
    :pswitch_4b
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runDumpHeap(Ljava/io/PrintWriter;)I

    .line 1791
    .line 1792
    .line 1793
    move-result p0

    .line 1794
    return p0

    .line 1795
    :pswitch_4c
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->runProfile()I

    .line 1796
    .line 1797
    .line 1798
    move-result p0

    .line 1799
    return p0

    .line 1800
    :pswitch_4d
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runTraceIpc(Ljava/io/PrintWriter;)I

    .line 1801
    .line 1802
    .line 1803
    move-result p0

    .line 1804
    return p0

    .line 1805
    :pswitch_4e
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 1806
    .line 1807
    .line 1808
    move-result-object p0

    .line 1809
    const-string p1, "Error: must be invoked through \'am instrument\'."

    .line 1810
    .line 1811
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1812
    .line 1813
    .line 1814
    return v1

    .line 1815
    :pswitch_4f
    invoke-virtual {p0, v0, v6}, Lcom/android/server/am/ActivityManagerShellCommand;->runFreeze(Ljava/io/PrintWriter;Z)I

    .line 1816
    .line 1817
    .line 1818
    move-result p0

    .line 1819
    return p0

    .line 1820
    :pswitch_50
    invoke-virtual {p0, v0, v3}, Lcom/android/server/am/ActivityManagerShellCommand;->runFreeze(Ljava/io/PrintWriter;Z)I

    .line 1821
    .line 1822
    .line 1823
    move-result p0

    .line 1824
    return p0

    .line 1825
    :pswitch_51
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runCompact(Ljava/io/PrintWriter;)I

    .line 1826
    .line 1827
    .line 1828
    move-result p0

    .line 1829
    return p0

    .line 1830
    :pswitch_52
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSendBroadcast(Ljava/io/PrintWriter;)V

    .line 1831
    .line 1832
    .line 1833
    return v6

    .line 1834
    :pswitch_53
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runStopService(Ljava/io/PrintWriter;)I

    .line 1835
    .line 1836
    .line 1837
    move-result p0

    .line 1838
    return p0

    .line 1839
    :pswitch_54
    invoke-virtual {p0, v0, v3}, Lcom/android/server/am/ActivityManagerShellCommand;->runStartService(Ljava/io/PrintWriter;Z)I

    .line 1840
    .line 1841
    .line 1842
    move-result p0

    .line 1843
    return p0

    .line 1844
    :pswitch_55
    invoke-virtual {p0, v0, v6}, Lcom/android/server/am/ActivityManagerShellCommand;->runStartService(Ljava/io/PrintWriter;Z)I

    .line 1845
    .line 1846
    .line 1847
    move-result p0

    .line 1848
    return p0

    .line 1849
    :pswitch_56
    new-instance p1, Lcom/android/server/am/ActivityManagerShellCommand$ProgressWaiter;

    .line 1850
    .line 1851
    invoke-direct {p1, v6}, Lcom/android/server/am/ActivityManagerShellCommand$ProgressWaiter;-><init>(I)V

    .line 1852
    .line 1853
    .line 1854
    filled-new-array {v1}, [I

    .line 1855
    .line 1856
    .line 1857
    move-result-object v2

    .line 1858
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    .line 1859
    .line 1860
    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 1861
    .line 1862
    new-instance v4, Lcom/android/server/am/ActivityManagerShellCommand$$ExternalSyntheticLambda0;

    .line 1863
    .line 1864
    invoke-direct {v4, p0, v2, v0, p1}, Lcom/android/server/am/ActivityManagerShellCommand$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/ActivityManagerShellCommand;[ILjava/io/PrintWriter;Lcom/android/server/am/ActivityManagerShellCommand$ProgressWaiter;)V

    .line 1865
    .line 1866
    .line 1867
    const-wide/32 v7, 0xea60

    .line 1868
    .line 1869
    .line 1870
    invoke-virtual {v3, v4, v7, v8}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1871
    .line 1872
    .line 1873
    :try_start_5
    iget-object p0, p1, Lcom/android/server/am/ActivityManagerShellCommand$ProgressWaiter;->mFinishedLatch:Ljava/util/concurrent/CountDownLatch;

    .line 1874
    .line 1875
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1876
    .line 1877
    const-wide/32 v3, 0x1d4c0

    .line 1878
    .line 1879
    .line 1880
    invoke-virtual {p0, v3, v4, p1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    .line 1881
    .line 1882
    .line 1883
    goto :goto_7

    .line 1884
    :catch_1
    :try_start_6
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 1885
    .line 1886
    const-string p1, "Thread interrupted unexpectedly."

    .line 1887
    .line 1888
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1889
    .line 1890
    .line 1891
    :goto_7
    aget p0, v2, v6

    .line 1892
    .line 1893
    return p0

    .line 1894
    :pswitch_57
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->BAIDU_CARLIFE:Z

    .line 1895
    .line 1896
    if-eqz p1, :cond_8

    .line 1897
    .line 1898
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runStartActivityForCarlife(Ljava/io/PrintWriter;)I

    .line 1899
    .line 1900
    .line 1901
    move-result p0

    .line 1902
    return p0

    .line 1903
    :cond_8
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runStartActivity(Ljava/io/PrintWriter;)I

    .line 1904
    .line 1905
    .line 1906
    move-result p0

    .line 1907
    return p0

    .line 1908
    :pswitch_58
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->onHelp()V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    .line 1909
    .line 1910
    .line 1911
    return v6

    .line 1912
    :goto_8
    const-string p1, "Remote exception: "

    .line 1913
    .line 1914
    invoke-static {p1, p0, v0}, Lcom/android/server/UiModeManagerService$13$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/io/PrintWriter;)V

    .line 1915
    .line 1916
    .line 1917
    return v1

    .line 1918
    nop

    .line 1919
    :sswitch_data_0
    .sparse-switch
        -0x7e761220 -> :sswitch_5e
        -0x7566d004 -> :sswitch_5d
        -0x6f2553a9 -> :sswitch_5c
        -0x6ee359bb -> :sswitch_5b
        -0x6684cefe -> :sswitch_5a
        -0x65f435a5 -> :sswitch_59
        -0x6366a39f -> :sswitch_58
        -0x608449aa -> :sswitch_57
        -0x607e173f -> :sswitch_56
        -0x5a4c3594 -> :sswitch_55
        -0x595e0b0f -> :sswitch_54
        -0x58aaf04a -> :sswitch_53
        -0x57a97ed6 -> :sswitch_52
        -0x50c0cc7e -> :sswitch_51
        -0x4ef4b7a7 -> :sswitch_50
        -0x4db101b9 -> :sswitch_4f
        -0x4c012bb1 -> :sswitch_4e
        -0x4b7bc569 -> :sswitch_4d
        -0x46763e04 -> :sswitch_4c
        -0x436e13b6 -> :sswitch_4b
        -0x3bc220e3 -> :sswitch_4a
        -0x3988e78d -> :sswitch_49
        -0x376fe74e -> :sswitch_48
        -0x3619e74c -> :sswitch_47
        -0x3530e48a -> :sswitch_46
        -0x345cc4ba -> :sswitch_45
        -0x33db6ce6 -> :sswitch_44
        -0x30697b4a -> :sswitch_43
        -0x2c900a2b -> :sswitch_42
        -0x29b36e67 -> :sswitch_41
        -0x271b1d47 -> :sswitch_40
        -0x2420b54e -> :sswitch_3f
        -0x20b34e72 -> :sswitch_3e
        -0x204d57ca -> :sswitch_3d
        -0x1a75f64b -> :sswitch_3c
        -0x171366ac -> :sswitch_3b
        -0x16a4cd90 -> :sswitch_3a
        -0x152733fd -> :sswitch_39
        -0x12717657 -> :sswitch_38
        -0xd7815ae -> :sswitch_37
        -0xa310e8a -> :sswitch_36
        -0x8efed14 -> :sswitch_35
        -0x8b4339f -> :sswitch_34
        -0x83a5383 -> :sswitch_33
        -0x5ffb810 -> :sswitch_32
        -0x46f772e -> :sswitch_31
        -0x1a6e7d0 -> :sswitch_30
        0x30c072 -> :sswitch_2f
        0x30cf41 -> :sswitch_2e
        0x323b5e -> :sswitch_2d
        0x363585 -> :sswitch_2c
        0x547b9a4 -> :sswitch_2b
        0x5a863a7 -> :sswitch_2a
        0x68ac288 -> :sswitch_29
        0x68ac462 -> :sswitch_28
        0x6c257df -> :sswitch_27
        0x80c339b -> :sswitch_26
        0xb07b013 -> :sswitch_25
        0xe24026e -> :sswitch_24
        0x20c2801a -> :sswitch_23
        0x251993ad -> :sswitch_22
        0x276818de -> :sswitch_21
        0x27c1d6ad -> :sswitch_20
        0x2894b589 -> :sswitch_1f
        0x2b19d394 -> :sswitch_1e
        0x2d3e6e74 -> :sswitch_1d
        0x2d9208a0 -> :sswitch_1c
        0x2ea76694 -> :sswitch_1b
        0x302bd54d -> :sswitch_1a
        0x304b5275 -> :sswitch_19
        0x30b487aa -> :sswitch_18
        0x310633ae -> :sswitch_17
        0x327f473e -> :sswitch_16
        0x35abdbf4 -> :sswitch_15
        0x38a73b23 -> :sswitch_14
        0x3d13bd7d -> :sswitch_13
        0x3fd31549 -> :sswitch_12
        0x404a0027 -> :sswitch_11
        0x416a9e0f -> :sswitch_10
        0x434f294b -> :sswitch_f
        0x446526e2 -> :sswitch_e
        0x465c428a -> :sswitch_d
        0x48b444b2 -> :sswitch_c
        0x49b0bd5a -> :sswitch_b
        0x532d63e7 -> :sswitch_a
        0x5e69b6b6 -> :sswitch_9
        0x607e963c -> :sswitch_8
        0x63a518c2 -> :sswitch_7
        0x662425d6 -> :sswitch_6
        0x696c1ea0 -> :sswitch_5
        0x6e6f530e -> :sswitch_4
        0x6ef5269a -> :sswitch_3
        0x6f0f8fea -> :sswitch_2
        0x790e2324 -> :sswitch_1
        0x7c2bb6c4 -> :sswitch_0
    .end sparse-switch

    .line 1920
    .line 1921
    .line 1922
    .line 1923
    .line 1924
    .line 1925
    .line 1926
    .line 1927
    .line 1928
    .line 1929
    .line 1930
    .line 1931
    .line 1932
    .line 1933
    .line 1934
    .line 1935
    .line 1936
    .line 1937
    .line 1938
    .line 1939
    .line 1940
    .line 1941
    .line 1942
    .line 1943
    .line 1944
    .line 1945
    .line 1946
    .line 1947
    .line 1948
    .line 1949
    .line 1950
    .line 1951
    .line 1952
    .line 1953
    .line 1954
    .line 1955
    .line 1956
    .line 1957
    .line 1958
    .line 1959
    .line 1960
    .line 1961
    .line 1962
    .line 1963
    .line 1964
    .line 1965
    .line 1966
    .line 1967
    .line 1968
    .line 1969
    .line 1970
    .line 1971
    .line 1972
    .line 1973
    .line 1974
    .line 1975
    .line 1976
    .line 1977
    .line 1978
    .line 1979
    .line 1980
    .line 1981
    .line 1982
    .line 1983
    .line 1984
    .line 1985
    .line 1986
    .line 1987
    .line 1988
    .line 1989
    .line 1990
    .line 1991
    .line 1992
    .line 1993
    .line 1994
    .line 1995
    .line 1996
    .line 1997
    .line 1998
    .line 1999
    .line 2000
    .line 2001
    .line 2002
    .line 2003
    .line 2004
    .line 2005
    .line 2006
    .line 2007
    .line 2008
    .line 2009
    .line 2010
    .line 2011
    .line 2012
    .line 2013
    .line 2014
    .line 2015
    .line 2016
    .line 2017
    .line 2018
    .line 2019
    .line 2020
    .line 2021
    .line 2022
    .line 2023
    .line 2024
    .line 2025
    .line 2026
    .line 2027
    .line 2028
    .line 2029
    .line 2030
    .line 2031
    .line 2032
    .line 2033
    .line 2034
    .line 2035
    .line 2036
    .line 2037
    .line 2038
    .line 2039
    .line 2040
    .line 2041
    .line 2042
    .line 2043
    .line 2044
    .line 2045
    .line 2046
    .line 2047
    .line 2048
    .line 2049
    .line 2050
    .line 2051
    .line 2052
    .line 2053
    .line 2054
    .line 2055
    .line 2056
    .line 2057
    .line 2058
    .line 2059
    .line 2060
    .line 2061
    .line 2062
    .line 2063
    .line 2064
    .line 2065
    .line 2066
    .line 2067
    .line 2068
    .line 2069
    .line 2070
    .line 2071
    .line 2072
    .line 2073
    .line 2074
    .line 2075
    .line 2076
    .line 2077
    .line 2078
    .line 2079
    .line 2080
    .line 2081
    .line 2082
    .line 2083
    .line 2084
    .line 2085
    .line 2086
    .line 2087
    .line 2088
    .line 2089
    .line 2090
    .line 2091
    .line 2092
    .line 2093
    .line 2094
    .line 2095
    .line 2096
    .line 2097
    .line 2098
    .line 2099
    .line 2100
    .line 2101
    .line 2102
    .line 2103
    .line 2104
    .line 2105
    .line 2106
    .line 2107
    .line 2108
    .line 2109
    .line 2110
    .line 2111
    .line 2112
    .line 2113
    .line 2114
    .line 2115
    .line 2116
    .line 2117
    .line 2118
    .line 2119
    .line 2120
    .line 2121
    .line 2122
    .line 2123
    .line 2124
    .line 2125
    .line 2126
    .line 2127
    .line 2128
    .line 2129
    .line 2130
    .line 2131
    .line 2132
    .line 2133
    .line 2134
    .line 2135
    .line 2136
    .line 2137
    .line 2138
    .line 2139
    .line 2140
    .line 2141
    .line 2142
    .line 2143
    .line 2144
    .line 2145
    .line 2146
    .line 2147
    .line 2148
    .line 2149
    .line 2150
    .line 2151
    .line 2152
    .line 2153
    .line 2154
    .line 2155
    .line 2156
    .line 2157
    .line 2158
    .line 2159
    .line 2160
    .line 2161
    .line 2162
    .line 2163
    .line 2164
    .line 2165
    .line 2166
    .line 2167
    .line 2168
    .line 2169
    .line 2170
    .line 2171
    .line 2172
    .line 2173
    .line 2174
    .line 2175
    .line 2176
    .line 2177
    .line 2178
    .line 2179
    .line 2180
    .line 2181
    .line 2182
    .line 2183
    .line 2184
    .line 2185
    .line 2186
    .line 2187
    .line 2188
    .line 2189
    .line 2190
    .line 2191
    .line 2192
    .line 2193
    .line 2194
    .line 2195
    .line 2196
    .line 2197
    .line 2198
    .line 2199
    .line 2200
    .line 2201
    .line 2202
    .line 2203
    .line 2204
    .line 2205
    .line 2206
    .line 2207
    .line 2208
    .line 2209
    .line 2210
    .line 2211
    .line 2212
    .line 2213
    .line 2214
    .line 2215
    .line 2216
    .line 2217
    .line 2218
    .line 2219
    .line 2220
    .line 2221
    .line 2222
    .line 2223
    .line 2224
    .line 2225
    .line 2226
    .line 2227
    .line 2228
    .line 2229
    .line 2230
    .line 2231
    .line 2232
    .line 2233
    .line 2234
    .line 2235
    .line 2236
    .line 2237
    .line 2238
    .line 2239
    .line 2240
    .line 2241
    .line 2242
    .line 2243
    .line 2244
    .line 2245
    .line 2246
    .line 2247
    .line 2248
    .line 2249
    .line 2250
    .line 2251
    .line 2252
    .line 2253
    .line 2254
    .line 2255
    .line 2256
    .line 2257
    .line 2258
    .line 2259
    .line 2260
    .line 2261
    .line 2262
    .line 2263
    .line 2264
    .line 2265
    .line 2266
    .line 2267
    .line 2268
    .line 2269
    .line 2270
    .line 2271
    .line 2272
    .line 2273
    .line 2274
    .line 2275
    .line 2276
    .line 2277
    .line 2278
    .line 2279
    .line 2280
    .line 2281
    .line 2282
    .line 2283
    .line 2284
    .line 2285
    .line 2286
    .line 2287
    .line 2288
    .line 2289
    .line 2290
    .line 2291
    .line 2292
    .line 2293
    .line 2294
    .line 2295
    .line 2296
    .line 2297
    .line 2298
    .line 2299
    .line 2300
    .line 2301
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_58
        :pswitch_57
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_55
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_53
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onHelp()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-boolean p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mDumping:Z

    .line 6
    .line 7
    invoke-static {v0, p0}, Lcom/android/server/am/ActivityManagerShellCommand;->dumpHelp(Ljava/io/PrintWriter;Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final runAttachAgent(Ljava/io/PrintWriter;)I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    const-string v1, "android.permission.SET_ACTIVITY_WATCHER"

    .line 4
    .line 5
    const-string v2, "attach-agent"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    const-string p0, "Error: Unknown option: "

    .line 25
    .line 26
    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const/4 p0, -0x1

    .line 34
    return p0

    .line 35
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    const-string p1, "Unknown process: "

    .line 41
    .line 42
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    .line 43
    .line 44
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 45
    .line 46
    .line 47
    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :try_start_1
    const-string v3, "attachAgent"

    .line 49
    .line 50
    const/4 v4, 0x0

    .line 51
    invoke-virtual {p0, v4, v0, v3}, Lcom/android/server/am/ActivityManagerService;->findProcessLOSP(ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/am/ProcessRecord;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    if-eqz v3, :cond_1

    .line 56
    .line 57
    iget-object v5, v3, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;

    .line 58
    .line 59
    if-eqz v5, :cond_1

    .line 60
    .line 61
    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityManagerService;->enforceDebuggable(Lcom/android/server/am/ProcessRecord;)V

    .line 62
    .line 63
    .line 64
    invoke-interface {v5, v1}, Landroid/app/IApplicationThread;->attachAgent(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    :try_start_2
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 69
    .line 70
    .line 71
    return v4

    .line 72
    :catchall_0
    move-exception p0

    .line 73
    goto :goto_0

    .line 74
    :cond_1
    :try_start_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 75
    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw p0

    .line 92
    :goto_0
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 93
    :try_start_4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 94
    .line 95
    .line 96
    throw p0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 97
    :catch_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 98
    .line 99
    const-string p1, "Process disappeared"

    .line 100
    .line 101
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    throw p0
.end method

.method public final runBugReport(Ljava/io/PrintWriter;)I
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v1, :cond_2

    .line 8
    .line 9
    const-string v0, "--progress"

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Lcom/android/server/am/ActivityManagerService;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->requestInteractiveBugReport()V

    .line 20
    .line 21
    .line 22
    :goto_1
    move v0, v2

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const-string v0, "--telephony"

    .line 25
    .line 26
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Lcom/android/server/am/ActivityManagerService;

    .line 33
    .line 34
    const/4 v1, 0x4

    .line 35
    const-string v3, ""

    .line 36
    .line 37
    invoke-virtual {v0, v3, v3, v1}, Lcom/android/server/am/ActivityManagerService;->requestBugReportWithDescription(Ljava/lang/String;Ljava/lang/String;I)V

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    const-string p1, "Error: Unknown option: "

    .line 46
    .line 47
    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const/4 p0, -0x1

    .line 55
    return p0

    .line 56
    :cond_2
    if-eqz v0, :cond_3

    .line 57
    .line 58
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Lcom/android/server/am/ActivityManagerService;

    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->requestFullBugReport()V

    .line 61
    .line 62
    .line 63
    :cond_3
    const-string p0, "Your lovely bug report is being created; please be patient."

    .line 64
    .line 65
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    return v2
.end method

.method public final runCapabilities(Ljava/io/PrintWriter;)I
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    if-eqz v3, :cond_1

    .line 12
    .line 13
    const-string v2, "--protobuf"

    .line 14
    .line 15
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const-string p0, "Error: Unknown option: "

    .line 24
    .line 25
    invoke-virtual {p0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const/4 p0, -0x1

    .line 33
    return p0

    .line 34
    :cond_1
    const-string/jumbo v0, "java.vm.name"

    .line 35
    .line 36
    .line 37
    const-string v3, "?"

    .line 38
    .line 39
    invoke-static {v0, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const-string/jumbo v4, "java.vm.version"

    .line 44
    .line 45
    .line 46
    invoke-static {v4, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    if-eqz v2, :cond_5

    .line 51
    .line 52
    new-instance v2, Lcom/android/server/am/nano/Capabilities;

    .line 53
    .line 54
    invoke-direct {v2}, Lcom/android/server/am/nano/Capabilities;-><init>()V

    .line 55
    .line 56
    .line 57
    sget-object v4, Lcom/android/server/am/ActivityManagerShellCommand;->CAPABILITIES:[Ljava/lang/String;

    .line 58
    .line 59
    array-length v4, v4

    .line 60
    new-array v4, v4, [Lcom/android/server/am/nano/Capability;

    .line 61
    .line 62
    iput-object v4, v2, Lcom/android/server/am/nano/Capabilities;->values:[Lcom/android/server/am/nano/Capability;

    .line 63
    .line 64
    move v4, v1

    .line 65
    :goto_1
    sget-object v5, Lcom/android/server/am/ActivityManagerShellCommand;->CAPABILITIES:[Ljava/lang/String;

    .line 66
    .line 67
    array-length v6, v5

    .line 68
    if-ge v4, v6, :cond_2

    .line 69
    .line 70
    new-instance v6, Lcom/android/server/am/nano/Capability;

    .line 71
    .line 72
    invoke-direct {v6}, Lcom/android/server/am/nano/Capability;-><init>()V

    .line 73
    .line 74
    .line 75
    aget-object v5, v5, v4

    .line 76
    .line 77
    iput-object v5, v6, Lcom/android/server/am/nano/Capability;->name:Ljava/lang/String;

    .line 78
    .line 79
    iget-object v5, v2, Lcom/android/server/am/nano/Capabilities;->values:[Lcom/android/server/am/nano/Capability;

    .line 80
    .line 81
    aput-object v6, v5, v4

    .line 82
    .line 83
    add-int/lit8 v4, v4, 0x1

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_2
    invoke-static {}, Landroid/os/Debug;->getVmFeatureList()[Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    array-length v5, v4

    .line 91
    new-array v5, v5, [Lcom/android/server/am/nano/VMCapability;

    .line 92
    .line 93
    iput-object v5, v2, Lcom/android/server/am/nano/Capabilities;->vmCapabilities:[Lcom/android/server/am/nano/VMCapability;

    .line 94
    .line 95
    move v5, v1

    .line 96
    :goto_2
    array-length v6, v4

    .line 97
    if-ge v5, v6, :cond_3

    .line 98
    .line 99
    new-instance v6, Lcom/android/server/am/nano/VMCapability;

    .line 100
    .line 101
    invoke-direct {v6}, Lcom/android/server/am/nano/VMCapability;-><init>()V

    .line 102
    .line 103
    .line 104
    aget-object v7, v4, v5

    .line 105
    .line 106
    iput-object v7, v6, Lcom/android/server/am/nano/VMCapability;->name:Ljava/lang/String;

    .line 107
    .line 108
    iget-object v7, v2, Lcom/android/server/am/nano/Capabilities;->vmCapabilities:[Lcom/android/server/am/nano/VMCapability;

    .line 109
    .line 110
    aput-object v6, v7, v5

    .line 111
    .line 112
    add-int/lit8 v5, v5, 0x1

    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_3
    invoke-static {}, Landroid/os/Debug;->getFeatureList()[Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    array-length v5, v4

    .line 120
    new-array v5, v5, [Lcom/android/server/am/nano/FrameworkCapability;

    .line 121
    .line 122
    iput-object v5, v2, Lcom/android/server/am/nano/Capabilities;->frameworkCapabilities:[Lcom/android/server/am/nano/FrameworkCapability;

    .line 123
    .line 124
    move v5, v1

    .line 125
    :goto_3
    array-length v6, v4

    .line 126
    if-ge v5, v6, :cond_4

    .line 127
    .line 128
    new-instance v6, Lcom/android/server/am/nano/FrameworkCapability;

    .line 129
    .line 130
    invoke-direct {v6}, Lcom/android/server/am/nano/FrameworkCapability;-><init>()V

    .line 131
    .line 132
    .line 133
    aget-object v7, v4, v5

    .line 134
    .line 135
    iput-object v7, v6, Lcom/android/server/am/nano/FrameworkCapability;->name:Ljava/lang/String;

    .line 136
    .line 137
    iget-object v7, v2, Lcom/android/server/am/nano/Capabilities;->frameworkCapabilities:[Lcom/android/server/am/nano/FrameworkCapability;

    .line 138
    .line 139
    aput-object v6, v7, v5

    .line 140
    .line 141
    add-int/lit8 v5, v5, 0x1

    .line 142
    .line 143
    goto :goto_3

    .line 144
    :cond_4
    new-instance v4, Lcom/android/server/am/nano/VMInfo;

    .line 145
    .line 146
    invoke-direct {v4}, Lcom/android/server/am/nano/VMInfo;-><init>()V

    .line 147
    .line 148
    .line 149
    iput-object v0, v4, Lcom/android/server/am/nano/VMInfo;->name:Ljava/lang/String;

    .line 150
    .line 151
    iput-object v3, v4, Lcom/android/server/am/nano/VMInfo;->version:Ljava/lang/String;

    .line 152
    .line 153
    iput-object v4, v2, Lcom/android/server/am/nano/Capabilities;->vmInfo:Lcom/android/server/am/nano/VMInfo;

    .line 154
    .line 155
    :try_start_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getRawOutputStream()Ljava/io/OutputStream;

    .line 156
    .line 157
    .line 158
    move-result-object p0

    .line 159
    invoke-static {v2}, Lcom/android/server/am/nano/Capabilities;->toByteArray(Lcom/android/framework/protobuf/nano/MessageNano;)[B

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    .line 165
    .line 166
    goto/16 :goto_7

    .line 167
    .line 168
    :catch_0
    const-string p0, "Error while serializing capabilities protobuffer"

    .line 169
    .line 170
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    goto/16 :goto_7

    .line 174
    .line 175
    :cond_5
    const-string p0, "Format: 2"

    .line 176
    .line 177
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    sget-object p0, Lcom/android/server/am/ActivityManagerShellCommand;->CAPABILITIES:[Ljava/lang/String;

    .line 181
    .line 182
    array-length v2, p0

    .line 183
    move v4, v1

    .line 184
    :goto_4
    if-ge v4, v2, :cond_6

    .line 185
    .line 186
    aget-object v5, p0, v4

    .line 187
    .line 188
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    add-int/lit8 v4, v4, 0x1

    .line 192
    .line 193
    goto :goto_4

    .line 194
    :cond_6
    invoke-static {}, Landroid/os/Debug;->getVmFeatureList()[Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p0

    .line 198
    array-length v2, p0

    .line 199
    move v4, v1

    .line 200
    :goto_5
    if-ge v4, v2, :cond_7

    .line 201
    .line 202
    aget-object v5, p0, v4

    .line 203
    .line 204
    new-instance v6, Ljava/lang/StringBuilder;

    .line 205
    .line 206
    const-string/jumbo v7, "vm:"

    .line 207
    .line 208
    .line 209
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v5

    .line 219
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    add-int/lit8 v4, v4, 0x1

    .line 223
    .line 224
    goto :goto_5

    .line 225
    :cond_7
    invoke-static {}, Landroid/os/Debug;->getFeatureList()[Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object p0

    .line 229
    array-length v2, p0

    .line 230
    move v4, v1

    .line 231
    :goto_6
    if-ge v4, v2, :cond_8

    .line 232
    .line 233
    aget-object v5, p0, v4

    .line 234
    .line 235
    new-instance v6, Ljava/lang/StringBuilder;

    .line 236
    .line 237
    const-string/jumbo v7, "framework:"

    .line 238
    .line 239
    .line 240
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v5

    .line 250
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    add-int/lit8 v4, v4, 0x1

    .line 254
    .line 255
    goto :goto_6

    .line 256
    :cond_8
    new-instance p0, Ljava/lang/StringBuilder;

    .line 257
    .line 258
    const-string/jumbo v2, "vm_name:"

    .line 259
    .line 260
    .line 261
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object p0

    .line 271
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    new-instance p0, Ljava/lang/StringBuilder;

    .line 275
    .line 276
    const-string/jumbo v0, "vm_version:"

    .line 277
    .line 278
    .line 279
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object p0

    .line 289
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    :goto_7
    return v1
.end method

.method public final runClearDebugApp()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-virtual {p0, v0, v1, v2, v1}, Lcom/android/server/am/ActivityManagerService;->setDebugApp(Ljava/lang/String;ZZZ)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final runClearExitInfo()I
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    .line 4
    .line 5
    const-string/jumbo v2, "runClearExitInfo()"

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, -0x2

    .line 12
    move v1, v0

    .line 13
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const/4 v3, -0x1

    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    const-string v1, "--user"

    .line 21
    .line 22
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    const-string v0, "Error: Unknown option: "

    .line 42
    .line 43
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return v3

    .line 51
    :cond_1
    if-ne v1, v0, :cond_3

    .line 52
    .line 53
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Lcom/android/server/am/ActivityManagerService;

    .line 54
    .line 55
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/android/server/am/UserController;->getCurrentUser()Landroid/content/pm/UserInfo;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    if-nez v0, :cond_2

    .line 62
    .line 63
    return v3

    .line 64
    :cond_2
    iget v1, v0, Landroid/content/pm/UserInfo;->id:I

    .line 65
    .line 66
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    .line 67
    .line 68
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 69
    .line 70
    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    .line 71
    .line 72
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    const-class v2, Lcom/android/server/os/NativeTombstoneManager;

    .line 80
    .line 81
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    check-cast v2, Lcom/android/server/os/NativeTombstoneManager;

    .line 86
    .line 87
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    const/4 v5, 0x1

    .line 96
    if-eqz v4, :cond_4

    .line 97
    .line 98
    iget-object v4, v0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    .line 99
    .line 100
    monitor-enter v4

    .line 101
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/android/server/am/AppExitInfoTracker;->removeByUserIdLocked(I)V

    .line 102
    .line 103
    .line 104
    monitor-exit v4

    .line 105
    goto :goto_1

    .line 106
    :catchall_0
    move-exception p0

    .line 107
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    throw p0

    .line 109
    :cond_4
    iget-object v3, v0, Lcom/android/server/am/AppExitInfoTracker;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 110
    .line 111
    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 112
    .line 113
    const-wide/32 v6, 0x20000

    .line 114
    .line 115
    .line 116
    invoke-virtual {v3, p0, v6, v7, v1}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    .line 121
    .line 122
    .line 123
    move-result v4

    .line 124
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    invoke-static {v4}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    iget-object v6, v0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    .line 133
    .line 134
    monitor-enter v6

    .line 135
    :try_start_1
    invoke-virtual {v0, v3, v1, p0, v5}, Lcom/android/server/am/AppExitInfoTracker;->removePackageLocked(IILjava/lang/String;Z)V

    .line 136
    .line 137
    .line 138
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 139
    move-object v3, v4

    .line 140
    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    .line 150
    .line 151
    new-instance v1, Lcom/android/server/os/NativeTombstoneManager$$ExternalSyntheticLambda2;

    .line 152
    .line 153
    invoke-direct {v1, v2, p0, v3}, Lcom/android/server/os/NativeTombstoneManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/os/NativeTombstoneManager;Ljava/util/Optional;Ljava/util/Optional;)V

    .line 154
    .line 155
    .line 156
    iget-object p0, v2, Lcom/android/server/os/NativeTombstoneManager;->mHandler:Landroid/os/Handler;

    .line 157
    .line 158
    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0, v5}, Lcom/android/server/am/AppExitInfoTracker;->schedulePersistProcessExitInfo(Z)V

    .line 162
    .line 163
    .line 164
    const/4 p0, 0x0

    .line 165
    return p0

    .line 166
    :catchall_1
    move-exception p0

    .line 167
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 168
    throw p0
.end method

.method public final runClearRecentApps()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->removeAllVisibleRecentTasks()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final runClearStartInfo()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    .line 4
    .line 5
    const-string/jumbo v2, "runClearStartInfo()"

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, -0x2

    .line 12
    move v1, v0

    .line 13
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const/4 v3, -0x1

    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    const-string v1, "--user"

    .line 21
    .line 22
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    const-string v0, "Error: Unknown option: "

    .line 42
    .line 43
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return v3

    .line 51
    :cond_1
    if-ne v1, v0, :cond_3

    .line 52
    .line 53
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Lcom/android/server/am/ActivityManagerService;

    .line 54
    .line 55
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/android/server/am/UserController;->getCurrentUser()Landroid/content/pm/UserInfo;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    if-nez v0, :cond_2

    .line 62
    .line 63
    return v3

    .line 64
    :cond_2
    iget v1, v0, Landroid/content/pm/UserInfo;->id:I

    .line 65
    .line 66
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    .line 67
    .line 68
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 69
    .line 70
    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mAppStartInfoTracker:Lcom/android/server/am/AppStartInfoTracker;

    .line 71
    .line 72
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    iget-boolean v2, v0, Lcom/android/server/am/AppStartInfoTracker;->mEnabled:Z

    .line 77
    .line 78
    if-nez v2, :cond_4

    .line 79
    .line 80
    goto :goto_3

    .line 81
    :cond_4
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 82
    .line 83
    .line 84
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    if-eqz v2, :cond_6

    .line 89
    .line 90
    iget-object v2, v0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    .line 91
    .line 92
    monitor-enter v2

    .line 93
    if-ne v1, v3, :cond_5

    .line 94
    .line 95
    :try_start_0
    iget-object p0, v0, Lcom/android/server/am/AppStartInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    .line 96
    .line 97
    invoke-virtual {p0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_5
    new-instance p0, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda3;

    .line 106
    .line 107
    invoke-direct {p0, v1}, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda3;-><init>(I)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, p0}, Lcom/android/server/am/AppStartInfoTracker;->forEachPackageLocked(Ljava/util/function/BiFunction;)Z

    .line 111
    .line 112
    .line 113
    :goto_1
    monitor-exit v2

    .line 114
    goto :goto_2

    .line 115
    :catchall_0
    move-exception p0

    .line 116
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    throw p0

    .line 118
    :cond_6
    iget-object v2, v0, Lcom/android/server/am/AppStartInfoTracker;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 119
    .line 120
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 121
    .line 122
    const-wide/32 v3, 0x20000

    .line 123
    .line 124
    .line 125
    invoke-virtual {v2, p0, v3, v4, v1}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    .line 130
    .line 131
    .line 132
    move-result v2

    .line 133
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    invoke-static {v2}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 138
    .line 139
    .line 140
    iget-object v2, v0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    .line 141
    .line 142
    monitor-enter v2

    .line 143
    :try_start_1
    invoke-virtual {v0, v1, p0}, Lcom/android/server/am/AppStartInfoTracker;->removePackageLocked(ILjava/lang/String;)V

    .line 144
    .line 145
    .line 146
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 147
    :goto_2
    const/4 p0, 0x1

    .line 148
    invoke-virtual {v0, p0}, Lcom/android/server/am/AppStartInfoTracker;->schedulePersistProcessStartInfo(Z)V

    .line 149
    .line 150
    .line 151
    :goto_3
    const/4 p0, 0x0

    .line 152
    return p0

    .line 153
    :catchall_1
    move-exception p0

    .line 154
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 155
    throw p0
.end method

.method public final runClearWatchHeap()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v1

    .line 5
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Lcom/android/server/am/ActivityManagerService;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const-wide/16 v3, -0x1

    .line 9
    .line 10
    const/4 v5, 0x0

    .line 11
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->setDumpHeapDebugLimit(Ljava/lang/String;IJLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final runCompact(Ljava/io/PrintWriter;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string/jumbo v1, "full"

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const-string/jumbo v2, "some"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const/4 v3, 0x1

    .line 20
    const/4 v4, -0x1

    .line 21
    if-nez v1, :cond_6

    .line 22
    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    goto/16 :goto_0

    .line 26
    .line 27
    :cond_0
    const-string/jumbo v1, "system"

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    const-string v0, "Executing system compaction"

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    .line 42
    .line 43
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    .line 44
    .line 45
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 46
    .line 47
    .line 48
    monitor-enter v1

    .line 49
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    .line 50
    .line 51
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    .line 52
    .line 53
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/android/server/am/CachedAppOptimizer;->useCompaction()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_1

    .line 60
    .line 61
    const-string/jumbo v0, "compactAllSystem"

    .line 62
    .line 63
    .line 64
    const-string v2, "Compaction"

    .line 65
    .line 66
    const-wide/16 v3, 0x40

    .line 67
    .line 68
    invoke-static {v3, v4, v2, v0}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactionHandler:Landroid/os/Handler;

    .line 72
    .line 73
    const/4 v0, 0x2

    .line 74
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 79
    .line 80
    .line 81
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 83
    .line 84
    .line 85
    const-string p0, "Finished system compaction"

    .line 86
    .line 87
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    goto/16 :goto_1

    .line 91
    .line 92
    :catchall_0
    move-exception p0

    .line 93
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 95
    .line 96
    .line 97
    throw p0

    .line 98
    :cond_2
    const-string/jumbo p1, "native"

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    if-eqz p1, :cond_5

    .line 106
    .line 107
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    const-string/jumbo v0, "full"

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    const-string/jumbo v1, "some"

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    :try_start_2
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 130
    .line 131
    .line 132
    move-result v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 133
    const/4 v5, 0x5

    .line 134
    if-eqz v0, :cond_3

    .line 135
    .line 136
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    .line 137
    .line 138
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    .line 139
    .line 140
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    .line 141
    .line 142
    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactionHandler:Landroid/os/Handler;

    .line 143
    .line 144
    const/4 p1, 0x3

    .line 145
    invoke-virtual {p0, v5, v2, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 150
    .line 151
    .line 152
    goto/16 :goto_1

    .line 153
    .line 154
    :cond_3
    if-eqz v1, :cond_4

    .line 155
    .line 156
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    .line 157
    .line 158
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    .line 159
    .line 160
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    .line 161
    .line 162
    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactionHandler:Landroid/os/Handler;

    .line 163
    .line 164
    invoke-virtual {p0, v5, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 169
    .line 170
    .line 171
    goto/16 :goto_1

    .line 172
    .line 173
    :cond_4
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 174
    .line 175
    .line 176
    move-result-object p0

    .line 177
    const-string v0, "Error: unknown compaction type \'"

    .line 178
    .line 179
    const-string v1, "\'"

    .line 180
    .line 181
    invoke-static {p0, v0, p1, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    return v4

    .line 185
    :catch_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 186
    .line 187
    .line 188
    move-result-object p0

    .line 189
    const-string p1, "Error: failed to parse \'"

    .line 190
    .line 191
    const-string v0, "\' as a PID"

    .line 192
    .line 193
    invoke-static {p0, p1, v2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    return v4

    .line 197
    :cond_5
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 198
    .line 199
    .line 200
    move-result-object p0

    .line 201
    const-string p1, "Error: unknown compact command \'"

    .line 202
    .line 203
    const-string v1, "\'"

    .line 204
    .line 205
    invoke-static {p0, p1, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    return v4

    .line 209
    :cond_6
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getProcessFromShell()Lcom/android/server/am/ProcessRecord;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    if-nez v0, :cond_7

    .line 214
    .line 215
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 216
    .line 217
    .line 218
    move-result-object p0

    .line 219
    const-string p1, "Error: could not find process"

    .line 220
    .line 221
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    return v4

    .line 225
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    .line 226
    .line 227
    const-string v5, "Process record found pid: "

    .line 228
    .line 229
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    iget v5, v0, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 233
    .line 234
    invoke-static {v4, v5, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    .line 235
    .line 236
    .line 237
    if-eqz v1, :cond_8

    .line 238
    .line 239
    new-instance v1, Ljava/lang/StringBuilder;

    .line 240
    .line 241
    const-string v2, "Executing full compaction for "

    .line 242
    .line 243
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    iget v2, v0, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 247
    .line 248
    invoke-static {v1, v2, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    .line 249
    .line 250
    .line 251
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    .line 252
    .line 253
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    .line 254
    .line 255
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 256
    .line 257
    .line 258
    monitor-enter v1

    .line 259
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    .line 260
    .line 261
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    .line 262
    .line 263
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    .line 264
    .line 265
    sget-object v2, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->FULL:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    .line 266
    .line 267
    sget-object v4, Lcom/android/server/am/CachedAppOptimizer$CompactSource;->SHELL:Lcom/android/server/am/CachedAppOptimizer$CompactSource;

    .line 268
    .line 269
    invoke-virtual {p0, v0, v2, v4, v3}, Lcom/android/server/am/CachedAppOptimizer;->compactApp(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/CachedAppOptimizer$CompactProfile;Lcom/android/server/am/CachedAppOptimizer$CompactSource;Z)V

    .line 270
    .line 271
    .line 272
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 273
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 274
    .line 275
    .line 276
    new-instance p0, Ljava/lang/StringBuilder;

    .line 277
    .line 278
    const-string v1, "Finished full compaction for "

    .line 279
    .line 280
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    iget v0, v0, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 284
    .line 285
    invoke-static {p0, v0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    .line 286
    .line 287
    .line 288
    goto :goto_1

    .line 289
    :catchall_1
    move-exception p0

    .line 290
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 291
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 292
    .line 293
    .line 294
    throw p0

    .line 295
    :cond_8
    if-eqz v2, :cond_9

    .line 296
    .line 297
    new-instance v1, Ljava/lang/StringBuilder;

    .line 298
    .line 299
    const-string v2, "Executing some compaction for "

    .line 300
    .line 301
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    iget v2, v0, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 305
    .line 306
    invoke-static {v1, v2, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    .line 307
    .line 308
    .line 309
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    .line 310
    .line 311
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    .line 312
    .line 313
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 314
    .line 315
    .line 316
    monitor-enter v1

    .line 317
    :try_start_5
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    .line 318
    .line 319
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    .line 320
    .line 321
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    .line 322
    .line 323
    sget-object v2, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->SOME:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    .line 324
    .line 325
    sget-object v4, Lcom/android/server/am/CachedAppOptimizer$CompactSource;->SHELL:Lcom/android/server/am/CachedAppOptimizer$CompactSource;

    .line 326
    .line 327
    invoke-virtual {p0, v0, v2, v4, v3}, Lcom/android/server/am/CachedAppOptimizer;->compactApp(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/CachedAppOptimizer$CompactProfile;Lcom/android/server/am/CachedAppOptimizer$CompactSource;Z)V

    .line 328
    .line 329
    .line 330
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 331
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 332
    .line 333
    .line 334
    new-instance p0, Ljava/lang/StringBuilder;

    .line 335
    .line 336
    const-string v1, "Finished some compaction for "

    .line 337
    .line 338
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    iget v0, v0, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 342
    .line 343
    invoke-static {p0, v0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    .line 344
    .line 345
    .line 346
    goto :goto_1

    .line 347
    :catchall_2
    move-exception p0

    .line 348
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 349
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 350
    .line 351
    .line 352
    throw p0

    .line 353
    :cond_9
    :goto_1
    const/4 p0, 0x0

    .line 354
    return p0
.end method

.method public final runCompat(Ljava/io/PrintWriter;)I
    .locals 17

    .line 1
    move-object/from16 v1, p1

    .line 2
    .line 3
    const-string/jumbo v0, "platform_compat"

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/android/server/compat/PlatformCompat;

    .line 11
    .line 12
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const-string v3, "--no-kill"

    .line 17
    .line 18
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    const/4 v4, 0x1

    .line 27
    xor-int/2addr v3, v4

    .line 28
    const-string v5, "-all"

    .line 29
    .line 30
    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    const-string v7, "\'."

    .line 35
    .line 36
    const-string/jumbo v8, "reset"

    .line 37
    .line 38
    .line 39
    const-wide/16 v9, -0x1

    .line 40
    .line 41
    const/4 v11, -0x1

    .line 42
    const/4 v12, 0x0

    .line 43
    if-eqz v6, :cond_1

    .line 44
    .line 45
    invoke-virtual {v2, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    invoke-virtual {v2, v12, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    if-nez v5, :cond_0

    .line 58
    .line 59
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    move-result v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    move v6, v4

    .line 68
    goto :goto_1

    .line 69
    :catch_0
    const-string v0, "Invalid targetSdkVersion!"

    .line 70
    .line 71
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    return v11

    .line 75
    :cond_0
    move v6, v4

    .line 76
    move v5, v11

    .line 77
    goto :goto_1

    .line 78
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    :try_start_1
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 83
    .line 84
    .line 85
    move-result-wide v13
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 86
    goto :goto_0

    .line 87
    :catch_1
    iget-object v6, v0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    .line 88
    .line 89
    iget-object v6, v6, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    .line 90
    .line 91
    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 100
    .line 101
    .line 102
    move-result v13

    .line 103
    if-eqz v13, :cond_3

    .line 104
    .line 105
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v13

    .line 109
    check-cast v13, Lcom/android/server/compat/CompatChange;

    .line 110
    .line 111
    invoke-virtual {v13}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getName()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v14

    .line 115
    invoke-static {v14, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 116
    .line 117
    .line 118
    move-result v14

    .line 119
    if-eqz v14, :cond_2

    .line 120
    .line 121
    invoke-virtual {v13}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getId()J

    .line 122
    .line 123
    .line 124
    move-result-wide v13

    .line 125
    goto :goto_0

    .line 126
    :cond_3
    move-wide v13, v9

    .line 127
    :goto_0
    cmp-long v6, v13, v9

    .line 128
    .line 129
    if-nez v6, :cond_4

    .line 130
    .line 131
    const-string v0, "Unknown or invalid change: \'"

    .line 132
    .line 133
    invoke-static {v1, v0, v5, v7}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    return v11

    .line 137
    :cond_4
    move v5, v11

    .line 138
    move v6, v12

    .line 139
    move-wide v9, v13

    .line 140
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v13

    .line 144
    if-nez v6, :cond_5

    .line 145
    .line 146
    iget-object v14, v0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    .line 147
    .line 148
    iget-object v14, v14, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    .line 149
    .line 150
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 151
    .line 152
    .line 153
    move-result-object v15

    .line 154
    invoke-virtual {v14, v15}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v14

    .line 158
    if-nez v14, :cond_5

    .line 159
    .line 160
    new-instance v14, Ljava/lang/StringBuilder;

    .line 161
    .line 162
    const-string v15, "Warning! Change "

    .line 163
    .line 164
    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v14, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    const-string v15, " is not known yet. Enabling/disabling it could have no effect."

    .line 171
    .line 172
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v14

    .line 179
    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    :cond_5
    new-instance v14, Landroid/util/ArraySet;

    .line 183
    .line 184
    invoke-direct {v14}, Landroid/util/ArraySet;-><init>()V

    .line 185
    .line 186
    .line 187
    new-instance v15, Landroid/util/ArraySet;

    .line 188
    .line 189
    invoke-direct {v15}, Landroid/util/ArraySet;-><init>()V

    .line 190
    .line 191
    .line 192
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 193
    .line 194
    .line 195
    move-result v11

    .line 196
    const v12, -0x4d6ada7d

    .line 197
    .line 198
    .line 199
    if-eq v11, v12, :cond_8

    .line 200
    .line 201
    const v12, 0x6761d4f

    .line 202
    .line 203
    .line 204
    if-eq v11, v12, :cond_7

    .line 205
    .line 206
    const v8, 0x639e22e8

    .line 207
    .line 208
    .line 209
    if-eq v11, v8, :cond_6

    .line 210
    .line 211
    goto :goto_2

    .line 212
    :cond_6
    const-string/jumbo v8, "disable"

    .line 213
    .line 214
    .line 215
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result v8

    .line 219
    if-eqz v8, :cond_9

    .line 220
    .line 221
    const/4 v8, 0x1

    .line 222
    goto :goto_3

    .line 223
    :catch_2
    move-exception v0

    .line 224
    goto/16 :goto_f

    .line 225
    .line 226
    :cond_7
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    move-result v8

    .line 230
    if-eqz v8, :cond_9

    .line 231
    .line 232
    const/4 v8, 0x2

    .line 233
    goto :goto_3

    .line 234
    :cond_8
    const-string/jumbo v8, "enable"

    .line 235
    .line 236
    .line 237
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    move-result v8
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2

    .line 241
    if-eqz v8, :cond_9

    .line 242
    .line 243
    const/4 v8, 0x0

    .line 244
    goto :goto_3

    .line 245
    :cond_9
    :goto_2
    const/4 v8, -0x1

    .line 246
    :goto_3
    const-string v11, " changes gated by targetSdkVersion "

    .line 247
    .line 248
    const-string v12, "."

    .line 249
    .line 250
    const-string v4, " for "

    .line 251
    .line 252
    if-eqz v8, :cond_13

    .line 253
    .line 254
    move-object/from16 v16, v14

    .line 255
    .line 256
    const/4 v14, 0x1

    .line 257
    if-eq v8, v14, :cond_f

    .line 258
    .line 259
    const/4 v14, 0x2

    .line 260
    if-eq v8, v14, :cond_a

    .line 261
    .line 262
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 263
    .line 264
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 265
    .line 266
    .line 267
    const-string v3, "Invalid toggle value: \'"

    .line 268
    .line 269
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_2

    .line 283
    .line 284
    .line 285
    :goto_4
    const/4 v1, -0x1

    .line 286
    goto/16 :goto_10

    .line 287
    .line 288
    :cond_a
    const-string v2, " to default value."

    .line 289
    .line 290
    if-eqz v6, :cond_c

    .line 291
    .line 292
    if-eqz v3, :cond_b

    .line 293
    .line 294
    :try_start_4
    invoke-virtual {v0, v13}, Lcom/android/server/compat/PlatformCompat;->clearOverrides(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    goto :goto_5

    .line 298
    :cond_b
    invoke-virtual {v0, v13}, Lcom/android/server/compat/PlatformCompat;->clearOverridesForTest(Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 302
    .line 303
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 304
    .line 305
    .line 306
    const-string v3, "Reset all changes for "

    .line 307
    .line 308
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    const/4 v0, 0x0

    .line 325
    return v0

    .line 326
    :cond_c
    if-eqz v3, :cond_d

    .line 327
    .line 328
    invoke-virtual {v0, v9, v10, v13}, Lcom/android/server/compat/PlatformCompat;->clearOverride(JLjava/lang/String;)Z

    .line 329
    .line 330
    .line 331
    move-result v0

    .line 332
    goto :goto_6

    .line 333
    :cond_d
    invoke-virtual {v0, v9, v10, v13}, Lcom/android/server/compat/PlatformCompat;->clearOverrideForTest(JLjava/lang/String;)Z

    .line 334
    .line 335
    .line 336
    move-result v0

    .line 337
    :goto_6
    if-eqz v0, :cond_e

    .line 338
    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    .line 340
    .line 341
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 342
    .line 343
    .line 344
    const-string v3, "Reset change "

    .line 345
    .line 346
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    .line 352
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v0

    .line 365
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    :goto_7
    const/4 v0, 0x0

    .line 369
    goto :goto_8

    .line 370
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    .line 371
    .line 372
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 373
    .line 374
    .line 375
    const-string v2, "No override exists for changeId "

    .line 376
    .line 377
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    .line 379
    .line 380
    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 381
    .line 382
    .line 383
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    .line 385
    .line 386
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v0

    .line 390
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 391
    .line 392
    .line 393
    goto :goto_7

    .line 394
    :goto_8
    return v0

    .line 395
    :cond_f
    if-eqz v6, :cond_11

    .line 396
    .line 397
    invoke-virtual {v0, v13, v5}, Lcom/android/server/compat/PlatformCompat;->disableTargetSdkChanges(Ljava/lang/String;I)I

    .line 398
    .line 399
    .line 400
    move-result v0

    .line 401
    if-nez v0, :cond_10

    .line 402
    .line 403
    const-string v0, "No changes were disabled."

    .line 404
    .line 405
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 406
    .line 407
    .line 408
    const/4 v1, -0x1

    .line 409
    return v1

    .line 410
    :cond_10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 411
    .line 412
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 413
    .line 414
    .line 415
    const-string v3, "Disabled "

    .line 416
    .line 417
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    .line 419
    .line 420
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 421
    .line 422
    .line 423
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    .line 425
    .line 426
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 427
    .line 428
    .line 429
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    .line 431
    .line 432
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    .line 434
    .line 435
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    .line 437
    .line 438
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object v0

    .line 442
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 443
    .line 444
    .line 445
    :goto_9
    const/4 v0, 0x0

    .line 446
    goto :goto_b

    .line 447
    :cond_11
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 448
    .line 449
    .line 450
    move-result-object v2

    .line 451
    invoke-virtual {v15, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 452
    .line 453
    .line 454
    new-instance v2, Lcom/android/internal/compat/CompatibilityChangeConfig;

    .line 455
    .line 456
    new-instance v5, Landroid/compat/Compatibility$ChangeConfig;

    .line 457
    .line 458
    move-object/from16 v7, v16

    .line 459
    .line 460
    invoke-direct {v5, v7, v15}, Landroid/compat/Compatibility$ChangeConfig;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    .line 461
    .line 462
    .line 463
    invoke-direct {v2, v5}, Lcom/android/internal/compat/CompatibilityChangeConfig;-><init>(Landroid/compat/Compatibility$ChangeConfig;)V

    .line 464
    .line 465
    .line 466
    if-eqz v3, :cond_12

    .line 467
    .line 468
    invoke-virtual {v0, v2, v13}, Lcom/android/server/compat/PlatformCompat;->setOverrides(Lcom/android/internal/compat/CompatibilityChangeConfig;Ljava/lang/String;)V

    .line 469
    .line 470
    .line 471
    goto :goto_a

    .line 472
    :cond_12
    invoke-virtual {v0, v2, v13}, Lcom/android/server/compat/PlatformCompat;->setOverridesForTest(Lcom/android/internal/compat/CompatibilityChangeConfig;Ljava/lang/String;)V

    .line 473
    .line 474
    .line 475
    :goto_a
    new-instance v0, Ljava/lang/StringBuilder;

    .line 476
    .line 477
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 478
    .line 479
    .line 480
    const-string v2, "Disabled change "

    .line 481
    .line 482
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    .line 484
    .line 485
    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 486
    .line 487
    .line 488
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    .line 490
    .line 491
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    .line 493
    .line 494
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    .line 496
    .line 497
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 498
    .line 499
    .line 500
    move-result-object v0

    .line 501
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 502
    .line 503
    .line 504
    goto :goto_9

    .line 505
    :goto_b
    return v0

    .line 506
    :cond_13
    move-object v7, v14

    .line 507
    if-eqz v6, :cond_15

    .line 508
    .line 509
    invoke-virtual {v0, v13, v5}, Lcom/android/server/compat/PlatformCompat;->enableTargetSdkChanges(Ljava/lang/String;I)I

    .line 510
    .line 511
    .line 512
    move-result v0

    .line 513
    if-nez v0, :cond_14

    .line 514
    .line 515
    const-string v0, "No changes were enabled."

    .line 516
    .line 517
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 518
    .line 519
    .line 520
    const/4 v1, -0x1

    .line 521
    return v1

    .line 522
    :cond_14
    new-instance v2, Ljava/lang/StringBuilder;

    .line 523
    .line 524
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 525
    .line 526
    .line 527
    const-string v3, "Enabled "

    .line 528
    .line 529
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    .line 531
    .line 532
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 533
    .line 534
    .line 535
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    .line 537
    .line 538
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 539
    .line 540
    .line 541
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    .line 543
    .line 544
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    .line 546
    .line 547
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    .line 549
    .line 550
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 551
    .line 552
    .line 553
    move-result-object v0

    .line 554
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 555
    .line 556
    .line 557
    :goto_c
    const/4 v0, 0x0

    .line 558
    goto :goto_e

    .line 559
    :cond_15
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 560
    .line 561
    .line 562
    move-result-object v2

    .line 563
    invoke-virtual {v7, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 564
    .line 565
    .line 566
    new-instance v2, Lcom/android/internal/compat/CompatibilityChangeConfig;

    .line 567
    .line 568
    new-instance v5, Landroid/compat/Compatibility$ChangeConfig;

    .line 569
    .line 570
    invoke-direct {v5, v7, v15}, Landroid/compat/Compatibility$ChangeConfig;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    .line 571
    .line 572
    .line 573
    invoke-direct {v2, v5}, Lcom/android/internal/compat/CompatibilityChangeConfig;-><init>(Landroid/compat/Compatibility$ChangeConfig;)V

    .line 574
    .line 575
    .line 576
    if-eqz v3, :cond_16

    .line 577
    .line 578
    invoke-virtual {v0, v2, v13}, Lcom/android/server/compat/PlatformCompat;->setOverrides(Lcom/android/internal/compat/CompatibilityChangeConfig;Ljava/lang/String;)V

    .line 579
    .line 580
    .line 581
    goto :goto_d

    .line 582
    :cond_16
    invoke-virtual {v0, v2, v13}, Lcom/android/server/compat/PlatformCompat;->setOverridesForTest(Lcom/android/internal/compat/CompatibilityChangeConfig;Ljava/lang/String;)V

    .line 583
    .line 584
    .line 585
    :goto_d
    new-instance v0, Ljava/lang/StringBuilder;

    .line 586
    .line 587
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 588
    .line 589
    .line 590
    const-string v2, "Enabled change "

    .line 591
    .line 592
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    .line 594
    .line 595
    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 596
    .line 597
    .line 598
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    .line 600
    .line 601
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    .line 603
    .line 604
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    .line 606
    .line 607
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 608
    .line 609
    .line 610
    move-result-object v0

    .line 611
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_2

    .line 612
    .line 613
    .line 614
    goto :goto_c

    .line 615
    :goto_e
    return v0

    .line 616
    :goto_f
    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    .line 617
    .line 618
    .line 619
    move-result-object v0

    .line 620
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 621
    .line 622
    .line 623
    goto/16 :goto_4

    .line 624
    .line 625
    :goto_10
    return v1
.end method

.method public final runCrash()I
    .locals 15

    .line 1
    const/4 v0, -0x1

    .line 2
    move v1, v0

    .line 3
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    if-eqz v2, :cond_1

    .line 8
    .line 9
    const-string v1, "--user"

    .line 10
    .line 11
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    const-string v1, "Error: Unknown option: "

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return v0

    .line 40
    :cond_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    const/4 v3, 0x0

    .line 49
    goto :goto_1

    .line 50
    :catch_0
    move-object v3, v2

    .line 51
    move v2, v0

    .line 52
    :goto_1
    const/4 v13, 0x0

    .line 53
    if-ne v1, v0, :cond_2

    .line 54
    .line 55
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    .line 56
    .line 57
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    .line 58
    .line 59
    iget-object v0, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    goto :goto_2

    .line 70
    :cond_2
    const/4 v0, 0x1

    .line 71
    new-array v0, v0, [I

    .line 72
    .line 73
    aput v1, v0, v13

    .line 74
    .line 75
    :goto_2
    array-length v1, v0

    .line 76
    move v14, v13

    .line 77
    :goto_3
    if-ge v14, v1, :cond_4

    .line 78
    .line 79
    aget v8, v0, v14

    .line 80
    .line 81
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    .line 82
    .line 83
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    .line 84
    .line 85
    const-string/jumbo v5, "no_debugging_features"

    .line 86
    .line 87
    .line 88
    invoke-virtual {v4, v5, v8}, Lcom/android/server/am/UserController;->hasUserRestriction(Ljava/lang/String;I)Z

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    if-eqz v4, :cond_3

    .line 93
    .line 94
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    const-string v5, "Shell does not have permission to crash packages for user "

    .line 99
    .line 100
    invoke-static {v4, v5, v8}, Lcom/android/server/accounts/AccountManagerServiceShellCommand$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 101
    .line 102
    .line 103
    goto :goto_4

    .line 104
    :cond_3
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Lcom/android/server/am/ActivityManagerService;

    .line 105
    .line 106
    const/4 v12, 0x0

    .line 107
    const/4 v5, -0x1

    .line 108
    const-string/jumbo v9, "shell-induced crash"

    .line 109
    .line 110
    .line 111
    const/4 v10, 0x0

    .line 112
    const/4 v11, 0x5

    .line 113
    move v6, v2

    .line 114
    move-object v7, v3

    .line 115
    invoke-virtual/range {v4 .. v12}, Lcom/android/server/am/ActivityManagerService;->crashApplicationWithTypeWithExtras(IILjava/lang/String;ILjava/lang/String;ZILandroid/os/Bundle;)V

    .line 116
    .line 117
    .line 118
    :goto_4
    add-int/lit8 v14, v14, 0x1

    .line 119
    .line 120
    goto :goto_3

    .line 121
    :cond_4
    return v13
.end method

.method public final runDisplay()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-string/jumbo v1, "move-stack"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const-string v1, "Error: unknown command \'"

    .line 22
    .line 23
    const-string v2, "\'"

    .line 24
    .line 25
    invoke-static {p0, v1, v0, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const/4 p0, -0x1

    .line 29
    return p0

    .line 30
    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 47
    .line 48
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->moveRootTaskToDisplay(II)V

    .line 49
    .line 50
    .line 51
    const/4 p0, 0x0

    .line 52
    return p0
.end method

.method public final runDumpHeap(Ljava/io/PrintWriter;)I
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const/4 v3, 0x1

    .line 10
    const/4 v4, 0x0

    .line 11
    const/4 v5, 0x0

    .line 12
    const/4 v6, -0x2

    .line 13
    move v10, v3

    .line 14
    move v11, v4

    .line 15
    move v12, v11

    .line 16
    move-object v13, v5

    .line 17
    move v9, v6

    .line 18
    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v6

    .line 22
    const/4 v7, -0x1

    .line 23
    if-eqz v6, :cond_6

    .line 24
    .line 25
    const-string v8, "--user"

    .line 26
    .line 27
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v8

    .line 31
    if-eqz v8, :cond_1

    .line 32
    .line 33
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    invoke-static {v6}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    move-result v9

    .line 41
    if-ne v9, v7, :cond_0

    .line 42
    .line 43
    const-string v0, "Error: Can\'t dump heap with user \'all\'"

    .line 44
    .line 45
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return v7

    .line 49
    :cond_1
    const-string v8, "-n"

    .line 50
    .line 51
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v8

    .line 55
    if-eqz v8, :cond_2

    .line 56
    .line 57
    :goto_1
    move v10, v4

    .line 58
    goto :goto_0

    .line 59
    :cond_2
    const-string v8, "-g"

    .line 60
    .line 61
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v8

    .line 65
    if-eqz v8, :cond_3

    .line 66
    .line 67
    move v12, v3

    .line 68
    goto :goto_0

    .line 69
    :cond_3
    const-string v8, "-m"

    .line 70
    .line 71
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v8

    .line 75
    if-eqz v8, :cond_4

    .line 76
    .line 77
    move v11, v3

    .line 78
    goto :goto_1

    .line 79
    :cond_4
    const-string v8, "-b"

    .line 80
    .line 81
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v8

    .line 85
    if-eqz v8, :cond_5

    .line 86
    .line 87
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v13

    .line 91
    if-nez v13, :cond_0

    .line 92
    .line 93
    const-string/jumbo v13, "png"

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_5
    const-string v0, "Error: Unknown option: "

    .line 98
    .line 99
    invoke-virtual {v0, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    return v7

    .line 107
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v8

    .line 111
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v6

    .line 115
    if-nez v6, :cond_7

    .line 116
    .line 117
    invoke-static {}, Ljava/time/Clock;->systemDefaultZone()Ljava/time/Clock;

    .line 118
    .line 119
    .line 120
    move-result-object v6

    .line 121
    invoke-static {v6}, Ljava/time/LocalDateTime;->now(Ljava/time/Clock;)Ljava/time/LocalDateTime;

    .line 122
    .line 123
    .line 124
    move-result-object v6

    .line 125
    sget-object v14, Lcom/android/server/am/ActivityManagerShellCommand;->LOG_NAME_TIME_FORMATTER:Ljava/time/format/DateTimeFormatter;

    .line 126
    .line 127
    invoke-virtual {v14, v6}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v6

    .line 131
    const-string v14, "/data/local/tmp/heapdump-"

    .line 132
    .line 133
    const-string v15, ".prof"

    .line 134
    .line 135
    invoke-static {v14, v6, v15}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v6

    .line 139
    :cond_7
    move-object v14, v6

    .line 140
    const-string/jumbo v6, "w"

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0, v14, v6}, Landroid/os/ShellCommand;->openFileForSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    .line 144
    .line 145
    .line 146
    move-result-object v15

    .line 147
    if-nez v15, :cond_8

    .line 148
    .line 149
    return v7

    .line 150
    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    const-string v7, "File: "

    .line 153
    .line 154
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v6

    .line 164
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->flush()V

    .line 168
    .line 169
    .line 170
    new-instance v6, Ljava/util/concurrent/CountDownLatch;

    .line 171
    .line 172
    invoke-direct {v6, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 173
    .line 174
    .line 175
    new-instance v3, Landroid/os/RemoteCallback;

    .line 176
    .line 177
    new-instance v7, Lcom/android/server/am/ActivityManagerShellCommand$2;

    .line 178
    .line 179
    invoke-direct {v7, v6}, Lcom/android/server/am/ActivityManagerShellCommand$2;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    .line 180
    .line 181
    .line 182
    invoke-direct {v3, v7, v5}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;Landroid/os/Handler;)V

    .line 183
    .line 184
    .line 185
    iget-object v7, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Lcom/android/server/am/ActivityManagerService;

    .line 186
    .line 187
    move-object/from16 v16, v3

    .line 188
    .line 189
    invoke-virtual/range {v7 .. v16}, Lcom/android/server/am/ActivityManagerService;->dumpHeap(Ljava/lang/String;IZZZLjava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/RemoteCallback;)Z

    .line 190
    .line 191
    .line 192
    const-string v0, "Waiting for dump to finish..."

    .line 193
    .line 194
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->flush()V

    .line 198
    .line 199
    .line 200
    :try_start_0
    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    .line 202
    .line 203
    goto :goto_2

    .line 204
    :catch_0
    const-string v0, "Caught InterruptedException"

    .line 205
    .line 206
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    :goto_2
    return v4
.end method

.method public final runFgsNotificationRateLimit()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-string/jumbo v1, "enable"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    const-string/jumbo v1, "disable"

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 29
    .line 30
    const-string v0, "Argument must be either \'enable\' or \'disable\'"

    .line 31
    .line 32
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p0

    .line 36
    :cond_1
    const/4 v0, 0x1

    .line 37
    :goto_0
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Lcom/android/server/am/ActivityManagerService;

    .line 38
    .line 39
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerService;->enableFgsNotificationRateLimit(Z)Z

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final runForceStop()I
    .locals 8

    .line 1
    const/4 v0, -0x1

    .line 2
    move v1, v0

    .line 3
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    if-eqz v2, :cond_1

    .line 8
    .line 9
    const-string v1, "--user"

    .line 10
    .line 11
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    const-string v1, "Error: Unknown option: "

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return v0

    .line 40
    :cond_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    const-string v4, "CscFeature_Framework_ConfigForbiddenADBKillForceStopApps"

    .line 49
    .line 50
    const-string v5, ""

    .line 51
    .line 52
    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    const-string v4, " "

    .line 57
    .line 58
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    const/4 v5, 0x0

    .line 67
    if-nez v4, :cond_3

    .line 68
    .line 69
    const-string v4, ","

    .line 70
    .line 71
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    array-length v4, v3

    .line 76
    move v6, v5

    .line 77
    :goto_1
    if-ge v6, v4, :cond_3

    .line 78
    .line 79
    aget-object v7, v3, v6

    .line 80
    .line 81
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v7

    .line 85
    if-eqz v7, :cond_2

    .line 86
    .line 87
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    const-string v1, "Error: cannot force-stop app - package: "

    .line 92
    .line 93
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    return v0

    .line 101
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_3
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Lcom/android/server/am/ActivityManagerService;

    .line 105
    .line 106
    invoke-virtual {p0, v2, v1}, Lcom/android/server/am/ActivityManagerService;->forceStopPackage(Ljava/lang/String;I)V

    .line 107
    .line 108
    .line 109
    return v5
.end method

.method public final runFreeze(Ljava/io/PrintWriter;Z)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const-string v2, "--sticky"

    .line 9
    .line 10
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v0, v1

    .line 16
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getProcessFromShell()Lcom/android/server/am/ProcessRecord;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    if-nez v2, :cond_1

    .line 21
    .line 22
    const/4 p0, -0x1

    .line 23
    return p0

    .line 24
    :cond_1
    if-eqz p2, :cond_2

    .line 25
    .line 26
    const-string v3, "Freezing"

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_2
    const-string v3, "Unfreezing"

    .line 30
    .line 31
    :goto_1
    const-string v4, " process "

    .line 32
    .line 33
    invoke-static {p1, v3, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    new-instance v3, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string v4, " ("

    .line 52
    .line 53
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget v4, v2, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 57
    .line 58
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v4, ") sticky="

    .line 62
    .line 63
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    .line 77
    .line 78
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 79
    .line 80
    .line 81
    monitor-enter p1

    .line 82
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    .line 83
    .line 84
    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    .line 85
    .line 86
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 87
    .line 88
    .line 89
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 90
    :try_start_1
    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 91
    .line 92
    iput-boolean v0, v4, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezeSticky:Z

    .line 93
    .line 94
    const/4 v0, 0x1

    .line 95
    if-eqz p2, :cond_3

    .line 96
    .line 97
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    .line 98
    .line 99
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    .line 100
    .line 101
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    .line 102
    .line 103
    const-wide/16 v4, 0x0

    .line 104
    .line 105
    invoke-virtual {p0, v4, v5, v2, v0}, Lcom/android/server/am/CachedAppOptimizer;->freezeAppAsyncInternalLSP(JLcom/android/server/am/ProcessRecord;Z)V

    .line 106
    .line 107
    .line 108
    goto :goto_2

    .line 109
    :catchall_0
    move-exception p0

    .line 110
    goto :goto_3

    .line 111
    :cond_3
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    .line 112
    .line 113
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    .line 114
    .line 115
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    .line 116
    .line 117
    invoke-virtual {p0, v2, v1, v0}, Lcom/android/server/am/CachedAppOptimizer;->unfreezeAppInternalLSP(Lcom/android/server/am/ProcessRecord;IZ)V

    .line 118
    .line 119
    .line 120
    :goto_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    :try_start_2
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 122
    .line 123
    .line 124
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 125
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 126
    .line 127
    .line 128
    return v1

    .line 129
    :catchall_1
    move-exception p0

    .line 130
    goto :goto_4

    .line 131
    :goto_3
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 132
    :try_start_4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 133
    .line 134
    .line 135
    throw p0

    .line 136
    :goto_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 137
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 138
    .line 139
    .line 140
    throw p0
.end method

.method public final runGetBgRestrictionLevel(Ljava/io/PrintWriter;)I
    .locals 4

    .line 1
    const/4 v0, -0x2

    .line 2
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    const-string v0, "--user"

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const-string p1, "Error: Unknown option: "

    .line 30
    .line 31
    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const/4 p0, -0x1

    .line 39
    return p0

    .line 40
    :cond_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    .line 45
    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    const/16 v3, 0x3e8

    .line 54
    .line 55
    if-eq v2, v3, :cond_3

    .line 56
    .line 57
    if-eqz v2, :cond_3

    .line 58
    .line 59
    const/16 v3, 0x7d0

    .line 60
    .line 61
    if-ne v2, v3, :cond_2

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    .line 65
    .line 66
    const-string p1, "Don\'t have permission to query app background restriction level"

    .line 67
    .line 68
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw p0

    .line 72
    :cond_3
    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 73
    .line 74
    .line 75
    move-result-wide v2

    .line 76
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mInternal:Landroid/app/ActivityManagerInternal;

    .line 77
    .line 78
    invoke-virtual {p0, v1, v0}, Landroid/app/ActivityManagerInternal;->getRestrictionLevel(Ljava/lang/String;I)I

    .line 79
    .line 80
    .line 81
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 83
    .line 84
    .line 85
    invoke-static {p0}, Landroid/app/ActivityManager;->restrictionLevelToName(I)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    const/4 p0, 0x0

    .line 93
    return p0

    .line 94
    :catchall_0
    move-exception p0

    .line 95
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 96
    .line 97
    .line 98
    throw p0
.end method

.method public final runGetConfig(Ljava/io/PrintWriter;)I
    .locals 13

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    move v5, v0

    .line 4
    move v2, v1

    .line 5
    move v3, v2

    .line 6
    move v4, v3

    .line 7
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v6

    .line 11
    if-eqz v6, :cond_6

    .line 12
    .line 13
    const-string v7, "--days"

    .line 14
    .line 15
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v7

    .line 19
    if-eqz v7, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    if-lez v5, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 33
    .line 34
    const-string p1, "--days must be a positive integer"

    .line 35
    .line 36
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p0

    .line 40
    :cond_1
    const-string v7, "--proto"

    .line 41
    .line 42
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v7

    .line 46
    const/4 v8, 0x1

    .line 47
    if-eqz v7, :cond_2

    .line 48
    .line 49
    move v3, v8

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    const-string v7, "--device"

    .line 52
    .line 53
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v7

    .line 57
    if-eqz v7, :cond_3

    .line 58
    .line 59
    move v4, v8

    .line 60
    goto :goto_0

    .line 61
    :cond_3
    const-string v2, "--display"

    .line 62
    .line 63
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-eqz v2, :cond_5

    .line 68
    .line 69
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-ltz v2, :cond_4

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 81
    .line 82
    const-string p1, "--display must be a non-negative integer"

    .line 83
    .line 84
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw p0

    .line 88
    :cond_5
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    const-string p1, "Error: Unknown option: "

    .line 93
    .line 94
    invoke-virtual {p1, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    return v0

    .line 102
    :cond_6
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Lcom/android/server/am/ActivityManagerService;

    .line 103
    .line 104
    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 105
    .line 106
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityTaskManagerService;->getConfiguration()Landroid/content/res/Configuration;

    .line 107
    .line 108
    .line 109
    move-result-object v6

    .line 110
    iget-object v7, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    .line 111
    .line 112
    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 113
    .line 114
    const-class v8, Landroid/hardware/display/DisplayManager;

    .line 115
    .line 116
    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v7

    .line 120
    check-cast v7, Landroid/hardware/display/DisplayManager;

    .line 121
    .line 122
    invoke-virtual {v7, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 123
    .line 124
    .line 125
    move-result-object v7

    .line 126
    if-nez v7, :cond_7

    .line 127
    .line 128
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    const-string p1, "Error: Display does not exist: "

    .line 133
    .line 134
    invoke-static {p0, p1, v2}, Lcom/android/server/accounts/AccountManagerServiceShellCommand$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 135
    .line 136
    .line 137
    return v0

    .line 138
    :cond_7
    new-instance v11, Landroid/util/DisplayMetrics;

    .line 139
    .line 140
    invoke-direct {v11}, Landroid/util/DisplayMetrics;-><init>()V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v7, v11}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 144
    .line 145
    .line 146
    if-eqz v3, :cond_9

    .line 147
    .line 148
    new-instance p1, Landroid/util/proto/ProtoOutputStream;

    .line 149
    .line 150
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutFileDescriptor()Ljava/io/FileDescriptor;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    invoke-direct {p1, v0}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 155
    .line 156
    .line 157
    const-wide v2, 0x10b00000001L

    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    invoke-virtual {v6, p1, v2, v3, v11}, Landroid/content/res/Configuration;->writeResConfigToProto(Landroid/util/proto/ProtoOutputStream;JLandroid/util/DisplayMetrics;)V

    .line 163
    .line 164
    .line 165
    if-eqz v4, :cond_8

    .line 166
    .line 167
    const-wide v5, 0x10b00000002L

    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    const/4 v7, 0x0

    .line 173
    move-object v3, p0

    .line 174
    move-object v4, p1

    .line 175
    move-object v8, v11

    .line 176
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/ActivityManagerShellCommand;->writeDeviceConfig(Landroid/util/proto/ProtoOutputStream;JLjava/io/PrintWriter;Landroid/util/DisplayMetrics;)V

    .line 177
    .line 178
    .line 179
    :cond_8
    invoke-virtual {p1}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 180
    .line 181
    .line 182
    goto/16 :goto_5

    .line 183
    .line 184
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 185
    .line 186
    const-string/jumbo v2, "config: "

    .line 187
    .line 188
    .line 189
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    invoke-static {v6, v11}, Landroid/content/res/Configuration;->resourceQualifierString(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v2

    .line 196
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    .line 207
    .line 208
    const-string v2, "abi: "

    .line 209
    .line 210
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    const-string v2, ","

    .line 214
    .line 215
    sget-object v3, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 216
    .line 217
    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v2

    .line 221
    invoke-static {v0, v2, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 222
    .line 223
    .line 224
    if-eqz v4, :cond_a

    .line 225
    .line 226
    const/4 v7, 0x0

    .line 227
    const-wide/16 v8, -0x1

    .line 228
    .line 229
    move-object v6, p0

    .line 230
    move-object v10, p1

    .line 231
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/am/ActivityManagerShellCommand;->writeDeviceConfig(Landroid/util/proto/ProtoOutputStream;JLjava/io/PrintWriter;Landroid/util/DisplayMetrics;)V

    .line 232
    .line 233
    .line 234
    :cond_a
    if-ltz v5, :cond_e

    .line 235
    .line 236
    const-string/jumbo p0, "usagestats"

    .line 237
    .line 238
    .line 239
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 240
    .line 241
    .line 242
    move-result-object p0

    .line 243
    invoke-static {p0}, Landroid/app/usage/IUsageStatsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/usage/IUsageStatsManager;

    .line 244
    .line 245
    .line 246
    move-result-object v6

    .line 247
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 248
    .line 249
    .line 250
    move-result-wide v10

    .line 251
    const p0, 0x5265c00

    .line 252
    .line 253
    .line 254
    mul-int/2addr v5, p0

    .line 255
    int-to-long v2, v5

    .line 256
    sub-long v8, v10, v2

    .line 257
    .line 258
    :try_start_0
    const-string/jumbo v12, "com.android.shell"

    .line 259
    .line 260
    .line 261
    const/4 v7, 0x4

    .line 262
    invoke-interface/range {v6 .. v12}, Landroid/app/usage/IUsageStatsManager;->queryConfigurationStats(IJJLjava/lang/String;)Landroid/content/pm/ParceledListSlice;

    .line 263
    .line 264
    .line 265
    move-result-object p0

    .line 266
    if-nez p0, :cond_b

    .line 267
    .line 268
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 269
    .line 270
    .line 271
    move-result-object p0

    .line 272
    goto :goto_3

    .line 273
    :cond_b
    new-instance v0, Landroid/util/ArrayMap;

    .line 274
    .line 275
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 276
    .line 277
    .line 278
    invoke-virtual {p0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    .line 279
    .line 280
    .line 281
    move-result-object p0

    .line 282
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 283
    .line 284
    .line 285
    move-result v2

    .line 286
    move v3, v1

    .line 287
    :goto_1
    if-ge v3, v2, :cond_d

    .line 288
    .line 289
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object v4

    .line 293
    check-cast v4, Landroid/app/usage/ConfigurationStats;

    .line 294
    .line 295
    invoke-virtual {v4}, Landroid/app/usage/ConfigurationStats;->getConfiguration()Landroid/content/res/Configuration;

    .line 296
    .line 297
    .line 298
    move-result-object v5

    .line 299
    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    .line 300
    .line 301
    .line 302
    move-result v5

    .line 303
    if-gez v5, :cond_c

    .line 304
    .line 305
    invoke-virtual {v4}, Landroid/app/usage/ConfigurationStats;->getConfiguration()Landroid/content/res/Configuration;

    .line 306
    .line 307
    .line 308
    move-result-object v5

    .line 309
    invoke-virtual {v4}, Landroid/app/usage/ConfigurationStats;->getActivationCount()I

    .line 310
    .line 311
    .line 312
    move-result v4

    .line 313
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 314
    .line 315
    .line 316
    move-result-object v4

    .line 317
    invoke-virtual {v0, v5, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    goto :goto_2

    .line 321
    :cond_c
    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 322
    .line 323
    .line 324
    move-result-object v6

    .line 325
    check-cast v6, Ljava/lang/Integer;

    .line 326
    .line 327
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 328
    .line 329
    .line 330
    move-result v6

    .line 331
    invoke-virtual {v4}, Landroid/app/usage/ConfigurationStats;->getActivationCount()I

    .line 332
    .line 333
    .line 334
    move-result v4

    .line 335
    add-int/2addr v6, v4

    .line 336
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 337
    .line 338
    .line 339
    move-result-object v4

    .line 340
    invoke-virtual {v0, v5, v4}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 344
    .line 345
    goto :goto_1

    .line 346
    :cond_d
    new-instance p0, Lcom/android/server/am/ActivityManagerShellCommand$4;

    .line 347
    .line 348
    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand$4;-><init>(Landroid/util/ArrayMap;)V

    .line 349
    .line 350
    .line 351
    new-instance v2, Ljava/util/ArrayList;

    .line 352
    .line 353
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 354
    .line 355
    .line 356
    move-result v3

    .line 357
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 358
    .line 359
    .line 360
    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 361
    .line 362
    .line 363
    move-result-object v0

    .line 364
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 365
    .line 366
    .line 367
    invoke-static {v2, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    .line 369
    .line 370
    move-object p0, v2

    .line 371
    goto :goto_3

    .line 372
    :catch_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 373
    .line 374
    .line 375
    move-result-object p0

    .line 376
    :goto_3
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 377
    .line 378
    .line 379
    move-result v0

    .line 380
    if-lez v0, :cond_e

    .line 381
    .line 382
    const-string/jumbo v2, "recentConfigs:"

    .line 383
    .line 384
    .line 385
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 386
    .line 387
    .line 388
    move v2, v1

    .line 389
    :goto_4
    if-ge v2, v0, :cond_e

    .line 390
    .line 391
    new-instance v3, Ljava/lang/StringBuilder;

    .line 392
    .line 393
    const-string v4, "  config: "

    .line 394
    .line 395
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 396
    .line 397
    .line 398
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 399
    .line 400
    .line 401
    move-result-object v4

    .line 402
    check-cast v4, Landroid/content/res/Configuration;

    .line 403
    .line 404
    invoke-static {v4}, Landroid/content/res/Configuration;->resourceQualifierString(Landroid/content/res/Configuration;)Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v4

    .line 408
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    .line 410
    .line 411
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object v3

    .line 415
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 416
    .line 417
    .line 418
    add-int/lit8 v2, v2, 0x1

    .line 419
    .line 420
    goto :goto_4

    .line 421
    :cond_e
    :goto_5
    return v1
.end method

.method public final runGetCurrentForegroundProcess(Ljava/io/PrintWriter;Landroid/app/IActivityManager;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/android/server/am/ActivityManagerShellCommand$ProcessObserver;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p1, v0, Lcom/android/server/am/ActivityManagerShellCommand$ProcessObserver;->mPw:Ljava/io/PrintWriter;

    .line 7
    .line 8
    iput-object p2, v0, Lcom/android/server/am/ActivityManagerShellCommand$ProcessObserver;->mIam:Landroid/app/IActivityManager;

    .line 9
    .line 10
    invoke-interface {p2, v0}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getRawInputStream()Ljava/io/InputStream;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    new-instance v1, Ljava/io/InputStreamReader;

    .line 18
    .line 19
    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 20
    .line 21
    .line 22
    new-instance p0, Ljava/io/BufferedReader;

    .line 23
    .line 24
    invoke-direct {p0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-gtz v2, :cond_0

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_0
    const-string/jumbo v2, "q"

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-nez v2, :cond_2

    .line 48
    .line 49
    const-string/jumbo v2, "quit"

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-eqz v2, :cond_1

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    const-string v3, "Invalid command: "

    .line 65
    .line 66
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    const-string v1, ""

    .line 80
    .line 81
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    :goto_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :catchall_0
    move-exception p0

    .line 89
    goto :goto_5

    .line 90
    :catch_0
    move-exception p0

    .line 91
    goto :goto_3

    .line 92
    :cond_2
    :goto_2
    invoke-interface {p2, v0}, Landroid/app/IActivityManager;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V

    .line 93
    .line 94
    .line 95
    goto :goto_4

    .line 96
    :goto_3
    :try_start_1
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    .line 101
    .line 102
    goto :goto_2

    .line 103
    :goto_4
    return-void

    .line 104
    :goto_5
    invoke-interface {p2, v0}, Landroid/app/IActivityManager;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V

    .line 105
    .line 106
    .line 107
    throw p0
.end method

.method public final runGetCurrentUser(Ljava/io/PrintWriter;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->getCurrentUserId()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    const/16 v0, -0x2710

    .line 8
    .line 9
    if-eq p0, v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(I)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 16
    .line 17
    const-string p1, "Current user not set"

    .line 18
    .line 19
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw p0
.end method

.method public final runGetInactive(Ljava/io/PrintWriter;)I
    .locals 3

    .line 1
    const/4 v0, -0x2

    .line 2
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    const-string v0, "--user"

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const-string p1, "Error: Unknown option: "

    .line 30
    .line 31
    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const/4 p0, -0x1

    .line 39
    return p0

    .line 40
    :cond_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    const-string/jumbo v1, "usagestats"

    .line 45
    .line 46
    .line 47
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-static {v1}, Landroid/app/usage/IUsageStatsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/usage/IUsageStatsManager;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    const-string/jumbo v2, "com.android.shell"

    .line 56
    .line 57
    .line 58
    invoke-interface {v1, p0, v0, v2}, Landroid/app/usage/IUsageStatsManager;->isAppInactive(Ljava/lang/String;ILjava/lang/String;)Z

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    const-string v1, "Idle="

    .line 65
    .line 66
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    const/4 p0, 0x0

    .line 80
    return p0
.end method

.method public final runGetIsolatedProcesses(Ljava/io/PrintWriter;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    const-string v1, "android.permission.DUMP"

    .line 4
    .line 5
    const-string/jumbo v2, "getIsolatedProcesses()"

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mInternal:Landroid/app/ActivityManagerInternal;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    invoke-virtual {v0, p0}, Landroid/app/ActivityManagerInternal;->getIsolatedProcesses(I)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    const-string v0, "["

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    if-eqz p0, :cond_1

    .line 33
    .line 34
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    const/4 v1, 0x0

    .line 39
    :goto_0
    if-ge v1, v0, :cond_1

    .line 40
    .line 41
    if-lez v1, :cond_0

    .line 42
    .line 43
    const-string v2, ", "

    .line 44
    .line 45
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :cond_0
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    add-int/lit8 v1, v1, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    const-string p0, "]"

    .line 59
    .line 60
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public final runGetStandbyBucket(Ljava/io/PrintWriter;)I
    .locals 3

    .line 1
    const/4 v0, -0x2

    .line 2
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    const-string v0, "--user"

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const-string p1, "Error: Unknown option: "

    .line 30
    .line 31
    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const/4 p0, -0x1

    .line 39
    return p0

    .line 40
    :cond_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    const-string/jumbo v1, "usagestats"

    .line 45
    .line 46
    .line 47
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-static {v1}, Landroid/app/usage/IUsageStatsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/usage/IUsageStatsManager;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    if-eqz p0, :cond_2

    .line 56
    .line 57
    const/4 v2, 0x0

    .line 58
    invoke-interface {v1, p0, v2, v0}, Landroid/app/usage/IUsageStatsManager;->getAppStandbyBucket(Ljava/lang/String;Ljava/lang/String;I)I

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(I)V

    .line 63
    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_2
    const-string/jumbo p0, "com.android.shell"

    .line 67
    .line 68
    .line 69
    invoke-interface {v1, p0, v0}, Landroid/app/usage/IUsageStatsManager;->getAppStandbyBuckets(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-virtual {p0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-eqz v0, :cond_3

    .line 86
    .line 87
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    check-cast v0, Landroid/app/usage/AppStandbyInfo;

    .line 92
    .line 93
    iget-object v1, v0, Landroid/app/usage/AppStandbyInfo;->mPackageName:Ljava/lang/String;

    .line 94
    .line 95
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    const-string v1, ": "

    .line 99
    .line 100
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    iget v0, v0, Landroid/app/usage/AppStandbyInfo;->mStandbyBucket:I

    .line 104
    .line 105
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 106
    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_3
    :goto_2
    const/4 p0, 0x0

    .line 110
    return p0
.end method

.method public final runGetStartedUserState(Ljava/io/PrintWriter;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    const-string v1, "android.permission.DUMP"

    .line 4
    .line 5
    const-string/jumbo v2, "runGetStartedUserState()"

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Lcom/android/server/am/UserController;->getStartedUserState(I)Lcom/android/server/am/UserState;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    iget p0, p0, Lcom/android/server/am/UserState;->state:I

    .line 28
    .line 29
    invoke-static {p0}, Lcom/android/server/am/UserState;->stateToString(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catch_0
    const-string p0, "User is not started: "

    .line 38
    .line 39
    invoke-static {p1, p0, v0}, Lcom/android/server/accounts/AccountManagerServiceShellCommand$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 40
    .line 41
    .line 42
    :goto_0
    return-void
.end method

.method public final runHang(Ljava/io/PrintWriter;)I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    const/4 v3, 0x1

    .line 8
    if-eqz v2, :cond_1

    .line 9
    .line 10
    const-string v1, "--allow-restart"

    .line 11
    .line 12
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    move v1, v3

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    const-string p1, "Error: Unknown option: "

    .line 25
    .line 26
    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const/4 p0, -0x1

    .line 34
    return p0

    .line 35
    :cond_1
    const-string v2, "Hanging the system..."

    .line 36
    .line 37
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 41
    .line 42
    .line 43
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Lcom/android/server/am/ActivityManagerService;

    .line 44
    .line 45
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getShellCallback()Landroid/os/ShellCallback;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {p0}, Landroid/os/ShellCallback;->getShellCallbackBinder()Landroid/os/IBinder;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-virtual {v2, p0, v1}, Lcom/android/server/am/ActivityManagerService;->hang(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    .line 56
    return v0

    .line 57
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    const-string v0, "Hanging failed, since caller "

    .line 60
    .line 61
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v0, " did not provide a ShellCallback!"

    .line 72
    .line 73
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 84
    .line 85
    .line 86
    return v3
.end method

.method public final runIdleMaintenance(Ljava/io/PrintWriter;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const-string p1, "Error: Unknown option: "

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const/4 p0, -0x1

    .line 21
    return p0

    .line 22
    :cond_0
    const-string v0, "Performing idle maintenance..."

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Lcom/android/server/am/ActivityManagerService;

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/android/server/am/ActivityManagerService;->sendIdleJobTrigger()V

    .line 30
    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->performIdleMaintenance()V

    .line 35
    .line 36
    .line 37
    const/4 p0, 0x0

    .line 38
    return p0
.end method

.method public final runIsUserStopped(Ljava/io/PrintWriter;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/android/server/am/UserController;->getStartedUserState(I)Lcom/android/server/am/UserState;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    if-nez p0, :cond_0

    .line 18
    .line 19
    const/4 p0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    :goto_0
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Z)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final runKill()I
    .locals 8

    .line 1
    const/4 v0, -0x1

    .line 2
    move v1, v0

    .line 3
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    if-eqz v2, :cond_1

    .line 8
    .line 9
    const-string v1, "--user"

    .line 10
    .line 11
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    const-string v1, "Error: Unknown option: "

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return v0

    .line 40
    :cond_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    const-string v4, "CscFeature_Framework_ConfigForbiddenADBKillForceStopApps"

    .line 49
    .line 50
    const-string v5, ""

    .line 51
    .line 52
    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    const-string v4, " "

    .line 57
    .line 58
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    const/4 v5, 0x0

    .line 67
    if-nez v4, :cond_3

    .line 68
    .line 69
    const-string v4, ","

    .line 70
    .line 71
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    array-length v4, v3

    .line 76
    move v6, v5

    .line 77
    :goto_1
    if-ge v6, v4, :cond_3

    .line 78
    .line 79
    aget-object v7, v3, v6

    .line 80
    .line 81
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v7

    .line 85
    if-eqz v7, :cond_2

    .line 86
    .line 87
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    const-string v1, "Error: cannot kill app - package: "

    .line 92
    .line 93
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    return v0

    .line 101
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_3
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Lcom/android/server/am/ActivityManagerService;

    .line 105
    .line 106
    invoke-virtual {p0, v2, v1}, Lcom/android/server/am/ActivityManagerService;->killBackgroundProcesses(Ljava/lang/String;I)V

    .line 107
    .line 108
    .line 109
    return v5
.end method

.method public final runMakeIdle()I
    .locals 3

    .line 1
    const/4 v0, -0x1

    .line 2
    move v1, v0

    .line 3
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    if-eqz v2, :cond_1

    .line 8
    .line 9
    const-string v1, "--user"

    .line 10
    .line 11
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    const-string v1, "Error: Unknown option: "

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return v0

    .line 40
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Lcom/android/server/am/ActivityManagerService;

    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-virtual {v0, p0, v1}, Lcom/android/server/am/ActivityManagerService;->makePackageIdle(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    const/4 p0, 0x0

    .line 50
    return p0
.end method

.method public final runMemoryFactor(Ljava/io/PrintWriter;)I
    .locals 11

    .line 1
    const-string v0, "NORMAL"

    .line 2
    .line 3
    const-string v1, "MODERATE"

    .line 4
    .line 5
    const-string v2, "LOW"

    .line 6
    .line 7
    const-string v3, "CRITICAL"

    .line 8
    .line 9
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    .line 10
    .line 11
    const-string v5, "android.permission.WRITE_SECURE_SETTINGS"

    .line 12
    .line 13
    const-string/jumbo v6, "runMemoryFactor()"

    .line 14
    .line 15
    .line 16
    invoke-virtual {v4, v5, v6}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    const/4 v5, 0x3

    .line 27
    const/4 v6, 0x2

    .line 28
    const/4 v7, 0x1

    .line 29
    const/4 v8, 0x0

    .line 30
    const/4 v9, -0x1

    .line 31
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 32
    .line 33
    .line 34
    move-result v10

    .line 35
    sparse-switch v10, :sswitch_data_0

    .line 36
    .line 37
    .line 38
    :goto_0
    move v10, v9

    .line 39
    goto :goto_1

    .line 40
    :sswitch_0
    const-string/jumbo v10, "reset"

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v10

    .line 47
    if-nez v10, :cond_0

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    move v10, v6

    .line 51
    goto :goto_1

    .line 52
    :sswitch_1
    const-string/jumbo v10, "show"

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v10

    .line 59
    if-nez v10, :cond_1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    move v10, v7

    .line 63
    goto :goto_1

    .line 64
    :sswitch_2
    const-string/jumbo v10, "set"

    .line 65
    .line 66
    .line 67
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v10

    .line 71
    if-nez v10, :cond_2

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_2
    move v10, v8

    .line 75
    :goto_1
    packed-switch v10, :pswitch_data_0

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    const-string p1, "Error: unknown command \'"

    .line 83
    .line 84
    const-string v0, "\'"

    .line 85
    .line 86
    invoke-static {p0, p1, v4, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    return v9

    .line 90
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    .line 91
    .line 92
    invoke-virtual {p0, v9}, Lcom/android/server/am/ActivityManagerService;->setMemFactorOverride(I)V

    .line 93
    .line 94
    .line 95
    return v8

    .line 96
    :pswitch_1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    .line 97
    .line 98
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->getMemoryTrimLevel()I

    .line 99
    .line 100
    .line 101
    move-result p0

    .line 102
    if-eq p0, v9, :cond_7

    .line 103
    .line 104
    if-eqz p0, :cond_6

    .line 105
    .line 106
    if-eq p0, v7, :cond_5

    .line 107
    .line 108
    if-eq p0, v6, :cond_4

    .line 109
    .line 110
    if-eq p0, v5, :cond_3

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_3
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_4
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_5
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_6
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_7
    const-string p0, "<UNKNOWN>"

    .line 130
    .line 131
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    :goto_2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 135
    .line 136
    .line 137
    return v8

    .line 138
    :pswitch_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 146
    .line 147
    .line 148
    move-result v4

    .line 149
    sparse-switch v4, :sswitch_data_1

    .line 150
    .line 151
    .line 152
    :goto_3
    move v0, v9

    .line 153
    goto :goto_4

    .line 154
    :sswitch_3
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    if-nez v0, :cond_8

    .line 159
    .line 160
    goto :goto_3

    .line 161
    :cond_8
    move v0, v5

    .line 162
    goto :goto_4

    .line 163
    :sswitch_4
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    if-nez v0, :cond_9

    .line 168
    .line 169
    goto :goto_3

    .line 170
    :cond_9
    move v0, v6

    .line 171
    goto :goto_4

    .line 172
    :sswitch_5
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    if-nez v0, :cond_a

    .line 177
    .line 178
    goto :goto_3

    .line 179
    :cond_a
    move v0, v7

    .line 180
    goto :goto_4

    .line 181
    :sswitch_6
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v0

    .line 185
    if-nez v0, :cond_b

    .line 186
    .line 187
    goto :goto_3

    .line 188
    :cond_b
    move v0, v8

    .line 189
    :goto_4
    packed-switch v0, :pswitch_data_1

    .line 190
    .line 191
    .line 192
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 193
    .line 194
    .line 195
    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    goto :goto_5

    .line 197
    :catch_0
    move v0, v9

    .line 198
    :goto_5
    if-ltz v0, :cond_d

    .line 199
    .line 200
    if-le v0, v5, :cond_c

    .line 201
    .line 202
    goto :goto_6

    .line 203
    :cond_c
    move v5, v0

    .line 204
    goto :goto_7

    .line 205
    :cond_d
    :goto_6
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 206
    .line 207
    .line 208
    move-result-object p0

    .line 209
    const-string v0, "Error: Unknown level option: "

    .line 210
    .line 211
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    move v8, v9

    .line 219
    goto :goto_8

    .line 220
    :pswitch_3
    move v5, v7

    .line 221
    goto :goto_7

    .line 222
    :pswitch_4
    move v5, v6

    .line 223
    goto :goto_7

    .line 224
    :pswitch_5
    move v5, v8

    .line 225
    :goto_7
    :pswitch_6
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    .line 226
    .line 227
    invoke-virtual {p0, v5}, Lcom/android/server/am/ActivityManagerService;->setMemFactorOverride(I)V

    .line 228
    .line 229
    .line 230
    :goto_8
    return v8

    .line 231
    :sswitch_data_0
    .sparse-switch
        0x1bc62 -> :sswitch_2
        0x35dafd -> :sswitch_1
        0x6761d4f -> :sswitch_0
    .end sparse-switch

    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    :sswitch_data_1
    .sparse-switch
        -0x76664f19 -> :sswitch_6
        -0x5cfe9861 -> :sswitch_5
        0x12734 -> :sswitch_4
        0x9c2ed03 -> :sswitch_3
    .end sparse-switch

    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public final runMonitor(Ljava/io/PrintWriter;)I
    .locals 14

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    move-object v6, v0

    .line 4
    move-object v9, v6

    .line 5
    move v7, v1

    .line 6
    move v8, v7

    .line 7
    move v10, v8

    .line 8
    move v11, v10

    .line 9
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const/4 v3, -0x1

    .line 14
    const/4 v12, 0x1

    .line 15
    if-eqz v2, :cond_6

    .line 16
    .line 17
    const-string v4, "--gdb"

    .line 18
    .line 19
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-eqz v4, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v6

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const-string v4, "-p"

    .line 31
    .line 32
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_1

    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v9

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const-string v4, "-m"

    .line 44
    .line 45
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    if-eqz v4, :cond_2

    .line 50
    .line 51
    move v7, v12

    .line 52
    goto :goto_0

    .line 53
    :cond_2
    const-string v4, "-s"

    .line 54
    .line 55
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    if-eqz v4, :cond_3

    .line 60
    .line 61
    move v8, v12

    .line 62
    goto :goto_0

    .line 63
    :cond_3
    const-string v4, "-c"

    .line 64
    .line 65
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    if-eqz v4, :cond_4

    .line 70
    .line 71
    move v10, v12

    .line 72
    goto :goto_0

    .line 73
    :cond_4
    const-string v4, "-k"

    .line 74
    .line 75
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    if-eqz v4, :cond_5

    .line 80
    .line 81
    move v11, v12

    .line 82
    goto :goto_0

    .line 83
    :cond_5
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    const-string p1, "Error: Unknown option: "

    .line 88
    .line 89
    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    return v3

    .line 97
    :cond_6
    if-eqz v10, :cond_7

    .line 98
    .line 99
    if-eqz v11, :cond_7

    .line 100
    .line 101
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    const-string p1, "Error: -k and -c options can\'t be used together."

    .line 106
    .line 107
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    return v3

    .line 111
    :cond_7
    new-instance v13, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;

    .line 112
    .line 113
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Lcom/android/server/am/ActivityManagerService;

    .line 114
    .line 115
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getRawInputStream()Ljava/io/InputStream;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    move-object v2, v13

    .line 120
    move-object v4, p1

    .line 121
    invoke-direct/range {v2 .. v11}, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;-><init>(Landroid/app/IActivityManager;Ljava/io/PrintWriter;Ljava/io/InputStream;Ljava/lang/String;ZZLjava/lang/String;ZZ)V

    .line 122
    .line 123
    .line 124
    :try_start_0
    invoke-virtual {v13}, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->printMessageForState()V

    .line 125
    .line 126
    .line 127
    iget-object p0, v13, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    .line 128
    .line 129
    invoke-virtual {p0}, Ljava/io/PrintWriter;->flush()V

    .line 130
    .line 131
    .line 132
    iget-object p0, v13, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mInterface:Landroid/app/IActivityManager;

    .line 133
    .line 134
    iget-boolean p1, v13, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mMonkey:Z

    .line 135
    .line 136
    invoke-interface {p0, v13, p1}, Landroid/app/IActivityManager;->setActivityController(Landroid/app/IActivityController;Z)V

    .line 137
    .line 138
    .line 139
    iput v1, v13, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mState:I

    .line 140
    .line 141
    new-instance p0, Ljava/io/InputStreamReader;

    .line 142
    .line 143
    iget-object p1, v13, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mInput:Ljava/io/InputStream;

    .line 144
    .line 145
    invoke-direct {p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 146
    .line 147
    .line 148
    new-instance p1, Ljava/io/BufferedReader;

    .line 149
    .line 150
    invoke-direct {p1, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 151
    .line 152
    .line 153
    :goto_1
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    if-eqz p0, :cond_1d

    .line 158
    .line 159
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 160
    .line 161
    .line 162
    move-result v2

    .line 163
    if-gtz v2, :cond_8

    .line 164
    .line 165
    move p0, v1

    .line 166
    goto/16 :goto_a

    .line 167
    .line 168
    :cond_8
    const-string/jumbo v2, "q"

    .line 169
    .line 170
    .line 171
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v2

    .line 175
    if-nez v2, :cond_1c

    .line 176
    .line 177
    const-string/jumbo v2, "quit"

    .line 178
    .line 179
    .line 180
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result v2

    .line 184
    if-eqz v2, :cond_9

    .line 185
    .line 186
    goto/16 :goto_d

    .line 187
    .line 188
    :cond_9
    iget v2, v13, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mState:I

    .line 189
    .line 190
    if-ne v2, v12, :cond_e

    .line 191
    .line 192
    const-string/jumbo v2, "c"

    .line 193
    .line 194
    .line 195
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result v2

    .line 199
    if-nez v2, :cond_d

    .line 200
    .line 201
    const-string/jumbo v2, "continue"

    .line 202
    .line 203
    .line 204
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result v2

    .line 208
    if-eqz v2, :cond_a

    .line 209
    .line 210
    goto :goto_3

    .line 211
    :cond_a
    const-string/jumbo v2, "k"

    .line 212
    .line 213
    .line 214
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    move-result v2

    .line 218
    if-nez v2, :cond_c

    .line 219
    .line 220
    const-string/jumbo v2, "kill"

    .line 221
    .line 222
    .line 223
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    move-result v2

    .line 227
    if-eqz v2, :cond_b

    .line 228
    .line 229
    goto :goto_2

    .line 230
    :cond_b
    iget-object v2, v13, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    .line 231
    .line 232
    new-instance v3, Ljava/lang/StringBuilder;

    .line 233
    .line 234
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 235
    .line 236
    .line 237
    const-string v4, "Invalid command: "

    .line 238
    .line 239
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object p0

    .line 249
    invoke-virtual {v2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    goto/16 :goto_9

    .line 253
    .line 254
    :catchall_0
    move-exception p0

    .line 255
    goto/16 :goto_11

    .line 256
    .line 257
    :catch_0
    move-exception p0

    .line 258
    goto/16 :goto_f

    .line 259
    .line 260
    :cond_c
    :goto_2
    invoke-virtual {v13, v12}, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->resumeController(I)V

    .line 261
    .line 262
    .line 263
    goto/16 :goto_9

    .line 264
    .line 265
    :cond_d
    :goto_3
    invoke-virtual {v13, v1}, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->resumeController(I)V

    .line 266
    .line 267
    .line 268
    goto/16 :goto_9

    .line 269
    .line 270
    :cond_e
    const/4 v3, 0x3

    .line 271
    const/4 v4, 0x2

    .line 272
    if-ne v2, v3, :cond_15

    .line 273
    .line 274
    const-string/jumbo v2, "c"

    .line 275
    .line 276
    .line 277
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 278
    .line 279
    .line 280
    move-result v2

    .line 281
    if-nez v2, :cond_14

    .line 282
    .line 283
    const-string/jumbo v2, "continue"

    .line 284
    .line 285
    .line 286
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 287
    .line 288
    .line 289
    move-result v2

    .line 290
    if-eqz v2, :cond_f

    .line 291
    .line 292
    goto :goto_6

    .line 293
    :cond_f
    const-string/jumbo v2, "k"

    .line 294
    .line 295
    .line 296
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 297
    .line 298
    .line 299
    move-result v2

    .line 300
    if-nez v2, :cond_13

    .line 301
    .line 302
    const-string/jumbo v2, "kill"

    .line 303
    .line 304
    .line 305
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 306
    .line 307
    .line 308
    move-result v2

    .line 309
    if-eqz v2, :cond_10

    .line 310
    .line 311
    goto :goto_5

    .line 312
    :cond_10
    const-string/jumbo v2, "w"

    .line 313
    .line 314
    .line 315
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 316
    .line 317
    .line 318
    move-result v2

    .line 319
    if-nez v2, :cond_12

    .line 320
    .line 321
    const-string/jumbo v2, "wait"

    .line 322
    .line 323
    .line 324
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 325
    .line 326
    .line 327
    move-result v2

    .line 328
    if-eqz v2, :cond_11

    .line 329
    .line 330
    goto :goto_4

    .line 331
    :cond_11
    iget-object v2, v13, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    .line 332
    .line 333
    new-instance v3, Ljava/lang/StringBuilder;

    .line 334
    .line 335
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 336
    .line 337
    .line 338
    const-string v4, "Invalid command: "

    .line 339
    .line 340
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object p0

    .line 350
    invoke-virtual {v2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    goto :goto_9

    .line 354
    :cond_12
    :goto_4
    invoke-virtual {v13, v4}, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->resumeController(I)V

    .line 355
    .line 356
    .line 357
    goto :goto_9

    .line 358
    :cond_13
    :goto_5
    invoke-virtual {v13, v12}, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->resumeController(I)V

    .line 359
    .line 360
    .line 361
    goto :goto_9

    .line 362
    :cond_14
    :goto_6
    invoke-virtual {v13, v1}, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->resumeController(I)V

    .line 363
    .line 364
    .line 365
    goto :goto_9

    .line 366
    :cond_15
    if-ne v2, v4, :cond_1a

    .line 367
    .line 368
    const-string/jumbo v2, "c"

    .line 369
    .line 370
    .line 371
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 372
    .line 373
    .line 374
    move-result v2

    .line 375
    if-nez v2, :cond_19

    .line 376
    .line 377
    const-string/jumbo v2, "continue"

    .line 378
    .line 379
    .line 380
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 381
    .line 382
    .line 383
    move-result v2

    .line 384
    if-eqz v2, :cond_16

    .line 385
    .line 386
    goto :goto_8

    .line 387
    :cond_16
    const-string/jumbo v2, "k"

    .line 388
    .line 389
    .line 390
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 391
    .line 392
    .line 393
    move-result v2

    .line 394
    if-nez v2, :cond_18

    .line 395
    .line 396
    const-string/jumbo v2, "kill"

    .line 397
    .line 398
    .line 399
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 400
    .line 401
    .line 402
    move-result v2

    .line 403
    if-eqz v2, :cond_17

    .line 404
    .line 405
    goto :goto_7

    .line 406
    :cond_17
    iget-object v2, v13, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    .line 407
    .line 408
    new-instance v3, Ljava/lang/StringBuilder;

    .line 409
    .line 410
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 411
    .line 412
    .line 413
    const-string v4, "Invalid command: "

    .line 414
    .line 415
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    .line 417
    .line 418
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    .line 420
    .line 421
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object p0

    .line 425
    invoke-virtual {v2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 426
    .line 427
    .line 428
    goto :goto_9

    .line 429
    :cond_18
    :goto_7
    invoke-virtual {v13, v12}, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->resumeController(I)V

    .line 430
    .line 431
    .line 432
    goto :goto_9

    .line 433
    :cond_19
    :goto_8
    invoke-virtual {v13, v1}, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->resumeController(I)V

    .line 434
    .line 435
    .line 436
    goto :goto_9

    .line 437
    :cond_1a
    iget-object v2, v13, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    .line 438
    .line 439
    new-instance v3, Ljava/lang/StringBuilder;

    .line 440
    .line 441
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 442
    .line 443
    .line 444
    const-string v4, "Invalid command: "

    .line 445
    .line 446
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    .line 448
    .line 449
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    .line 451
    .line 452
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 453
    .line 454
    .line 455
    move-result-object p0

    .line 456
    invoke-virtual {v2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 457
    .line 458
    .line 459
    :goto_9
    move p0, v12

    .line 460
    :goto_a
    monitor-enter v13
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 461
    if-eqz p0, :cond_1b

    .line 462
    .line 463
    :try_start_1
    iget-object p0, v13, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    .line 464
    .line 465
    const-string v2, ""

    .line 466
    .line 467
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 468
    .line 469
    .line 470
    goto :goto_b

    .line 471
    :catchall_1
    move-exception p0

    .line 472
    goto :goto_c

    .line 473
    :cond_1b
    :goto_b
    invoke-virtual {v13}, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->printMessageForState()V

    .line 474
    .line 475
    .line 476
    iget-object p0, v13, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    .line 477
    .line 478
    invoke-virtual {p0}, Ljava/io/PrintWriter;->flush()V

    .line 479
    .line 480
    .line 481
    monitor-exit v13

    .line 482
    goto/16 :goto_1

    .line 483
    .line 484
    :goto_c
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 485
    :try_start_2
    throw p0

    .line 486
    :cond_1c
    :goto_d
    invoke-virtual {v13, v1}, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->resumeController(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 487
    .line 488
    .line 489
    :cond_1d
    :goto_e
    iget-object p0, v13, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mInterface:Landroid/app/IActivityManager;

    .line 490
    .line 491
    iget-boolean p1, v13, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mMonkey:Z

    .line 492
    .line 493
    invoke-interface {p0, v0, p1}, Landroid/app/IActivityManager;->setActivityController(Landroid/app/IActivityController;Z)V

    .line 494
    .line 495
    .line 496
    goto :goto_10

    .line 497
    :goto_f
    :try_start_3
    iget-object p1, v13, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    .line 498
    .line 499
    invoke-virtual {p0, p1}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 500
    .line 501
    .line 502
    iget-object p0, v13, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    .line 503
    .line 504
    invoke-virtual {p0}, Ljava/io/PrintWriter;->flush()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 505
    .line 506
    .line 507
    goto :goto_e

    .line 508
    :goto_10
    return v1

    .line 509
    :goto_11
    iget-object p1, v13, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mInterface:Landroid/app/IActivityManager;

    .line 510
    .line 511
    iget-boolean v1, v13, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mMonkey:Z

    .line 512
    .line 513
    invoke-interface {p1, v0, v1}, Landroid/app/IActivityManager;->setActivityController(Landroid/app/IActivityController;Z)V

    .line 514
    .line 515
    .line 516
    throw p0
.end method

.method public final runPackageImportance(Ljava/io/PrintWriter;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Lcom/android/server/am/ActivityManagerService;

    .line 6
    .line 7
    const-string/jumbo v1, "com.android.shell"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/ActivityManagerService;->getPackageProcessState(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    invoke-static {p0}, Landroid/app/ActivityManager$RunningAppProcessInfo;->procStateToImportance(I)I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(I)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final runProfile()I
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    iput v2, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mSamplingInterval:I

    .line 9
    .line 10
    iput-boolean v2, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mStreaming:Z

    .line 11
    .line 12
    iput v2, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mClockType:I

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    iput v3, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mProfilerOutputVersion:I

    .line 16
    .line 17
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    const-string/jumbo v5, "start"

    .line 22
    .line 23
    .line 24
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v6

    .line 28
    const-string v7, "Error: Unknown option: "

    .line 29
    .line 30
    const-string v8, "--user"

    .line 31
    .line 32
    const/4 v9, -0x1

    .line 33
    const/4 v10, -0x2

    .line 34
    if-eqz v6, :cond_6

    .line 35
    .line 36
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    if-eqz v4, :cond_5

    .line 41
    .line 42
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    if-eqz v5, :cond_0

    .line 47
    .line 48
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-static {v4}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    move-result v10

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    const-string v5, "--clock-type"

    .line 58
    .line 59
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    if-eqz v5, :cond_1

    .line 64
    .line 65
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    invoke-static {v4}, Landroid/app/ProfilerInfo;->getClockTypeFromString(Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    iput v4, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mClockType:I

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    const-string v5, "--profiler-output-version"

    .line 77
    .line 78
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v5

    .line 82
    if-eqz v5, :cond_2

    .line 83
    .line 84
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    iput v4, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mProfilerOutputVersion:I

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_2
    const-string v5, "--streaming"

    .line 96
    .line 97
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v5

    .line 101
    if-eqz v5, :cond_3

    .line 102
    .line 103
    iput-boolean v3, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mStreaming:Z

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_3
    const-string v5, "--sampling"

    .line 107
    .line 108
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v5

    .line 112
    if-eqz v5, :cond_4

    .line 113
    .line 114
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    move-result v4

    .line 122
    iput v4, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mSamplingInterval:I

    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_4
    invoke-virtual {v7, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    return v9

    .line 133
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v4

    .line 137
    :goto_1
    move v14, v3

    .line 138
    :goto_2
    move-object v12, v4

    .line 139
    move v13, v10

    .line 140
    goto :goto_5

    .line 141
    :cond_6
    const-string/jumbo v6, "stop"

    .line 142
    .line 143
    .line 144
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v11

    .line 148
    if-eqz v11, :cond_9

    .line 149
    .line 150
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    if-eqz v3, :cond_8

    .line 155
    .line 156
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v4

    .line 160
    if-eqz v4, :cond_7

    .line 161
    .line 162
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    invoke-static {v3}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 167
    .line 168
    .line 169
    move-result v10

    .line 170
    goto :goto_3

    .line 171
    :cond_7
    invoke-virtual {v7, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    return v9

    .line 179
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v4

    .line 183
    :goto_4
    move v14, v2

    .line 184
    goto :goto_2

    .line 185
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v7

    .line 189
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move-result v5

    .line 193
    if-eqz v5, :cond_a

    .line 194
    .line 195
    goto :goto_1

    .line 196
    :cond_a
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result v3

    .line 200
    if-eqz v3, :cond_e

    .line 201
    .line 202
    goto :goto_4

    .line 203
    :goto_5
    if-ne v13, v9, :cond_b

    .line 204
    .line 205
    const-string v0, "Error: Can\'t profile with user \'all\'"

    .line 206
    .line 207
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    return v9

    .line 211
    :cond_b
    if-eqz v14, :cond_d

    .line 212
    .line 213
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    const-string/jumbo v3, "w"

    .line 218
    .line 219
    .line 220
    invoke-virtual {v0, v1, v3}, Landroid/os/ShellCommand;->openFileForSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    .line 221
    .line 222
    .line 223
    move-result-object v17

    .line 224
    if-nez v17, :cond_c

    .line 225
    .line 226
    return v9

    .line 227
    :cond_c
    new-instance v3, Landroid/app/ProfilerInfo;

    .line 228
    .line 229
    iget v4, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mSamplingInterval:I

    .line 230
    .line 231
    iget-boolean v5, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mStreaming:Z

    .line 232
    .line 233
    iget v6, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mClockType:I

    .line 234
    .line 235
    iget v7, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mProfilerOutputVersion:I

    .line 236
    .line 237
    const/16 v21, 0x0

    .line 238
    .line 239
    const/16 v22, 0x0

    .line 240
    .line 241
    const/16 v19, 0x0

    .line 242
    .line 243
    move-object v15, v3

    .line 244
    move-object/from16 v16, v1

    .line 245
    .line 246
    move/from16 v18, v4

    .line 247
    .line 248
    move/from16 v20, v5

    .line 249
    .line 250
    move/from16 v23, v6

    .line 251
    .line 252
    move/from16 v24, v7

    .line 253
    .line 254
    invoke-direct/range {v15 .. v24}, Landroid/app/ProfilerInfo;-><init>(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;IZZLjava/lang/String;ZII)V

    .line 255
    .line 256
    .line 257
    goto :goto_6

    .line 258
    :cond_d
    const/4 v1, 0x0

    .line 259
    move-object v15, v1

    .line 260
    :goto_6
    iget-object v11, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Lcom/android/server/am/ActivityManagerService;

    .line 261
    .line 262
    const/16 v16, 0x0

    .line 263
    .line 264
    invoke-virtual/range {v11 .. v16}, Lcom/android/server/am/ActivityManagerService;->profileControl(Ljava/lang/String;IZLandroid/app/ProfilerInfo;I)Z

    .line 265
    .line 266
    .line 267
    return v2

    .line 268
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 269
    .line 270
    const-string v1, "Profile command "

    .line 271
    .line 272
    const-string v2, " not valid"

    .line 273
    .line 274
    invoke-static {v1, v4, v2}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v1

    .line 278
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    throw v0
.end method

.method public final runRestart(Ljava/io/PrintWriter;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const-string p1, "Error: Unknown option: "

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const/4 p0, -0x1

    .line 21
    return p0

    .line 22
    :cond_0
    const-string v0, "Restart the system..."

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 28
    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Lcom/android/server/am/ActivityManagerService;

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->restart()V

    .line 33
    .line 34
    .line 35
    const/4 p0, 0x0

    .line 36
    return p0
.end method

.method public final runScreenCompat()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string/jumbo v1, "on"

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    move v1, v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-string/jumbo v1, "off"

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    move v1, v2

    .line 28
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Lcom/android/server/am/ActivityManagerService;

    .line 33
    .line 34
    invoke-virtual {v3, v0, v1}, Lcom/android/server/am/ActivityManagerService;->setPackageScreenCompatMode(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    .line 37
    :catch_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    if-nez v0, :cond_1

    .line 42
    .line 43
    return v2

    .line 44
    :cond_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    const-string v1, "Error: enabled mode must be \'on\' or \'off\' at "

    .line 49
    .line 50
    invoke-static {p0, v1, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const/4 p0, -0x1

    .line 54
    return p0
.end method

.method public final runSendBroadcast(Ljava/io/PrintWriter;)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Ljava/io/PrintWriter;

    .line 4
    .line 5
    new-instance v2, Landroid/util/TeeWriter;

    .line 6
    .line 7
    const/4 v3, 0x2

    .line 8
    new-array v3, v3, [Ljava/io/Writer;

    .line 9
    .line 10
    sget-object v4, Lcom/android/server/am/ActivityManagerDebugConfig;->LOG_WRITER_INFO:Ljava/io/PrintWriter;

    .line 11
    .line 12
    const/4 v5, 0x0

    .line 13
    aput-object v4, v3, v5

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    aput-object p1, v3, v4

    .line 17
    .line 18
    invoke-direct {v2, v3}, Landroid/util/TeeWriter;-><init>([Ljava/io/Writer;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 22
    .line 23
    .line 24
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->makeIntent()Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    move-result-object v2
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    .line 28
    const/high16 v3, 0x400000

    .line 29
    .line 30
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 31
    .line 32
    .line 33
    new-instance v3, Lcom/android/server/am/ActivityManagerShellCommand$IntentReceiver;

    .line 34
    .line 35
    invoke-direct {v3, v1}, Lcom/android/server/am/ActivityManagerShellCommand$IntentReceiver;-><init>(Ljava/io/PrintWriter;)V

    .line 36
    .line 37
    .line 38
    iget-object v6, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mReceiverPermission:Ljava/lang/String;

    .line 39
    .line 40
    const/4 v7, 0x0

    .line 41
    if-nez v6, :cond_0

    .line 42
    .line 43
    move-object v15, v7

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    new-array v4, v4, [Ljava/lang/String;

    .line 46
    .line 47
    aput-object v6, v4, v5

    .line 48
    .line 49
    move-object v15, v4

    .line 50
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string v5, "Broadcasting: "

    .line 53
    .line 54
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 68
    .line 69
    .line 70
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mBroadcastOptions:Landroid/app/BroadcastOptions;

    .line 71
    .line 72
    if-nez v1, :cond_1

    .line 73
    .line 74
    move-object/from16 v19, v7

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_1
    invoke-virtual {v1}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    move-object/from16 v19, v1

    .line 82
    .line 83
    :goto_1
    iget-object v6, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Lcom/android/server/am/ActivityManagerService;

    .line 84
    .line 85
    iget v1, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    .line 86
    .line 87
    move/from16 v22, v1

    .line 88
    .line 89
    const/16 v20, 0x1

    .line 90
    .line 91
    const/16 v21, 0x0

    .line 92
    .line 93
    const/4 v7, 0x0

    .line 94
    const/4 v8, 0x0

    .line 95
    const/4 v10, 0x0

    .line 96
    const/4 v12, 0x0

    .line 97
    const/4 v13, 0x0

    .line 98
    const/4 v14, 0x0

    .line 99
    const/16 v16, 0x0

    .line 100
    .line 101
    const/16 v17, 0x0

    .line 102
    .line 103
    const/16 v18, -0x1

    .line 104
    .line 105
    move-object v9, v2

    .line 106
    move-object v11, v3

    .line 107
    invoke-virtual/range {v6 .. v22}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    const-string v4, "ActivityManager"

    .line 112
    .line 113
    const-string v5, "Enqueued broadcast %s: "

    .line 114
    .line 115
    invoke-static {v1, v5}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-static {v4, v5, v2}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    if-nez v1, :cond_3

    .line 127
    .line 128
    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mAsync:Z

    .line 129
    .line 130
    if-nez v0, :cond_3

    .line 131
    .line 132
    monitor-enter v3

    .line 133
    :goto_2
    :try_start_1
    iget-boolean v0, v3, Lcom/android/server/am/ActivityManagerShellCommand$IntentReceiver;->mFinished:Z

    .line 134
    .line 135
    if-nez v0, :cond_2

    .line 136
    .line 137
    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    .line 139
    .line 140
    goto :goto_2

    .line 141
    :catchall_0
    move-exception v0

    .line 142
    goto :goto_4

    .line 143
    :catch_0
    move-exception v0

    .line 144
    goto :goto_3

    .line 145
    :cond_2
    monitor-exit v3

    .line 146
    goto :goto_5

    .line 147
    :goto_3
    :try_start_2
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 148
    .line 149
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 150
    .line 151
    .line 152
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 153
    :goto_4
    monitor-exit v3

    .line 154
    throw v0

    .line 155
    :cond_3
    :goto_5
    return-void

    .line 156
    :catch_1
    move-exception v0

    .line 157
    move-object v1, v0

    .line 158
    new-instance v0, Ljava/lang/RuntimeException;

    .line 159
    .line 160
    invoke-virtual {v1}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    invoke-direct {v0, v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 165
    .line 166
    .line 167
    throw v0
.end method

.method public final runSendTrimMemory()I
    .locals 7

    .line 1
    const/4 v0, 0x5

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, -0x1

    .line 4
    const/4 v3, -0x2

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v4

    .line 9
    if-eqz v4, :cond_2

    .line 10
    .line 11
    const-string v3, "--user"

    .line 12
    .line 13
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-eqz v3, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-static {v3}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-ne v3, v2, :cond_0

    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    const-string v0, "Error: Can\'t use user \'all\'"

    .line 34
    .line 35
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return v2

    .line 39
    :cond_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    const-string v0, "Error: Unknown option: "

    .line 44
    .line 45
    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return v2

    .line 53
    :cond_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    sparse-switch v6, :sswitch_data_0

    .line 69
    .line 70
    .line 71
    :goto_0
    move v6, v2

    .line 72
    goto :goto_1

    .line 73
    :sswitch_0
    const-string v6, "HIDDEN"

    .line 74
    .line 75
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v6

    .line 79
    if-nez v6, :cond_3

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_3
    const/4 v6, 0x6

    .line 83
    goto :goto_1

    .line 84
    :sswitch_1
    const-string v6, "RUNNING_LOW"

    .line 85
    .line 86
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v6

    .line 90
    if-nez v6, :cond_4

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_4
    move v6, v0

    .line 94
    goto :goto_1

    .line 95
    :sswitch_2
    const-string v6, "COMPLETE"

    .line 96
    .line 97
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v6

    .line 101
    if-nez v6, :cond_5

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_5
    const/4 v6, 0x4

    .line 105
    goto :goto_1

    .line 106
    :sswitch_3
    const-string v6, "MODERATE"

    .line 107
    .line 108
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v6

    .line 112
    if-nez v6, :cond_6

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_6
    const/4 v6, 0x3

    .line 116
    goto :goto_1

    .line 117
    :sswitch_4
    const-string v6, "RUNNING_MODERATE"

    .line 118
    .line 119
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v6

    .line 123
    if-nez v6, :cond_7

    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_7
    const/4 v6, 0x2

    .line 127
    goto :goto_1

    .line 128
    :sswitch_5
    const-string v6, "BACKGROUND"

    .line 129
    .line 130
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v6

    .line 134
    if-nez v6, :cond_8

    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_8
    const/4 v6, 0x1

    .line 138
    goto :goto_1

    .line 139
    :sswitch_6
    const-string v6, "RUNNING_CRITICAL"

    .line 140
    .line 141
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v6

    .line 145
    if-nez v6, :cond_9

    .line 146
    .line 147
    goto :goto_0

    .line 148
    :cond_9
    move v6, v1

    .line 149
    :goto_1
    packed-switch v6, :pswitch_data_0

    .line 150
    .line 151
    .line 152
    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 153
    .line 154
    .line 155
    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    goto :goto_2

    .line 157
    :catch_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 158
    .line 159
    .line 160
    move-result-object p0

    .line 161
    const-string v0, "Error: Unknown level option: "

    .line 162
    .line 163
    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    return v2

    .line 171
    :pswitch_0
    const/16 v0, 0x14

    .line 172
    .line 173
    goto :goto_2

    .line 174
    :pswitch_1
    const/16 v0, 0xa

    .line 175
    .line 176
    goto :goto_2

    .line 177
    :pswitch_2
    const/16 v0, 0x50

    .line 178
    .line 179
    goto :goto_2

    .line 180
    :pswitch_3
    const/16 v0, 0x3c

    .line 181
    .line 182
    goto :goto_2

    .line 183
    :pswitch_4
    const/16 v0, 0x28

    .line 184
    .line 185
    goto :goto_2

    .line 186
    :pswitch_5
    const/16 v0, 0xf

    .line 187
    .line 188
    :goto_2
    :pswitch_6
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Lcom/android/server/am/ActivityManagerService;

    .line 189
    .line 190
    invoke-virtual {p0, v4, v3, v0}, Lcom/android/server/am/ActivityManagerService;->setProcessMemoryTrimLevel(Ljava/lang/String;II)Z

    .line 191
    .line 192
    .line 193
    return v1

    .line 194
    nop

    .line 195
    :sswitch_data_0
    .sparse-switch
        -0x73d1a5c1 -> :sswitch_6
        -0x327dbed2 -> :sswitch_5
        -0xd10205d -> :sswitch_4
        0x9c2ed03 -> :sswitch_3
        0xaeb2139 -> :sswitch_2
        0x3fef1094 -> :sswitch_1
        0x7f0191aa -> :sswitch_0
    .end sparse-switch

    .line 196
    .line 197
    .line 198
    .line 199
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final runServiceRestartBackoff(Ljava/io/PrintWriter;)I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    const-string v1, "android.permission.SET_PROCESS_LIMIT"

    .line 4
    .line 5
    const-string/jumbo v2, "runServiceRestartBackoff()"

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    const/4 v2, 0x0

    .line 20
    const/4 v3, -0x1

    .line 21
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    sparse-switch v4, :sswitch_data_0

    .line 26
    .line 27
    .line 28
    :goto_0
    move v4, v3

    .line 29
    goto :goto_1

    .line 30
    :sswitch_0
    const-string/jumbo v4, "disable"

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-nez v4, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 v4, 0x2

    .line 41
    goto :goto_1

    .line 42
    :sswitch_1
    const-string/jumbo v4, "show"

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    if-nez v4, :cond_1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    move v4, v1

    .line 53
    goto :goto_1

    .line 54
    :sswitch_2
    const-string/jumbo v4, "enable"

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    if-nez v4, :cond_2

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    move v4, v2

    .line 65
    :goto_1
    packed-switch v4, :pswitch_data_0

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    const-string p1, "Error: unknown command \'"

    .line 73
    .line 74
    const-string v1, "\'"

    .line 75
    .line 76
    invoke-static {p0, p1, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return v3

    .line 80
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    .line 81
    .line 82
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 90
    .line 91
    .line 92
    monitor-enter v0

    .line 93
    :try_start_0
    iget-object p1, v0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    .line 94
    .line 95
    invoke-virtual {p1, p0, v2}, Lcom/android/server/am/ActiveServices;->setServiceRestartBackoffEnabledLocked(Ljava/lang/String;Z)V

    .line 96
    .line 97
    .line 98
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 100
    .line 101
    .line 102
    return v2

    .line 103
    :catchall_0
    move-exception p0

    .line 104
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 106
    .line 107
    .line 108
    throw p0

    .line 109
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    .line 110
    .line 111
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 119
    .line 120
    .line 121
    monitor-enter v0

    .line 122
    :try_start_2
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    .line 123
    .line 124
    iget-object v3, v3, Lcom/android/server/am/ActiveServices;->mRestartBackoffDisabledPackages:Landroid/util/ArraySet;

    .line 125
    .line 126
    invoke-virtual {v3, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result p0

    .line 130
    xor-int/2addr p0, v1

    .line 131
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 132
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 133
    .line 134
    .line 135
    if-eqz p0, :cond_3

    .line 136
    .line 137
    const-string/jumbo p0, "enabled"

    .line 138
    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_3
    const-string/jumbo p0, "disabled"

    .line 142
    .line 143
    .line 144
    :goto_2
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    return v2

    .line 148
    :catchall_1
    move-exception p0

    .line 149
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 150
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 151
    .line 152
    .line 153
    throw p0

    .line 154
    :pswitch_2
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    .line 155
    .line 156
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 161
    .line 162
    .line 163
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 164
    .line 165
    .line 166
    monitor-enter p1

    .line 167
    :try_start_4
    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    .line 168
    .line 169
    invoke-virtual {v0, p0, v1}, Lcom/android/server/am/ActiveServices;->setServiceRestartBackoffEnabledLocked(Ljava/lang/String;Z)V

    .line 170
    .line 171
    .line 172
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 173
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 174
    .line 175
    .line 176
    return v2

    .line 177
    :catchall_2
    move-exception p0

    .line 178
    :try_start_5
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 179
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 180
    .line 181
    .line 182
    throw p0

    .line 183
    :sswitch_data_0
    .sparse-switch
        -0x4d6ada7d -> :sswitch_2
        0x35dafd -> :sswitch_1
        0x639e22e8 -> :sswitch_0
    .end sparse-switch

    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final runSetAgentApp()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Lcom/android/server/am/ActivityManagerService;

    .line 10
    .line 11
    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/ActivityManagerService;->setAgentApp(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final runSetBgAbusiveUids()I
    .locals 14

    .line 1
    const-string v0, "Malformed input"

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    .line 8
    .line 9
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    .line 10
    .line 11
    iget-object v2, v2, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_1

    .line 22
    .line 23
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Lcom/android/server/am/BaseAppStateTracker;

    .line 28
    .line 29
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    const-class v5, Lcom/android/server/am/AppBatteryTracker;

    .line 34
    .line 35
    invoke-virtual {v5, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-eqz v4, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const/4 v3, 0x0

    .line 43
    :goto_0
    check-cast v3, Lcom/android/server/am/AppBatteryTracker;

    .line 44
    .line 45
    const/4 v2, -0x1

    .line 46
    if-nez v3, :cond_2

    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    const-string v0, "Unable to get bg battery tracker"

    .line 53
    .line 54
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return v2

    .line 58
    :cond_2
    const/4 v4, 0x0

    .line 59
    if-nez v1, :cond_3

    .line 60
    .line 61
    iget-object p0, v3, Lcom/android/server/am/AppBatteryTracker;->mDebugUidPercentages:Landroid/util/SparseArray;

    .line 62
    .line 63
    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3}, Lcom/android/server/am/AppBatteryTracker;->scheduleBgBatteryUsageStatsCheck()V

    .line 67
    .line 68
    .line 69
    return v4

    .line 70
    :cond_3
    const-string v5, ","

    .line 71
    .line 72
    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    array-length v5, v1

    .line 77
    new-array v6, v5, [I

    .line 78
    .line 79
    array-length v7, v1

    .line 80
    new-array v7, v7, [[D

    .line 81
    .line 82
    move v8, v4

    .line 83
    :goto_1
    :try_start_0
    array-length v9, v1

    .line 84
    if-ge v8, v9, :cond_7

    .line 85
    .line 86
    aget-object v9, v1, v8

    .line 87
    .line 88
    const-string v10, "="

    .line 89
    .line 90
    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v9

    .line 94
    array-length v10, v9

    .line 95
    const/4 v11, 0x2

    .line 96
    if-eq v10, v11, :cond_4

    .line 97
    .line 98
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    return v2

    .line 106
    :cond_4
    aget-object v10, v9, v4

    .line 107
    .line 108
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    move-result v10

    .line 112
    aput v10, v6, v8

    .line 113
    .line 114
    const/4 v10, 0x1

    .line 115
    aget-object v9, v9, v10

    .line 116
    .line 117
    const-string v10, ":"

    .line 118
    .line 119
    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v9

    .line 123
    array-length v10, v9

    .line 124
    const/4 v11, 0x5

    .line 125
    if-eq v10, v11, :cond_5

    .line 126
    .line 127
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    return v2

    .line 135
    :cond_5
    array-length v10, v9

    .line 136
    new-array v10, v10, [D

    .line 137
    .line 138
    aput-object v10, v7, v8

    .line 139
    .line 140
    move v10, v4

    .line 141
    :goto_2
    array-length v11, v9

    .line 142
    if-ge v10, v11, :cond_6

    .line 143
    .line 144
    aget-object v11, v7, v8

    .line 145
    .line 146
    aget-object v12, v9, v10

    .line 147
    .line 148
    invoke-static {v12}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 149
    .line 150
    .line 151
    move-result-wide v12

    .line 152
    aput-wide v12, v11, v10
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    .line 154
    add-int/lit8 v10, v10, 0x1

    .line 155
    .line 156
    goto :goto_2

    .line 157
    :cond_6
    add-int/lit8 v8, v8, 0x1

    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_7
    iget-object p0, v3, Lcom/android/server/am/AppBatteryTracker;->mDebugUidPercentages:Landroid/util/SparseArray;

    .line 161
    .line 162
    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    .line 163
    .line 164
    .line 165
    move p0, v4

    .line 166
    :goto_3
    if-ge p0, v5, :cond_8

    .line 167
    .line 168
    iget-object v0, v3, Lcom/android/server/am/AppBatteryTracker;->mDebugUidPercentages:Landroid/util/SparseArray;

    .line 169
    .line 170
    aget v1, v6, p0

    .line 171
    .line 172
    new-instance v2, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    .line 173
    .line 174
    invoke-direct {v2}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;-><init>()V

    .line 175
    .line 176
    .line 177
    aget-object v8, v7, p0

    .line 178
    .line 179
    iput-object v8, v2, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mPercentage:[D

    .line 180
    .line 181
    new-instance v8, Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    .line 182
    .line 183
    invoke-direct {v8, v2}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;-><init>(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0, v1, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 187
    .line 188
    .line 189
    add-int/lit8 p0, p0, 0x1

    .line 190
    .line 191
    goto :goto_3

    .line 192
    :cond_8
    invoke-virtual {v3}, Lcom/android/server/am/AppBatteryTracker;->scheduleBgBatteryUsageStatsCheck()V

    .line 193
    .line 194
    .line 195
    return v4

    .line 196
    :catch_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 197
    .line 198
    .line 199
    move-result-object p0

    .line 200
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    return v2
.end method

.method public final runSetBgRestrictionLevel(Ljava/io/PrintWriter;)I
    .locals 13

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, -0x1

    .line 3
    const/4 v2, -0x2

    .line 4
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v3

    .line 8
    if-eqz v3, :cond_1

    .line 9
    .line 10
    const-string v2, "--user"

    .line 11
    .line 12
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    const-string p1, "Error: Unknown option: "

    .line 32
    .line 33
    invoke-virtual {p1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return v1

    .line 41
    :cond_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    sparse-switch v5, :sswitch_data_0

    .line 61
    .line 62
    .line 63
    :goto_1
    move v4, v1

    .line 64
    goto/16 :goto_2

    .line 65
    .line 66
    :sswitch_0
    const-string/jumbo v5, "exempted"

    .line 67
    .line 68
    .line 69
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    if-nez v4, :cond_2

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_2
    const/4 v4, 0x7

    .line 77
    goto :goto_2

    .line 78
    :sswitch_1
    const-string v5, "adaptive_bucket"

    .line 79
    .line 80
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    if-nez v4, :cond_3

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_3
    const/4 v4, 0x6

    .line 88
    goto :goto_2

    .line 89
    :sswitch_2
    const-string/jumbo v5, "unrestricted"

    .line 90
    .line 91
    .line 92
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    if-nez v4, :cond_4

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_4
    const/4 v4, 0x5

    .line 100
    goto :goto_2

    .line 101
    :sswitch_3
    const-string v5, "background_restricted"

    .line 102
    .line 103
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    if-nez v4, :cond_5

    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_5
    const/4 v4, 0x4

    .line 111
    goto :goto_2

    .line 112
    :sswitch_4
    const-string/jumbo v5, "force_stopped"

    .line 113
    .line 114
    .line 115
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v4

    .line 119
    if-nez v4, :cond_6

    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_6
    const/4 v4, 0x3

    .line 123
    goto :goto_2

    .line 124
    :sswitch_5
    const-string/jumbo v5, "custom"

    .line 125
    .line 126
    .line 127
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v4

    .line 131
    if-nez v4, :cond_7

    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_7
    const/4 v4, 0x2

    .line 135
    goto :goto_2

    .line 136
    :sswitch_6
    const-string/jumbo v5, "restricted_bucket"

    .line 137
    .line 138
    .line 139
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v4

    .line 143
    if-nez v4, :cond_8

    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_8
    const/4 v4, 0x1

    .line 147
    goto :goto_2

    .line 148
    :sswitch_7
    const-string/jumbo v5, "user_launch_only"

    .line 149
    .line 150
    .line 151
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v4

    .line 155
    if-nez v4, :cond_9

    .line 156
    .line 157
    goto :goto_1

    .line 158
    :cond_9
    move v4, v0

    .line 159
    :goto_2
    packed-switch v4, :pswitch_data_0

    .line 160
    .line 161
    .line 162
    move v5, v0

    .line 163
    goto :goto_4

    .line 164
    :pswitch_0
    const/16 v4, 0x14

    .line 165
    .line 166
    :goto_3
    move v5, v4

    .line 167
    goto :goto_4

    .line 168
    :pswitch_1
    const/16 v4, 0x1e

    .line 169
    .line 170
    goto :goto_3

    .line 171
    :pswitch_2
    const/16 v4, 0xa

    .line 172
    .line 173
    goto :goto_3

    .line 174
    :pswitch_3
    const/16 v4, 0x32

    .line 175
    .line 176
    goto :goto_3

    .line 177
    :pswitch_4
    const/16 v4, 0x3c

    .line 178
    .line 179
    goto :goto_3

    .line 180
    :pswitch_5
    const/16 v4, 0x5a

    .line 181
    .line 182
    goto :goto_3

    .line 183
    :pswitch_6
    const/16 v4, 0x28

    .line 184
    .line 185
    goto :goto_3

    .line 186
    :pswitch_7
    const/16 v4, 0x46

    .line 187
    .line 188
    goto :goto_3

    .line 189
    :goto_4
    if-nez v5, :cond_a

    .line 190
    .line 191
    const-string p0, "Error: invalid restriction level"

    .line 192
    .line 193
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    return v1

    .line 197
    :cond_a
    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    .line 198
    .line 199
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 200
    .line 201
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 202
    .line 203
    .line 204
    move-result-object v4

    .line 205
    const-wide/32 v6, 0x400000

    .line 206
    .line 207
    .line 208
    invoke-static {v6, v7}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    .line 209
    .line 210
    .line 211
    move-result-object v6

    .line 212
    invoke-virtual {v4, v3, v6, v2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;I)I

    .line 213
    .line 214
    .line 215
    move-result v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    .line 217
    .line 218
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 219
    .line 220
    .line 221
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 222
    .line 223
    .line 224
    move-result p1

    .line 225
    const/16 v1, 0x3e8

    .line 226
    .line 227
    if-eq p1, v1, :cond_c

    .line 228
    .line 229
    if-eqz p1, :cond_c

    .line 230
    .line 231
    const/16 v1, 0x7d0

    .line 232
    .line 233
    if-ne p1, v1, :cond_b

    .line 234
    .line 235
    goto :goto_5

    .line 236
    :cond_b
    new-instance p0, Ljava/lang/SecurityException;

    .line 237
    .line 238
    const-string p1, "No permission to change app restriction level"

    .line 239
    .line 240
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    throw p0

    .line 244
    :cond_c
    :goto_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 245
    .line 246
    .line 247
    move-result-wide v11

    .line 248
    :try_start_1
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    .line 249
    .line 250
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 251
    .line 252
    .line 253
    move-result-wide v6

    .line 254
    invoke-virtual {p1, v2, v3, v6, v7}, Landroid/app/usage/UsageStatsManagerInternal;->getAppStandbyBucket(ILjava/lang/String;J)I

    .line 255
    .line 256
    .line 257
    move-result v7

    .line 258
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    .line 259
    .line 260
    const/4 v6, 0x0

    .line 261
    const/4 v8, 0x1

    .line 262
    const/16 v9, 0x400

    .line 263
    .line 264
    const/4 v10, 0x0

    .line 265
    invoke-virtual/range {v2 .. v10}, Lcom/android/server/am/AppRestrictionController;->applyRestrictionLevel(Ljava/lang/String;IILcom/android/server/am/AppRestrictionController$TrackerInfo;IZII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 266
    .line 267
    .line 268
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 269
    .line 270
    .line 271
    return v0

    .line 272
    :catchall_0
    move-exception p0

    .line 273
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 274
    .line 275
    .line 276
    throw p0

    .line 277
    :catch_0
    const-string p0, "Error: userId:"

    .line 278
    .line 279
    const-string v0, " package:"

    .line 280
    .line 281
    const-string v4, " is not found"

    .line 282
    .line 283
    invoke-static {v2, p0, v0, v3, v4}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object p0

    .line 287
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    return v1

    .line 291
    :sswitch_data_0
    .sparse-switch
        -0x6ab801bc -> :sswitch_7
        -0x5990cdb2 -> :sswitch_6
        -0x5069748f -> :sswitch_5
        -0x40475787 -> :sswitch_4
        -0x2e385ff4 -> :sswitch_3
        0x31226bb4 -> :sswitch_2
        0x50905fd3 -> :sswitch_1
        0x7a509cbe -> :sswitch_0
    .end sparse-switch

    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final runSetDebugApp()I
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v3

    .line 8
    if-eqz v3, :cond_2

    .line 9
    .line 10
    const-string v4, "-w"

    .line 11
    .line 12
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    const/4 v5, 0x1

    .line 17
    if-eqz v4, :cond_0

    .line 18
    .line 19
    move v1, v5

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const-string v2, "--persistent"

    .line 22
    .line 23
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    move v2, v5

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    const-string v0, "Error: Unknown option: "

    .line 36
    .line 37
    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const/4 p0, -0x1

    .line 45
    return p0

    .line 46
    :cond_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Lcom/android/server/am/ActivityManagerService;

    .line 51
    .line 52
    invoke-virtual {p0, v3, v1, v2, v0}, Lcom/android/server/am/ActivityManagerService;->setDebugApp(Ljava/lang/String;ZZZ)V

    .line 53
    .line 54
    .line 55
    return v0
.end method

.method public final runSetDeterministicUidIdle()I
    .locals 2

    .line 1
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    const-string v1, "--user"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    const-string v1, "Error: Unknown option: "

    .line 28
    .line 29
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const/4 p0, -0x1

    .line 37
    return p0

    .line 38
    :cond_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Lcom/android/server/am/ActivityManagerService;

    .line 47
    .line 48
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerService;->setDeterministicUidIdle(Z)V

    .line 49
    .line 50
    .line 51
    const/4 p0, 0x0

    .line 52
    return p0
.end method

.method public final runSetForegroundServiceDelegate(Ljava/io/PrintWriter;)I
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, -0x2

    .line 6
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    const/4 v4, -0x1

    .line 11
    if-eqz v3, :cond_1

    .line 12
    .line 13
    const-string v2, "--user"

    .line 14
    .line 15
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v1, "Error: Unknown option: "

    .line 35
    .line 36
    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return v4

    .line 44
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    const-string/jumbo v6, "start"

    .line 53
    .line 54
    .line 55
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    const/4 v15, 0x1

    .line 60
    if-eqz v6, :cond_2

    .line 61
    .line 62
    move/from16 v16, v15

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    const-string/jumbo v6, "stop"

    .line 66
    .line 67
    .line 68
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    if-eqz v5, :cond_a

    .line 73
    .line 74
    const/16 v16, 0x0

    .line 75
    .line 76
    :goto_1
    :try_start_0
    iget-object v5, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    .line 77
    .line 78
    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 79
    .line 80
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    const-wide/32 v6, 0x400000

    .line 85
    .line 86
    .line 87
    invoke-static {v6, v7}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    invoke-virtual {v5, v3, v6, v2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;I)I

    .line 92
    .line 93
    .line 94
    move-result v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    .line 96
    .line 97
    const-string v0, "FgsDelegate"

    .line 98
    .line 99
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    const/16 v5, 0x3e8

    .line 107
    .line 108
    if-eq v4, v5, :cond_4

    .line 109
    .line 110
    if-eqz v4, :cond_4

    .line 111
    .line 112
    const/16 v5, 0x7d0

    .line 113
    .line 114
    if-ne v4, v5, :cond_3

    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_3
    new-instance v0, Ljava/lang/SecurityException;

    .line 118
    .line 119
    const-string v1, "No permission to start/stop foreground service delegate"

    .line 120
    .line 121
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    throw v0

    .line 125
    :cond_4
    :goto_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 126
    .line 127
    .line 128
    move-result-wide v17

    .line 129
    :try_start_1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 130
    .line 131
    .line 132
    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 133
    :try_start_2
    new-instance v4, Ljava/util/ArrayList;

    .line 134
    .line 135
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .line 137
    .line 138
    iget-object v13, v2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    .line 139
    .line 140
    monitor-enter v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 141
    const/4 v5, 0x0

    .line 142
    const/4 v12, 0x0

    .line 143
    :goto_3
    :try_start_3
    iget-object v6, v2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    .line 144
    .line 145
    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService$PidMap;->mPidMap:Ljava/lang/Object;

    .line 146
    .line 147
    check-cast v6, Landroid/util/SparseArray;

    .line 148
    .line 149
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    .line 150
    .line 151
    .line 152
    move-result v6

    .line 153
    if-ge v12, v6, :cond_6

    .line 154
    .line 155
    iget-object v6, v2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    .line 156
    .line 157
    invoke-virtual {v6, v12}, Lcom/android/server/am/ActivityManagerService$PidMap;->valueAt(I)Lcom/android/server/am/ProcessRecord;

    .line 158
    .line 159
    .line 160
    move-result-object v6

    .line 161
    iget-object v7, v6, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;

    .line 162
    .line 163
    iget v6, v6, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 164
    .line 165
    if-ne v6, v1, :cond_5

    .line 166
    .line 167
    if-eqz v7, :cond_5

    .line 168
    .line 169
    iget-object v5, v2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    .line 170
    .line 171
    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService$PidMap;->mPidMap:Ljava/lang/Object;

    .line 172
    .line 173
    check-cast v5, Landroid/util/SparseArray;

    .line 174
    .line 175
    invoke-virtual {v5, v12}, Landroid/util/SparseArray;->keyAt(I)I

    .line 176
    .line 177
    .line 178
    move-result v6

    .line 179
    new-instance v11, Landroid/app/ForegroundServiceDelegationOptions;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 180
    .line 181
    const/16 v19, 0x0

    .line 182
    .line 183
    const/4 v9, 0x0

    .line 184
    const/16 v20, 0xc

    .line 185
    .line 186
    const/4 v10, 0x0

    .line 187
    move-object v5, v11

    .line 188
    move v7, v1

    .line 189
    move-object v8, v3

    .line 190
    move-object v14, v11

    .line 191
    move-object v11, v0

    .line 192
    move/from16 v21, v12

    .line 193
    .line 194
    move/from16 v12, v19

    .line 195
    .line 196
    move-object/from16 v19, v13

    .line 197
    .line 198
    move/from16 v13, v20

    .line 199
    .line 200
    :try_start_4
    invoke-direct/range {v5 .. v13}, Landroid/app/ForegroundServiceDelegationOptions;-><init>(IILjava/lang/String;Landroid/app/IApplicationThread;ZLjava/lang/String;II)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move v5, v15

    .line 207
    goto :goto_4

    .line 208
    :catchall_0
    move-exception v0

    .line 209
    goto :goto_8

    .line 210
    :catchall_1
    move-exception v0

    .line 211
    move-object/from16 v19, v13

    .line 212
    .line 213
    goto :goto_8

    .line 214
    :cond_5
    move/from16 v21, v12

    .line 215
    .line 216
    move-object/from16 v19, v13

    .line 217
    .line 218
    :goto_4
    add-int/lit8 v12, v21, 0x1

    .line 219
    .line 220
    move-object/from16 v13, v19

    .line 221
    .line 222
    goto :goto_3

    .line 223
    :cond_6
    move-object/from16 v19, v13

    .line 224
    .line 225
    monitor-exit v19
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 226
    :try_start_5
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 227
    .line 228
    .line 229
    move-result v0

    .line 230
    sub-int/2addr v0, v15

    .line 231
    :goto_5
    if-ltz v0, :cond_8

    .line 232
    .line 233
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v6

    .line 237
    check-cast v6, Landroid/app/ForegroundServiceDelegationOptions;

    .line 238
    .line 239
    if-eqz v16, :cond_7

    .line 240
    .line 241
    iget-object v7, v2, Lcom/android/server/am/ActivityManagerService;->mInternal:Landroid/app/ActivityManagerInternal;

    .line 242
    .line 243
    const/4 v8, 0x0

    .line 244
    invoke-virtual {v7, v6, v8}, Landroid/app/ActivityManagerInternal;->startForegroundServiceDelegate(Landroid/app/ForegroundServiceDelegationOptions;Landroid/content/ServiceConnection;)Z

    .line 245
    .line 246
    .line 247
    goto :goto_6

    .line 248
    :catchall_2
    move-exception v0

    .line 249
    goto :goto_9

    .line 250
    :cond_7
    iget-object v7, v2, Lcom/android/server/am/ActivityManagerService;->mInternal:Landroid/app/ActivityManagerInternal;

    .line 251
    .line 252
    invoke-virtual {v7, v6}, Landroid/app/ActivityManagerInternal;->stopForegroundServiceDelegate(Landroid/app/ForegroundServiceDelegationOptions;)V

    .line 253
    .line 254
    .line 255
    :goto_6
    add-int/lit8 v0, v0, -0x1

    .line 256
    .line 257
    goto :goto_5

    .line 258
    :cond_8
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 259
    :try_start_6
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 260
    .line 261
    .line 262
    if-nez v5, :cond_9

    .line 263
    .line 264
    const-string v0, "ActivityManager"

    .line 265
    .line 266
    new-instance v2, Ljava/lang/StringBuilder;

    .line 267
    .line 268
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 269
    .line 270
    .line 271
    const-string/jumbo v4, "setForegroundServiceDelegate can not find process for packageName:"

    .line 272
    .line 273
    .line 274
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    const-string v3, " uid:"

    .line 281
    .line 282
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v1

    .line 292
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 293
    .line 294
    .line 295
    goto :goto_7

    .line 296
    :catchall_3
    move-exception v0

    .line 297
    goto :goto_a

    .line 298
    :cond_9
    :goto_7
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 299
    .line 300
    .line 301
    const/4 v0, 0x0

    .line 302
    return v0

    .line 303
    :goto_8
    :try_start_7
    monitor-exit v19
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 304
    :try_start_8
    throw v0

    .line 305
    :goto_9
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 306
    :try_start_9
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 307
    .line 308
    .line 309
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 310
    :goto_a
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 311
    .line 312
    .line 313
    throw v0

    .line 314
    :catch_0
    const-string v0, "Error: userId:"

    .line 315
    .line 316
    const-string v5, " package:"

    .line 317
    .line 318
    const-string v6, " is not found"

    .line 319
    .line 320
    invoke-static {v2, v0, v5, v3, v6}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    return v4

    .line 328
    :cond_a
    const-string v0, "Error: action is either start or stop"

    .line 329
    .line 330
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 331
    .line 332
    .line 333
    return v4
.end method

.method public final runSetInactive()I
    .locals 3

    .line 1
    const/4 v0, -0x2

    .line 2
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    const-string v0, "--user"

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const-string v0, "Error: Unknown option: "

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const/4 p0, -0x1

    .line 39
    return p0

    .line 40
    :cond_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    const-string/jumbo v2, "usagestats"

    .line 49
    .line 50
    .line 51
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-static {v2}, Landroid/app/usage/IUsageStatsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/usage/IUsageStatsManager;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    invoke-interface {v2, v1, p0, v0}, Landroid/app/usage/IUsageStatsManager;->setAppInactive(Ljava/lang/String;ZI)V

    .line 64
    .line 65
    .line 66
    const/4 p0, 0x0

    .line 67
    return p0
.end method

.method public final runSetStandbyBucket()I
    .locals 7

    .line 1
    const/4 v0, -0x2

    .line 2
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const/4 v2, -0x1

    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    const-string v0, "--user"

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    const-string v0, "Error: Unknown option: "

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return v2

    .line 40
    :cond_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityManagerShellCommand;->bucketNameToBucketValue(Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-gez v4, :cond_2

    .line 53
    .line 54
    return v2

    .line 55
    :cond_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    const/4 v5, 0x0

    .line 60
    if-eqz v2, :cond_3

    .line 61
    .line 62
    const/4 v2, 0x1

    .line 63
    goto :goto_1

    .line 64
    :cond_3
    move v2, v5

    .line 65
    :goto_1
    const-string/jumbo v6, "usagestats"

    .line 66
    .line 67
    .line 68
    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    invoke-static {v6}, Landroid/app/usage/IUsageStatsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/usage/IUsageStatsManager;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    if-nez v2, :cond_4

    .line 77
    .line 78
    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityManagerShellCommand;->bucketNameToBucketValue(Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    move-result p0

    .line 82
    invoke-interface {v6, v1, p0, v0}, Landroid/app/usage/IUsageStatsManager;->setAppStandbyBucket(Ljava/lang/String;II)V

    .line 83
    .line 84
    .line 85
    goto :goto_3

    .line 86
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .line 90
    .line 91
    new-instance v3, Landroid/app/usage/AppStandbyInfo;

    .line 92
    .line 93
    invoke-direct {v3, v1, v4}, Landroid/app/usage/AppStandbyInfo;-><init>(Ljava/lang/String;I)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    :goto_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    if-eqz v1, :cond_6

    .line 104
    .line 105
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityManagerShellCommand;->bucketNameToBucketValue(Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    if-gez v3, :cond_5

    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_5
    new-instance v4, Landroid/app/usage/AppStandbyInfo;

    .line 117
    .line 118
    invoke-direct {v4, v1, v3}, Landroid/app/usage/AppStandbyInfo;-><init>(Ljava/lang/String;I)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_6
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    .line 126
    .line 127
    invoke-direct {p0, v2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 128
    .line 129
    .line 130
    invoke-interface {v6, p0, v0}, Landroid/app/usage/IUsageStatsManager;->setAppStandbyBuckets(Landroid/content/pm/ParceledListSlice;I)V

    .line 131
    .line 132
    .line 133
    :goto_3
    return v5
.end method

.method public final runSetStopUserOnSwitch(Ljava/io/PrintWriter;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 4
    .line 5
    const-string/jumbo v2, "setStopUserOnSwitch()"

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "ActivityManager"

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    const-string/jumbo v0, "setStopUserOnSwitch(): resetting to default value"

    .line 20
    .line 21
    .line 22
    invoke-static {v1, v0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    .line 26
    .line 27
    const/4 v0, -0x1

    .line 28
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerService;->setStopUserOnSwitch(I)V

    .line 29
    .line 30
    .line 31
    const-string p0, "Reset to default value"

    .line 32
    .line 33
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    const-string/jumbo v3, "runSetStopUserOnSwitch(): setting to %d (%b)"

    .line 54
    .line 55
    .line 56
    invoke-static {v1, v3, v2}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    .line 60
    .line 61
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerService;->setStopUserOnSwitch(I)V

    .line 62
    .line 63
    .line 64
    new-instance p0, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const-string v1, "Set to "

    .line 67
    .line 68
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method public final runSetWatchHeap()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v1

    .line 5
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Lcom/android/server/am/ActivityManagerService;

    .line 10
    .line 11
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 12
    .line 13
    .line 14
    move-result-wide v3

    .line 15
    const/4 v5, 0x0

    .line 16
    const/4 v2, 0x0

    .line 17
    move-object v0, p0

    .line 18
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->setDumpHeapDebugLimit(Ljava/lang/String;IJLjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final runStack(Ljava/io/PrintWriter;)I
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    const/4 v2, -0x1

    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    sparse-switch v4, :sswitch_data_0

    .line 16
    .line 17
    .line 18
    :goto_0
    move v4, v2

    .line 19
    goto :goto_1

    .line 20
    :sswitch_0
    const-string/jumbo v4, "move-task"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-nez v4, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v4, 0x3

    .line 31
    goto :goto_1

    .line 32
    :sswitch_1
    const-string/jumbo v4, "list"

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-nez v4, :cond_1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const/4 v4, 0x2

    .line 43
    goto :goto_1

    .line 44
    :sswitch_2
    const-string/jumbo v4, "info"

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    if-nez v4, :cond_2

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    move v4, v0

    .line 55
    goto :goto_1

    .line 56
    :sswitch_3
    const-string/jumbo v4, "remove"

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    if-nez v4, :cond_3

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_3
    move v4, v3

    .line 67
    :goto_1
    packed-switch v4, :pswitch_data_0

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    const-string p1, "Error: unknown command \'"

    .line 75
    .line 76
    const-string v0, "\'"

    .line 77
    .line 78
    invoke-static {p0, p1, v1, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    return v2

    .line 82
    :pswitch_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    const-string/jumbo v5, "true"

    .line 103
    .line 104
    .line 105
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v5

    .line 109
    if-eqz v5, :cond_4

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_4
    const-string/jumbo v0, "false"

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    if-eqz v0, :cond_5

    .line 120
    .line 121
    move v0, v3

    .line 122
    :goto_2
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 123
    .line 124
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->moveTaskToRootTask(IIZ)V

    .line 125
    .line 126
    .line 127
    move v2, v3

    .line 128
    goto :goto_3

    .line 129
    :cond_5
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    const-string p1, "Error: bad toTop arg: "

    .line 134
    .line 135
    invoke-static {p0, p1, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    :goto_3
    return v2

    .line 139
    :pswitch_1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 140
    .line 141
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getAllRootTaskInfos()Ljava/util/List;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    check-cast p0, Ljava/util/ArrayList;

    .line 146
    .line 147
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    if-eqz v0, :cond_6

    .line 156
    .line 157
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    check-cast v0, Landroid/app/ActivityTaskManager$RootTaskInfo;

    .line 162
    .line 163
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    goto :goto_4

    .line 167
    :cond_6
    return v3

    .line 168
    :pswitch_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 181
    .line 182
    .line 183
    move-result v1

    .line 184
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 185
    .line 186
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getRootTaskInfo(II)Landroid/app/ActivityTaskManager$RootTaskInfo;

    .line 187
    .line 188
    .line 189
    move-result-object p0

    .line 190
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    return v3

    .line 194
    :pswitch_3
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 199
    .line 200
    .line 201
    move-result p1

    .line 202
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 203
    .line 204
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->removeTask(I)Z

    .line 205
    .line 206
    .line 207
    return v3

    .line 208
    nop

    .line 209
    :sswitch_data_0
    .sparse-switch
        -0x37b5077c -> :sswitch_3
        0x3164ae -> :sswitch_2
        0x32b09e -> :sswitch_1
        0x3ceed601 -> :sswitch_0
    .end sparse-switch

    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final runStartActivity(Ljava/io/PrintWriter;)I
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->makeIntent()Landroid/content/Intent;

    .line 6
    .line 7
    .line 8
    move-result-object v15
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    .line 9
    iget v2, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    .line 10
    .line 11
    const/4 v14, -0x1

    .line 12
    const/4 v13, 0x1

    .line 13
    if-ne v2, v14, :cond_0

    .line 14
    .line 15
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "Error: Can\'t start service with user \'all\'"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return v13

    .line 25
    :cond_0
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    .line 26
    .line 27
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 28
    .line 29
    invoke-virtual {v15, v2}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v16

    .line 33
    :goto_0
    iget-boolean v2, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mStopOption:Z

    .line 34
    .line 35
    const/4 v12, 0x0

    .line 36
    if-eqz v2, :cond_5

    .line 37
    .line 38
    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    if-eqz v2, :cond_1

    .line 43
    .line 44
    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    .line 54
    .line 55
    iget-object v3, v2, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    .line 56
    .line 57
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    iget v6, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    .line 66
    .line 67
    const/4 v7, 0x0

    .line 68
    const/4 v8, 0x0

    .line 69
    const-string v9, "ActivityManagerShellCommand"

    .line 70
    .line 71
    const/4 v10, 0x0

    .line 72
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/am/UserController;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    move-result v7

    .line 76
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mPm:Landroid/content/pm/IPackageManager;

    .line 77
    .line 78
    const-wide/16 v5, 0x0

    .line 79
    .line 80
    move-object v3, v15

    .line 81
    move-object/from16 v4, v16

    .line 82
    .line 83
    invoke-interface/range {v2 .. v7}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-virtual {v2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    if-eqz v2, :cond_4

    .line 92
    .line 93
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    if-gtz v3, :cond_2

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    if-le v3, v13, :cond_3

    .line 105
    .line 106
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    const-string v2, "Error: Intent matches multiple activities; can\'t stop: "

    .line 113
    .line 114
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    return v13

    .line 128
    :cond_3
    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 133
    .line 134
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 135
    .line 136
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 137
    .line 138
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    const-string v4, "Stopping: "

    .line 141
    .line 142
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->flush()V

    .line 156
    .line 157
    .line 158
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Lcom/android/server/am/ActivityManagerService;

    .line 159
    .line 160
    iget v4, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    .line 161
    .line 162
    invoke-virtual {v3, v2, v4}, Lcom/android/server/am/ActivityManagerService;->forceStopPackage(Ljava/lang/String;I)V

    .line 163
    .line 164
    .line 165
    const-wide/16 v2, 0xfa

    .line 166
    .line 167
    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 168
    .line 169
    .line 170
    goto :goto_3

    .line 171
    :cond_4
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    .line 176
    .line 177
    const-string v2, "Error: Intent does not match any activities: "

    .line 178
    .line 179
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    return v13

    .line 193
    :catch_0
    :cond_5
    :goto_3
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mProfileFile:Ljava/lang/String;

    .line 194
    .line 195
    const/16 v17, 0x0

    .line 196
    .line 197
    if-nez v2, :cond_7

    .line 198
    .line 199
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mAgent:Ljava/lang/String;

    .line 200
    .line 201
    if-eqz v3, :cond_6

    .line 202
    .line 203
    goto :goto_4

    .line 204
    :cond_6
    move-object/from16 v18, v17

    .line 205
    .line 206
    goto :goto_6

    .line 207
    :cond_7
    :goto_4
    if-eqz v2, :cond_9

    .line 208
    .line 209
    const-string/jumbo v3, "w"

    .line 210
    .line 211
    .line 212
    invoke-virtual {v0, v2, v3}, Landroid/os/ShellCommand;->openFileForSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    .line 213
    .line 214
    .line 215
    move-result-object v2

    .line 216
    if-nez v2, :cond_8

    .line 217
    .line 218
    return v13

    .line 219
    :cond_8
    move-object/from16 v20, v2

    .line 220
    .line 221
    goto :goto_5

    .line 222
    :cond_9
    move-object/from16 v20, v17

    .line 223
    .line 224
    :goto_5
    new-instance v2, Landroid/app/ProfilerInfo;

    .line 225
    .line 226
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mProfileFile:Ljava/lang/String;

    .line 227
    .line 228
    iget v4, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mSamplingInterval:I

    .line 229
    .line 230
    iget-boolean v5, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mAutoStop:Z

    .line 231
    .line 232
    iget-boolean v6, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mStreaming:Z

    .line 233
    .line 234
    iget-object v7, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mAgent:Ljava/lang/String;

    .line 235
    .line 236
    iget-boolean v8, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mAttachAgentDuringBind:Z

    .line 237
    .line 238
    iget v9, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mClockType:I

    .line 239
    .line 240
    iget v10, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mProfilerOutputVersion:I

    .line 241
    .line 242
    move-object/from16 v18, v2

    .line 243
    .line 244
    move-object/from16 v19, v3

    .line 245
    .line 246
    move/from16 v21, v4

    .line 247
    .line 248
    move/from16 v22, v5

    .line 249
    .line 250
    move/from16 v23, v6

    .line 251
    .line 252
    move-object/from16 v24, v7

    .line 253
    .line 254
    move/from16 v25, v8

    .line 255
    .line 256
    move/from16 v26, v9

    .line 257
    .line 258
    move/from16 v27, v10

    .line 259
    .line 260
    invoke-direct/range {v18 .. v27}, Landroid/app/ProfilerInfo;-><init>(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;IZZLjava/lang/String;ZII)V

    .line 261
    .line 262
    .line 263
    :goto_6
    new-instance v2, Ljava/lang/StringBuilder;

    .line 264
    .line 265
    const-string v3, "Starting: "

    .line 266
    .line 267
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v2

    .line 277
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->flush()V

    .line 281
    .line 282
    .line 283
    const/high16 v2, 0x10000000

    .line 284
    .line 285
    invoke-virtual {v15, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 286
    .line 287
    .line 288
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 289
    .line 290
    .line 291
    move-result-wide v19

    .line 292
    iget v2, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mDisplayId:I

    .line 293
    .line 294
    if-eq v2, v14, :cond_a

    .line 295
    .line 296
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 297
    .line 298
    .line 299
    move-result-object v2

    .line 300
    iget v3, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mDisplayId:I

    .line 301
    .line 302
    invoke-virtual {v2, v3}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    .line 303
    .line 304
    .line 305
    goto :goto_7

    .line 306
    :cond_a
    move-object/from16 v2, v17

    .line 307
    .line 308
    :goto_7
    iget v3, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskDisplayAreaFeatureId:I

    .line 309
    .line 310
    if-eq v3, v14, :cond_c

    .line 311
    .line 312
    if-nez v2, :cond_b

    .line 313
    .line 314
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 315
    .line 316
    .line 317
    move-result-object v2

    .line 318
    :cond_b
    iget v3, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskDisplayAreaFeatureId:I

    .line 319
    .line 320
    invoke-virtual {v2, v3}, Landroid/app/ActivityOptions;->setLaunchTaskDisplayAreaFeatureId(I)V

    .line 321
    .line 322
    .line 323
    :cond_c
    iget v3, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mWindowingMode:I

    .line 324
    .line 325
    if-eqz v3, :cond_e

    .line 326
    .line 327
    if-nez v2, :cond_d

    .line 328
    .line 329
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 330
    .line 331
    .line 332
    move-result-object v2

    .line 333
    :cond_d
    iget v3, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mWindowingMode:I

    .line 334
    .line 335
    invoke-virtual {v2, v3}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 336
    .line 337
    .line 338
    :cond_e
    iget v3, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mForceWindowingMode:I

    .line 339
    .line 340
    if-eqz v3, :cond_10

    .line 341
    .line 342
    if-nez v2, :cond_f

    .line 343
    .line 344
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 345
    .line 346
    .line 347
    move-result-object v2

    .line 348
    :cond_f
    iget v3, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mForceWindowingMode:I

    .line 349
    .line 350
    invoke-virtual {v2, v3}, Landroid/app/ActivityOptions;->setForceLaunchWindowingMode(I)V

    .line 351
    .line 352
    .line 353
    :cond_10
    iget v3, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mWindowingMode:I

    .line 354
    .line 355
    const/4 v4, 0x5

    .line 356
    if-ne v3, v4, :cond_12

    .line 357
    .line 358
    if-nez v2, :cond_11

    .line 359
    .line 360
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 361
    .line 362
    .line 363
    move-result-object v2

    .line 364
    :cond_11
    invoke-virtual {v2, v13}, Landroid/app/ActivityOptions;->setApplyBigFreeformSize(Z)V

    .line 365
    .line 366
    .line 367
    :cond_12
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_RESUMED_AFFORDANCE:Z

    .line 368
    .line 369
    if-eqz v3, :cond_14

    .line 370
    .line 371
    iget-boolean v3, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mIsResumeAffordanceRequested:Z

    .line 372
    .line 373
    if-eqz v3, :cond_14

    .line 374
    .line 375
    if-nez v2, :cond_13

    .line 376
    .line 377
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 378
    .line 379
    .line 380
    move-result-object v2

    .line 381
    :cond_13
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->setResumedAffordanceAnimation()V

    .line 382
    .line 383
    .line 384
    :cond_14
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MT_NEW_DEX_LAUNCH_POLICY:Z

    .line 385
    .line 386
    if-eqz v3, :cond_16

    .line 387
    .line 388
    iget-boolean v3, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mForceLaunchTaskOnHome:Z

    .line 389
    .line 390
    if-eqz v3, :cond_16

    .line 391
    .line 392
    if-nez v2, :cond_15

    .line 393
    .line 394
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 395
    .line 396
    .line 397
    move-result-object v2

    .line 398
    :cond_15
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->setForceLaunchTaskOnHome()V

    .line 399
    .line 400
    .line 401
    :cond_16
    iget v3, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mActivityType:I

    .line 402
    .line 403
    if-eqz v3, :cond_18

    .line 404
    .line 405
    if-nez v2, :cond_17

    .line 406
    .line 407
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 408
    .line 409
    .line 410
    move-result-object v2

    .line 411
    :cond_17
    iget v3, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mActivityType:I

    .line 412
    .line 413
    invoke-virtual {v2, v3}, Landroid/app/ActivityOptions;->setLaunchActivityType(I)V

    .line 414
    .line 415
    .line 416
    :cond_18
    iget v3, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskId:I

    .line 417
    .line 418
    if-eq v3, v14, :cond_1a

    .line 419
    .line 420
    if-nez v2, :cond_19

    .line 421
    .line 422
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 423
    .line 424
    .line 425
    move-result-object v2

    .line 426
    :cond_19
    iget v3, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskId:I

    .line 427
    .line 428
    invoke-virtual {v2, v3}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    .line 429
    .line 430
    .line 431
    iget-boolean v3, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mIsTaskOverlay:Z

    .line 432
    .line 433
    if-eqz v3, :cond_1a

    .line 434
    .line 435
    invoke-virtual {v2, v13, v13}, Landroid/app/ActivityOptions;->setTaskOverlay(ZZ)V

    .line 436
    .line 437
    .line 438
    :cond_1a
    iget-boolean v3, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mIsLockTask:Z

    .line 439
    .line 440
    if-eqz v3, :cond_1c

    .line 441
    .line 442
    if-nez v2, :cond_1b

    .line 443
    .line 444
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 445
    .line 446
    .line 447
    move-result-object v2

    .line 448
    :cond_1b
    invoke-virtual {v2, v13}, Landroid/app/ActivityOptions;->setLockTaskEnabled(Z)Landroid/app/ActivityOptions;

    .line 449
    .line 450
    .line 451
    :cond_1c
    iget-boolean v3, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mShowSplashScreen:Z

    .line 452
    .line 453
    if-eqz v3, :cond_1e

    .line 454
    .line 455
    if-nez v2, :cond_1d

    .line 456
    .line 457
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 458
    .line 459
    .line 460
    move-result-object v2

    .line 461
    :cond_1d
    invoke-virtual {v2, v13}, Landroid/app/ActivityOptions;->setSplashScreenStyle(I)Landroid/app/ActivityOptions;

    .line 462
    .line 463
    .line 464
    :cond_1e
    iget-boolean v3, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mDismissKeyguardIfInsecure:Z

    .line 465
    .line 466
    if-eqz v3, :cond_20

    .line 467
    .line 468
    if-nez v2, :cond_1f

    .line 469
    .line 470
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 471
    .line 472
    .line 473
    move-result-object v2

    .line 474
    :cond_1f
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->setDismissKeyguardIfInsecure()V

    .line 475
    .line 476
    .line 477
    :cond_20
    iget-boolean v3, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mWaitOption:Z

    .line 478
    .line 479
    if-eqz v3, :cond_22

    .line 480
    .line 481
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    .line 482
    .line 483
    iget v11, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mStartFlags:I

    .line 484
    .line 485
    if-eqz v2, :cond_21

    .line 486
    .line 487
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 488
    .line 489
    .line 490
    move-result-object v2

    .line 491
    move-object/from16 v17, v2

    .line 492
    .line 493
    :cond_21
    iget v10, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    .line 494
    .line 495
    iget-object v2, v3, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 496
    .line 497
    const/4 v9, 0x0

    .line 498
    const/16 v21, 0x0

    .line 499
    .line 500
    const/4 v3, 0x0

    .line 501
    const-string/jumbo v4, "com.android.shell"

    .line 502
    .line 503
    .line 504
    const/4 v5, 0x0

    .line 505
    const/4 v8, 0x0

    .line 506
    move-object v6, v15

    .line 507
    move-object/from16 v7, v16

    .line 508
    .line 509
    move/from16 v22, v10

    .line 510
    .line 511
    move/from16 v10, v21

    .line 512
    .line 513
    move/from16 v21, v12

    .line 514
    .line 515
    move-object/from16 v12, v18

    .line 516
    .line 517
    move-object/from16 v13, v17

    .line 518
    .line 519
    move/from16 v23, v14

    .line 520
    .line 521
    move/from16 v14, v22

    .line 522
    .line 523
    invoke-virtual/range {v2 .. v14}, Lcom/android/server/wm/ActivityTaskManagerService;->startActivityAndWait(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)Landroid/app/WaitResult;

    .line 524
    .line 525
    .line 526
    move-result-object v2

    .line 527
    iget v3, v2, Landroid/app/WaitResult;->result:I

    .line 528
    .line 529
    move-object/from16 v17, v2

    .line 530
    .line 531
    goto :goto_9

    .line 532
    :cond_22
    move/from16 v21, v12

    .line 533
    .line 534
    move/from16 v23, v14

    .line 535
    .line 536
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    .line 537
    .line 538
    iget v11, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mStartFlags:I

    .line 539
    .line 540
    if-eqz v2, :cond_23

    .line 541
    .line 542
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 543
    .line 544
    .line 545
    move-result-object v2

    .line 546
    move-object v13, v2

    .line 547
    goto :goto_8

    .line 548
    :cond_23
    move-object/from16 v13, v17

    .line 549
    .line 550
    :goto_8
    iget v14, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    .line 551
    .line 552
    const/4 v9, 0x0

    .line 553
    const/4 v10, 0x0

    .line 554
    const/4 v4, 0x0

    .line 555
    const-string/jumbo v5, "com.android.shell"

    .line 556
    .line 557
    .line 558
    const/4 v6, 0x0

    .line 559
    const/4 v8, 0x0

    .line 560
    move-object v2, v3

    .line 561
    move-object v3, v4

    .line 562
    move-object v4, v5

    .line 563
    move-object v5, v6

    .line 564
    move-object v6, v15

    .line 565
    move-object/from16 v7, v16

    .line 566
    .line 567
    move-object/from16 v12, v18

    .line 568
    .line 569
    invoke-virtual/range {v2 .. v14}, Lcom/android/server/am/ActivityManagerService;->startActivityAsUserWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    .line 570
    .line 571
    .line 572
    move-result v3

    .line 573
    :goto_9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 574
    .line 575
    .line 576
    move-result-wide v4

    .line 577
    iget-boolean v2, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mWaitOption:Z

    .line 578
    .line 579
    if-eqz v2, :cond_24

    .line 580
    .line 581
    move-object v2, v1

    .line 582
    goto :goto_a

    .line 583
    :cond_24
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 584
    .line 585
    .line 586
    move-result-object v2

    .line 587
    :goto_a
    const/16 v6, -0x62

    .line 588
    .line 589
    if-eq v3, v6, :cond_32

    .line 590
    .line 591
    const/16 v6, -0x61

    .line 592
    .line 593
    if-eq v3, v6, :cond_31

    .line 594
    .line 595
    if-eqz v3, :cond_29

    .line 596
    .line 597
    const/4 v6, 0x1

    .line 598
    if-eq v3, v6, :cond_28

    .line 599
    .line 600
    const/4 v7, 0x2

    .line 601
    if-eq v3, v7, :cond_27

    .line 602
    .line 603
    const/4 v7, 0x3

    .line 604
    if-eq v3, v7, :cond_26

    .line 605
    .line 606
    const/16 v7, 0x64

    .line 607
    .line 608
    if-eq v3, v7, :cond_25

    .line 609
    .line 610
    packed-switch v3, :pswitch_data_0

    .line 611
    .line 612
    .line 613
    const-string v0, "Error: Activity not started, unknown error code "

    .line 614
    .line 615
    invoke-static {v2, v0, v3}, Lcom/android/server/accounts/AccountManagerServiceShellCommand$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 616
    .line 617
    .line 618
    return v6

    .line 619
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 620
    .line 621
    const-string v1, "Error: Activity not started, unable to resolve "

    .line 622
    .line 623
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 624
    .line 625
    .line 626
    invoke-virtual {v15}, Landroid/content/Intent;->toString()Ljava/lang/String;

    .line 627
    .line 628
    .line 629
    move-result-object v1

    .line 630
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    .line 632
    .line 633
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 634
    .line 635
    .line 636
    move-result-object v0

    .line 637
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 638
    .line 639
    .line 640
    return v6

    .line 641
    :pswitch_1
    const-string v0, "Error type 3"

    .line 642
    .line 643
    const-string v1, "Error: Activity class "

    .line 644
    .line 645
    invoke-static {v2, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 646
    .line 647
    .line 648
    move-result-object v0

    .line 649
    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 650
    .line 651
    .line 652
    move-result-object v1

    .line 653
    invoke-virtual {v1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    .line 654
    .line 655
    .line 656
    move-result-object v1

    .line 657
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    .line 659
    .line 660
    const-string v1, " does not exist."

    .line 661
    .line 662
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    .line 664
    .line 665
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 666
    .line 667
    .line 668
    move-result-object v0

    .line 669
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 670
    .line 671
    .line 672
    return v6

    .line 673
    :pswitch_2
    const-string v0, "Error: Activity not started, you requested to both forward and receive its result"

    .line 674
    .line 675
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 676
    .line 677
    .line 678
    return v6

    .line 679
    :pswitch_3
    const-string v0, "Error: Activity not started, you do not have permission to access it."

    .line 680
    .line 681
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 682
    .line 683
    .line 684
    return v6

    .line 685
    :cond_25
    const-string v3, "Warning: Activity not started because the  current activity is being kept for the user."

    .line 686
    .line 687
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 688
    .line 689
    .line 690
    goto :goto_b

    .line 691
    :cond_26
    const-string v3, "Warning: Activity not started, intent has been delivered to currently running top-most instance."

    .line 692
    .line 693
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 694
    .line 695
    .line 696
    goto :goto_b

    .line 697
    :cond_27
    const-string v3, "Warning: Activity not started, its current task has been brought to the front"

    .line 698
    .line 699
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 700
    .line 701
    .line 702
    goto :goto_b

    .line 703
    :cond_28
    const-string v3, "Warning: Activity not started because intent should be handled by the caller"

    .line 704
    .line 705
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 706
    .line 707
    .line 708
    goto :goto_b

    .line 709
    :cond_29
    const/4 v6, 0x1

    .line 710
    :goto_b
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 711
    .line 712
    .line 713
    iget-boolean v2, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mWaitOption:Z

    .line 714
    .line 715
    if-eqz v2, :cond_2e

    .line 716
    .line 717
    if-nez v17, :cond_2a

    .line 718
    .line 719
    new-instance v2, Landroid/app/WaitResult;

    .line 720
    .line 721
    invoke-direct {v2}, Landroid/app/WaitResult;-><init>()V

    .line 722
    .line 723
    .line 724
    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 725
    .line 726
    .line 727
    move-result-object v3

    .line 728
    iput-object v3, v2, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    .line 729
    .line 730
    goto :goto_c

    .line 731
    :cond_2a
    move-object/from16 v2, v17

    .line 732
    .line 733
    :goto_c
    iget-boolean v3, v2, Landroid/app/WaitResult;->timeout:Z

    .line 734
    .line 735
    if-eqz v3, :cond_2b

    .line 736
    .line 737
    const-string/jumbo v3, "timeout"

    .line 738
    .line 739
    .line 740
    goto :goto_d

    .line 741
    :cond_2b
    const-string/jumbo v3, "ok"

    .line 742
    .line 743
    .line 744
    :goto_d
    const-string v7, "Status: "

    .line 745
    .line 746
    invoke-virtual {v7, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 747
    .line 748
    .line 749
    move-result-object v3

    .line 750
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 751
    .line 752
    .line 753
    new-instance v3, Ljava/lang/StringBuilder;

    .line 754
    .line 755
    const-string v7, "LaunchState: "

    .line 756
    .line 757
    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 758
    .line 759
    .line 760
    iget v7, v2, Landroid/app/WaitResult;->launchState:I

    .line 761
    .line 762
    invoke-static {v7}, Landroid/app/WaitResult;->launchStateToString(I)Ljava/lang/String;

    .line 763
    .line 764
    .line 765
    move-result-object v7

    .line 766
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 767
    .line 768
    .line 769
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 770
    .line 771
    .line 772
    move-result-object v3

    .line 773
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 774
    .line 775
    .line 776
    iget-object v3, v2, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    .line 777
    .line 778
    if-eqz v3, :cond_2c

    .line 779
    .line 780
    new-instance v3, Ljava/lang/StringBuilder;

    .line 781
    .line 782
    const-string v7, "Activity: "

    .line 783
    .line 784
    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 785
    .line 786
    .line 787
    iget-object v7, v2, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    .line 788
    .line 789
    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 790
    .line 791
    .line 792
    move-result-object v7

    .line 793
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 794
    .line 795
    .line 796
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 797
    .line 798
    .line 799
    move-result-object v3

    .line 800
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 801
    .line 802
    .line 803
    :cond_2c
    iget-wide v7, v2, Landroid/app/WaitResult;->totalTime:J

    .line 804
    .line 805
    const-wide/16 v9, 0x0

    .line 806
    .line 807
    cmp-long v3, v7, v9

    .line 808
    .line 809
    if-ltz v3, :cond_2d

    .line 810
    .line 811
    new-instance v3, Ljava/lang/StringBuilder;

    .line 812
    .line 813
    const-string v7, "TotalTime: "

    .line 814
    .line 815
    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 816
    .line 817
    .line 818
    iget-wide v7, v2, Landroid/app/WaitResult;->totalTime:J

    .line 819
    .line 820
    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 821
    .line 822
    .line 823
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 824
    .line 825
    .line 826
    move-result-object v2

    .line 827
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 828
    .line 829
    .line 830
    :cond_2d
    new-instance v2, Ljava/lang/StringBuilder;

    .line 831
    .line 832
    const-string v3, "WaitTime: "

    .line 833
    .line 834
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 835
    .line 836
    .line 837
    sub-long v4, v4, v19

    .line 838
    .line 839
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 840
    .line 841
    .line 842
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 843
    .line 844
    .line 845
    move-result-object v2

    .line 846
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 847
    .line 848
    .line 849
    const-string v2, "Complete"

    .line 850
    .line 851
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 852
    .line 853
    .line 854
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->flush()V

    .line 855
    .line 856
    .line 857
    :cond_2e
    iget v2, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mRepeat:I

    .line 858
    .line 859
    sub-int/2addr v2, v6

    .line 860
    iput v2, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mRepeat:I

    .line 861
    .line 862
    if-lez v2, :cond_2f

    .line 863
    .line 864
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 865
    .line 866
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->unhandledBack()V

    .line 867
    .line 868
    .line 869
    :cond_2f
    iget v2, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mRepeat:I

    .line 870
    .line 871
    if-gtz v2, :cond_30

    .line 872
    .line 873
    return v21

    .line 874
    :cond_30
    move v13, v6

    .line 875
    move/from16 v14, v23

    .line 876
    .line 877
    goto/16 :goto_0

    .line 878
    .line 879
    :cond_31
    const/4 v6, 0x1

    .line 880
    new-instance v0, Ljava/lang/StringBuilder;

    .line 881
    .line 882
    const-string v1, "Error: Activity not started, voice control not allowed for: "

    .line 883
    .line 884
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 885
    .line 886
    .line 887
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 888
    .line 889
    .line 890
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 891
    .line 892
    .line 893
    move-result-object v0

    .line 894
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 895
    .line 896
    .line 897
    return v6

    .line 898
    :cond_32
    const/4 v6, 0x1

    .line 899
    const-string v0, "Error: Not allowed to start background user activity that shouldn\'t be displayed for all users."

    .line 900
    .line 901
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 902
    .line 903
    .line 904
    return v6

    .line 905
    :catch_1
    move-exception v0

    .line 906
    move-object v1, v0

    .line 907
    new-instance v0, Ljava/lang/RuntimeException;

    .line 908
    .line 909
    invoke-virtual {v1}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    .line 910
    .line 911
    .line 912
    move-result-object v2

    .line 913
    invoke-direct {v0, v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 914
    .line 915
    .line 916
    throw v0

    .line 917
    :pswitch_data_0
    .packed-switch -0x5e
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final runStartActivityForCarlife(Ljava/io/PrintWriter;)I
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->makeIntent()Landroid/content/Intent;

    .line 6
    .line 7
    .line 8
    move-result-object v15
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    .line 9
    iget v2, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    .line 10
    .line 11
    const/4 v14, -0x1

    .line 12
    const/4 v13, 0x1

    .line 13
    if-ne v2, v14, :cond_0

    .line 14
    .line 15
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "Error: Can\'t start service with user \'all\'"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return v13

    .line 25
    :cond_0
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->BAIDU_CARLIFE:Z

    .line 26
    .line 27
    const-string/jumbo v12, "com.samsung.android.carlink"

    .line 28
    .line 29
    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    if-eqz v2, :cond_1

    .line 37
    .line 38
    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    const-string/jumbo v4, "com.baidu.carlife"

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-eqz v2, :cond_1

    .line 62
    .line 63
    const-string/jumbo v2, "com.baidu.carlife.CarlifeActivity"

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-eqz v2, :cond_1

    .line 71
    .line 72
    invoke-virtual {v15, v12}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    .line 74
    .line 75
    const-string/jumbo v2, "com.samsung.android.carlink.carlife.CarLifeUsbConnectionActivity"

    .line 76
    .line 77
    .line 78
    invoke-virtual {v15, v12, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    .line 80
    .line 81
    new-instance v3, Landroid/content/ComponentName;

    .line 82
    .line 83
    invoke-direct {v3, v12, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v15, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 87
    .line 88
    .line 89
    const-string/jumbo v2, "com.samsung.android.carlink.carlife.USB_ADB_ATTACHED"

    .line 90
    .line 91
    .line 92
    invoke-virtual {v15, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    .line 94
    .line 95
    const-string/jumbo v2, "usb_type"

    .line 96
    .line 97
    .line 98
    const-string v3, "adb"

    .line 99
    .line 100
    invoke-virtual {v15, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    .line 102
    .line 103
    :cond_1
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    .line 104
    .line 105
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 106
    .line 107
    invoke-virtual {v15, v2}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v16

    .line 111
    :goto_0
    iget-boolean v2, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mStopOption:Z

    .line 112
    .line 113
    const/4 v11, 0x0

    .line 114
    if-eqz v2, :cond_6

    .line 115
    .line 116
    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    if-eqz v2, :cond_2

    .line 121
    .line 122
    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    goto :goto_1

    .line 131
    :cond_2
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    .line 132
    .line 133
    iget-object v3, v2, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    .line 134
    .line 135
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 136
    .line 137
    .line 138
    move-result v4

    .line 139
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 140
    .line 141
    .line 142
    move-result v5

    .line 143
    iget v6, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    .line 144
    .line 145
    const/4 v7, 0x0

    .line 146
    const/4 v8, 0x0

    .line 147
    const-string v9, "ActivityManagerShellCommand"

    .line 148
    .line 149
    const/4 v10, 0x0

    .line 150
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/am/UserController;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    .line 151
    .line 152
    .line 153
    move-result v7

    .line 154
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mPm:Landroid/content/pm/IPackageManager;

    .line 155
    .line 156
    const-wide/16 v5, 0x0

    .line 157
    .line 158
    move-object v3, v15

    .line 159
    move-object/from16 v4, v16

    .line 160
    .line 161
    invoke-interface/range {v2 .. v7}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    invoke-virtual {v2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    if-eqz v2, :cond_5

    .line 170
    .line 171
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 172
    .line 173
    .line 174
    move-result v3

    .line 175
    if-gtz v3, :cond_3

    .line 176
    .line 177
    goto :goto_2

    .line 178
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 179
    .line 180
    .line 181
    move-result v3

    .line 182
    if-le v3, v13, :cond_4

    .line 183
    .line 184
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    new-instance v1, Ljava/lang/StringBuilder;

    .line 189
    .line 190
    const-string v2, "Error: Intent matches multiple activities; can\'t stop: "

    .line 191
    .line 192
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    return v13

    .line 206
    :cond_4
    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v2

    .line 210
    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 211
    .line 212
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 213
    .line 214
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 215
    .line 216
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 217
    .line 218
    const-string v4, "Stopping: "

    .line 219
    .line 220
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v3

    .line 230
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->flush()V

    .line 234
    .line 235
    .line 236
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Lcom/android/server/am/ActivityManagerService;

    .line 237
    .line 238
    iget v4, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    .line 239
    .line 240
    invoke-virtual {v3, v2, v4}, Lcom/android/server/am/ActivityManagerService;->forceStopPackage(Ljava/lang/String;I)V

    .line 241
    .line 242
    .line 243
    const-wide/16 v2, 0xfa

    .line 244
    .line 245
    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 246
    .line 247
    .line 248
    goto :goto_3

    .line 249
    :cond_5
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    new-instance v1, Ljava/lang/StringBuilder;

    .line 254
    .line 255
    const-string v2, "Error: Intent does not match any activities: "

    .line 256
    .line 257
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v1

    .line 267
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    return v13

    .line 271
    :catch_0
    :cond_6
    :goto_3
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mProfileFile:Ljava/lang/String;

    .line 272
    .line 273
    const/16 v17, 0x0

    .line 274
    .line 275
    if-nez v2, :cond_8

    .line 276
    .line 277
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mAgent:Ljava/lang/String;

    .line 278
    .line 279
    if-eqz v3, :cond_7

    .line 280
    .line 281
    goto :goto_4

    .line 282
    :cond_7
    move-object/from16 v18, v17

    .line 283
    .line 284
    goto :goto_6

    .line 285
    :cond_8
    :goto_4
    if-eqz v2, :cond_a

    .line 286
    .line 287
    const-string/jumbo v3, "w"

    .line 288
    .line 289
    .line 290
    invoke-virtual {v0, v2, v3}, Landroid/os/ShellCommand;->openFileForSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    .line 291
    .line 292
    .line 293
    move-result-object v2

    .line 294
    if-nez v2, :cond_9

    .line 295
    .line 296
    return v13

    .line 297
    :cond_9
    move-object/from16 v20, v2

    .line 298
    .line 299
    goto :goto_5

    .line 300
    :cond_a
    move-object/from16 v20, v17

    .line 301
    .line 302
    :goto_5
    new-instance v2, Landroid/app/ProfilerInfo;

    .line 303
    .line 304
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mProfileFile:Ljava/lang/String;

    .line 305
    .line 306
    iget v4, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mSamplingInterval:I

    .line 307
    .line 308
    iget-boolean v5, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mAutoStop:Z

    .line 309
    .line 310
    iget-boolean v6, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mStreaming:Z

    .line 311
    .line 312
    iget-object v7, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mAgent:Ljava/lang/String;

    .line 313
    .line 314
    iget-boolean v8, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mAttachAgentDuringBind:Z

    .line 315
    .line 316
    iget v9, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mClockType:I

    .line 317
    .line 318
    iget v10, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mProfilerOutputVersion:I

    .line 319
    .line 320
    move-object/from16 v18, v2

    .line 321
    .line 322
    move-object/from16 v19, v3

    .line 323
    .line 324
    move/from16 v21, v4

    .line 325
    .line 326
    move/from16 v22, v5

    .line 327
    .line 328
    move/from16 v23, v6

    .line 329
    .line 330
    move-object/from16 v24, v7

    .line 331
    .line 332
    move/from16 v25, v8

    .line 333
    .line 334
    move/from16 v26, v9

    .line 335
    .line 336
    move/from16 v27, v10

    .line 337
    .line 338
    invoke-direct/range {v18 .. v27}, Landroid/app/ProfilerInfo;-><init>(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;IZZLjava/lang/String;ZII)V

    .line 339
    .line 340
    .line 341
    :goto_6
    sget-boolean v19, Lcom/samsung/android/rune/CoreRune;->BAIDU_CARLIFE:Z

    .line 342
    .line 343
    if-eqz v19, :cond_c

    .line 344
    .line 345
    invoke-static {}, Lcom/android/server/baiducarlife/BaiduCarlifeADBConnectUtils;->isCarlifeForceConnect()Z

    .line 346
    .line 347
    .line 348
    move-result v2

    .line 349
    if-eqz v2, :cond_c

    .line 350
    .line 351
    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 352
    .line 353
    .line 354
    move-result-object v2

    .line 355
    if-eqz v2, :cond_b

    .line 356
    .line 357
    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 358
    .line 359
    .line 360
    move-result-object v2

    .line 361
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v2

    .line 365
    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 366
    .line 367
    .line 368
    move-result v2

    .line 369
    goto :goto_7

    .line 370
    :cond_b
    move v2, v11

    .line 371
    :goto_7
    if-eqz v2, :cond_c

    .line 372
    .line 373
    const-string v2, "Starting: Intent { cmp=com.baidu.carlife/.CarlifeActivity }"

    .line 374
    .line 375
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 376
    .line 377
    .line 378
    goto :goto_8

    .line 379
    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    .line 380
    .line 381
    const-string v3, "Starting: "

    .line 382
    .line 383
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 384
    .line 385
    .line 386
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 387
    .line 388
    .line 389
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object v2

    .line 393
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 394
    .line 395
    .line 396
    :goto_8
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->flush()V

    .line 397
    .line 398
    .line 399
    const/high16 v2, 0x10000000

    .line 400
    .line 401
    invoke-virtual {v15, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 402
    .line 403
    .line 404
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 405
    .line 406
    .line 407
    move-result-wide v20

    .line 408
    iget v2, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mDisplayId:I

    .line 409
    .line 410
    if-eq v2, v14, :cond_d

    .line 411
    .line 412
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 413
    .line 414
    .line 415
    move-result-object v2

    .line 416
    iget v3, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mDisplayId:I

    .line 417
    .line 418
    invoke-virtual {v2, v3}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    .line 419
    .line 420
    .line 421
    goto :goto_9

    .line 422
    :cond_d
    move-object/from16 v2, v17

    .line 423
    .line 424
    :goto_9
    iget v3, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskDisplayAreaFeatureId:I

    .line 425
    .line 426
    if-eq v3, v14, :cond_f

    .line 427
    .line 428
    if-nez v2, :cond_e

    .line 429
    .line 430
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 431
    .line 432
    .line 433
    move-result-object v2

    .line 434
    :cond_e
    iget v3, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskDisplayAreaFeatureId:I

    .line 435
    .line 436
    invoke-virtual {v2, v3}, Landroid/app/ActivityOptions;->setLaunchTaskDisplayAreaFeatureId(I)V

    .line 437
    .line 438
    .line 439
    :cond_f
    iget v3, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mWindowingMode:I

    .line 440
    .line 441
    if-eqz v3, :cond_11

    .line 442
    .line 443
    if-nez v2, :cond_10

    .line 444
    .line 445
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 446
    .line 447
    .line 448
    move-result-object v2

    .line 449
    :cond_10
    iget v3, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mWindowingMode:I

    .line 450
    .line 451
    invoke-virtual {v2, v3}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 452
    .line 453
    .line 454
    :cond_11
    iget v3, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mForceWindowingMode:I

    .line 455
    .line 456
    if-eqz v3, :cond_13

    .line 457
    .line 458
    if-nez v2, :cond_12

    .line 459
    .line 460
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 461
    .line 462
    .line 463
    move-result-object v2

    .line 464
    :cond_12
    iget v3, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mForceWindowingMode:I

    .line 465
    .line 466
    invoke-virtual {v2, v3}, Landroid/app/ActivityOptions;->setForceLaunchWindowingMode(I)V

    .line 467
    .line 468
    .line 469
    :cond_13
    iget v3, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mWindowingMode:I

    .line 470
    .line 471
    const/4 v4, 0x5

    .line 472
    if-ne v3, v4, :cond_15

    .line 473
    .line 474
    if-nez v2, :cond_14

    .line 475
    .line 476
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 477
    .line 478
    .line 479
    move-result-object v2

    .line 480
    :cond_14
    invoke-virtual {v2, v13}, Landroid/app/ActivityOptions;->setApplyBigFreeformSize(Z)V

    .line 481
    .line 482
    .line 483
    :cond_15
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_RESUMED_AFFORDANCE:Z

    .line 484
    .line 485
    if-eqz v3, :cond_17

    .line 486
    .line 487
    iget-boolean v3, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mIsResumeAffordanceRequested:Z

    .line 488
    .line 489
    if-eqz v3, :cond_17

    .line 490
    .line 491
    if-nez v2, :cond_16

    .line 492
    .line 493
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 494
    .line 495
    .line 496
    move-result-object v2

    .line 497
    :cond_16
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->setResumedAffordanceAnimation()V

    .line 498
    .line 499
    .line 500
    :cond_17
    iget v3, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mActivityType:I

    .line 501
    .line 502
    if-eqz v3, :cond_19

    .line 503
    .line 504
    if-nez v2, :cond_18

    .line 505
    .line 506
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 507
    .line 508
    .line 509
    move-result-object v2

    .line 510
    :cond_18
    iget v3, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mActivityType:I

    .line 511
    .line 512
    invoke-virtual {v2, v3}, Landroid/app/ActivityOptions;->setLaunchActivityType(I)V

    .line 513
    .line 514
    .line 515
    :cond_19
    iget v3, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskId:I

    .line 516
    .line 517
    if-eq v3, v14, :cond_1b

    .line 518
    .line 519
    if-nez v2, :cond_1a

    .line 520
    .line 521
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 522
    .line 523
    .line 524
    move-result-object v2

    .line 525
    :cond_1a
    iget v3, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskId:I

    .line 526
    .line 527
    invoke-virtual {v2, v3}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    .line 528
    .line 529
    .line 530
    iget-boolean v3, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mIsTaskOverlay:Z

    .line 531
    .line 532
    if-eqz v3, :cond_1b

    .line 533
    .line 534
    invoke-virtual {v2, v13, v13}, Landroid/app/ActivityOptions;->setTaskOverlay(ZZ)V

    .line 535
    .line 536
    .line 537
    :cond_1b
    iget-boolean v3, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mIsLockTask:Z

    .line 538
    .line 539
    if-eqz v3, :cond_1d

    .line 540
    .line 541
    if-nez v2, :cond_1c

    .line 542
    .line 543
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 544
    .line 545
    .line 546
    move-result-object v2

    .line 547
    :cond_1c
    invoke-virtual {v2, v13}, Landroid/app/ActivityOptions;->setLockTaskEnabled(Z)Landroid/app/ActivityOptions;

    .line 548
    .line 549
    .line 550
    :cond_1d
    iget-boolean v3, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mShowSplashScreen:Z

    .line 551
    .line 552
    if-eqz v3, :cond_1f

    .line 553
    .line 554
    if-nez v2, :cond_1e

    .line 555
    .line 556
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 557
    .line 558
    .line 559
    move-result-object v2

    .line 560
    :cond_1e
    invoke-virtual {v2, v13}, Landroid/app/ActivityOptions;->setSplashScreenStyle(I)Landroid/app/ActivityOptions;

    .line 561
    .line 562
    .line 563
    :cond_1f
    iget-boolean v3, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mDismissKeyguardIfInsecure:Z

    .line 564
    .line 565
    if-eqz v3, :cond_21

    .line 566
    .line 567
    if-nez v2, :cond_20

    .line 568
    .line 569
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 570
    .line 571
    .line 572
    move-result-object v2

    .line 573
    :cond_20
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->setDismissKeyguardIfInsecure()V

    .line 574
    .line 575
    .line 576
    :cond_21
    iget-boolean v3, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mWaitOption:Z

    .line 577
    .line 578
    if-eqz v3, :cond_23

    .line 579
    .line 580
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    .line 581
    .line 582
    iget v10, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mStartFlags:I

    .line 583
    .line 584
    if-eqz v2, :cond_22

    .line 585
    .line 586
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 587
    .line 588
    .line 589
    move-result-object v2

    .line 590
    move-object/from16 v17, v2

    .line 591
    .line 592
    :cond_22
    iget v9, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    .line 593
    .line 594
    iget-object v2, v3, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 595
    .line 596
    const/16 v22, 0x0

    .line 597
    .line 598
    const/16 v23, 0x0

    .line 599
    .line 600
    const/4 v3, 0x0

    .line 601
    const-string/jumbo v4, "com.android.shell"

    .line 602
    .line 603
    .line 604
    const/4 v5, 0x0

    .line 605
    const/4 v8, 0x0

    .line 606
    move-object v6, v15

    .line 607
    move-object/from16 v7, v16

    .line 608
    .line 609
    move/from16 v24, v9

    .line 610
    .line 611
    move-object/from16 v9, v22

    .line 612
    .line 613
    move/from16 v22, v10

    .line 614
    .line 615
    move/from16 v10, v23

    .line 616
    .line 617
    move/from16 v23, v11

    .line 618
    .line 619
    move/from16 v11, v22

    .line 620
    .line 621
    move-object/from16 v28, v12

    .line 622
    .line 623
    move-object/from16 v12, v18

    .line 624
    .line 625
    move-object/from16 v13, v17

    .line 626
    .line 627
    move/from16 v22, v14

    .line 628
    .line 629
    move/from16 v14, v24

    .line 630
    .line 631
    invoke-virtual/range {v2 .. v14}, Lcom/android/server/wm/ActivityTaskManagerService;->startActivityAndWait(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)Landroid/app/WaitResult;

    .line 632
    .line 633
    .line 634
    move-result-object v2

    .line 635
    iget v3, v2, Landroid/app/WaitResult;->result:I

    .line 636
    .line 637
    move-object/from16 v17, v2

    .line 638
    .line 639
    goto :goto_b

    .line 640
    :cond_23
    move/from16 v23, v11

    .line 641
    .line 642
    move-object/from16 v28, v12

    .line 643
    .line 644
    move/from16 v22, v14

    .line 645
    .line 646
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    .line 647
    .line 648
    iget v11, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mStartFlags:I

    .line 649
    .line 650
    if-eqz v2, :cond_24

    .line 651
    .line 652
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 653
    .line 654
    .line 655
    move-result-object v2

    .line 656
    move-object v13, v2

    .line 657
    goto :goto_a

    .line 658
    :cond_24
    move-object/from16 v13, v17

    .line 659
    .line 660
    :goto_a
    iget v14, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    .line 661
    .line 662
    const/4 v9, 0x0

    .line 663
    const/4 v10, 0x0

    .line 664
    const/4 v4, 0x0

    .line 665
    const-string/jumbo v5, "com.android.shell"

    .line 666
    .line 667
    .line 668
    const/4 v6, 0x0

    .line 669
    const/4 v8, 0x0

    .line 670
    move-object v2, v3

    .line 671
    move-object v3, v4

    .line 672
    move-object v4, v5

    .line 673
    move-object v5, v6

    .line 674
    move-object v6, v15

    .line 675
    move-object/from16 v7, v16

    .line 676
    .line 677
    move-object/from16 v12, v18

    .line 678
    .line 679
    invoke-virtual/range {v2 .. v14}, Lcom/android/server/am/ActivityManagerService;->startActivityAsUserWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    .line 680
    .line 681
    .line 682
    move-result v3

    .line 683
    :goto_b
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 684
    .line 685
    .line 686
    move-result-wide v4

    .line 687
    iget-boolean v2, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mWaitOption:Z

    .line 688
    .line 689
    if-eqz v2, :cond_25

    .line 690
    .line 691
    move-object v2, v1

    .line 692
    goto :goto_c

    .line 693
    :cond_25
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 694
    .line 695
    .line 696
    move-result-object v2

    .line 697
    :goto_c
    if-eqz v19, :cond_27

    .line 698
    .line 699
    invoke-static {}, Lcom/android/server/baiducarlife/BaiduCarlifeADBConnectUtils;->isCarlifeForceConnect()Z

    .line 700
    .line 701
    .line 702
    move-result v6

    .line 703
    if-eqz v6, :cond_27

    .line 704
    .line 705
    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 706
    .line 707
    .line 708
    move-result-object v6

    .line 709
    if-eqz v6, :cond_26

    .line 710
    .line 711
    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 712
    .line 713
    .line 714
    move-result-object v6

    .line 715
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 716
    .line 717
    .line 718
    move-result-object v6

    .line 719
    move-object/from16 v7, v28

    .line 720
    .line 721
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 722
    .line 723
    .line 724
    move-result v11

    .line 725
    goto :goto_d

    .line 726
    :cond_26
    move-object/from16 v7, v28

    .line 727
    .line 728
    move/from16 v11, v23

    .line 729
    .line 730
    :goto_d
    if-eqz v11, :cond_28

    .line 731
    .line 732
    const-string v3, "Warning: Activity not started, its current task has been brought to the front."

    .line 733
    .line 734
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 735
    .line 736
    .line 737
    const/4 v6, 0x1

    .line 738
    goto/16 :goto_11

    .line 739
    .line 740
    :cond_27
    move-object/from16 v7, v28

    .line 741
    .line 742
    :cond_28
    const/16 v6, -0x62

    .line 743
    .line 744
    if-eq v3, v6, :cond_36

    .line 745
    .line 746
    const/16 v6, -0x61

    .line 747
    .line 748
    if-eq v3, v6, :cond_35

    .line 749
    .line 750
    if-eqz v3, :cond_2d

    .line 751
    .line 752
    const/4 v6, 0x1

    .line 753
    if-eq v3, v6, :cond_2c

    .line 754
    .line 755
    const/4 v8, 0x2

    .line 756
    if-eq v3, v8, :cond_2b

    .line 757
    .line 758
    const/4 v8, 0x3

    .line 759
    if-eq v3, v8, :cond_2a

    .line 760
    .line 761
    const/16 v8, 0x64

    .line 762
    .line 763
    if-eq v3, v8, :cond_29

    .line 764
    .line 765
    packed-switch v3, :pswitch_data_0

    .line 766
    .line 767
    .line 768
    const-string v0, "Error: Activity not started, unknown error code "

    .line 769
    .line 770
    invoke-static {v2, v0, v3}, Lcom/android/server/accounts/AccountManagerServiceShellCommand$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 771
    .line 772
    .line 773
    return v6

    .line 774
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 775
    .line 776
    const-string v1, "Error: Activity not started, unable to resolve "

    .line 777
    .line 778
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 779
    .line 780
    .line 781
    invoke-virtual {v15}, Landroid/content/Intent;->toString()Ljava/lang/String;

    .line 782
    .line 783
    .line 784
    move-result-object v1

    .line 785
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 786
    .line 787
    .line 788
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 789
    .line 790
    .line 791
    move-result-object v0

    .line 792
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 793
    .line 794
    .line 795
    return v6

    .line 796
    :pswitch_1
    const-string v0, "Error type 3"

    .line 797
    .line 798
    const-string v1, "Error: Activity class "

    .line 799
    .line 800
    invoke-static {v2, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 801
    .line 802
    .line 803
    move-result-object v0

    .line 804
    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 805
    .line 806
    .line 807
    move-result-object v1

    .line 808
    invoke-virtual {v1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    .line 809
    .line 810
    .line 811
    move-result-object v1

    .line 812
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 813
    .line 814
    .line 815
    const-string v1, " does not exist."

    .line 816
    .line 817
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 818
    .line 819
    .line 820
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 821
    .line 822
    .line 823
    move-result-object v0

    .line 824
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 825
    .line 826
    .line 827
    return v6

    .line 828
    :pswitch_2
    const-string v0, "Error: Activity not started, you requested to both forward and receive its result"

    .line 829
    .line 830
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 831
    .line 832
    .line 833
    return v6

    .line 834
    :pswitch_3
    const-string v0, "Error: Activity not started, you do not have permission to access it."

    .line 835
    .line 836
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 837
    .line 838
    .line 839
    return v6

    .line 840
    :cond_29
    const-string v3, "Warning: Activity not started because the  current activity is being kept for the user."

    .line 841
    .line 842
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 843
    .line 844
    .line 845
    goto :goto_e

    .line 846
    :cond_2a
    const-string v3, "Warning: Activity not started, intent has been delivered to currently running top-most instance."

    .line 847
    .line 848
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 849
    .line 850
    .line 851
    goto :goto_e

    .line 852
    :cond_2b
    const-string v3, "Warning: Activity not started, its current task has been brought to the front"

    .line 853
    .line 854
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 855
    .line 856
    .line 857
    goto :goto_e

    .line 858
    :cond_2c
    const-string v3, "Warning: Activity not started because intent should be handled by the caller"

    .line 859
    .line 860
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 861
    .line 862
    .line 863
    goto :goto_e

    .line 864
    :cond_2d
    const/4 v6, 0x1

    .line 865
    :goto_e
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 866
    .line 867
    .line 868
    iget-boolean v2, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mWaitOption:Z

    .line 869
    .line 870
    if-eqz v2, :cond_32

    .line 871
    .line 872
    if-nez v17, :cond_2e

    .line 873
    .line 874
    new-instance v2, Landroid/app/WaitResult;

    .line 875
    .line 876
    invoke-direct {v2}, Landroid/app/WaitResult;-><init>()V

    .line 877
    .line 878
    .line 879
    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 880
    .line 881
    .line 882
    move-result-object v3

    .line 883
    iput-object v3, v2, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    .line 884
    .line 885
    goto :goto_f

    .line 886
    :cond_2e
    move-object/from16 v2, v17

    .line 887
    .line 888
    :goto_f
    iget-boolean v3, v2, Landroid/app/WaitResult;->timeout:Z

    .line 889
    .line 890
    if-eqz v3, :cond_2f

    .line 891
    .line 892
    const-string/jumbo v3, "timeout"

    .line 893
    .line 894
    .line 895
    goto :goto_10

    .line 896
    :cond_2f
    const-string/jumbo v3, "ok"

    .line 897
    .line 898
    .line 899
    :goto_10
    const-string v8, "Status: "

    .line 900
    .line 901
    invoke-virtual {v8, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 902
    .line 903
    .line 904
    move-result-object v3

    .line 905
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 906
    .line 907
    .line 908
    new-instance v3, Ljava/lang/StringBuilder;

    .line 909
    .line 910
    const-string v8, "LaunchState: "

    .line 911
    .line 912
    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 913
    .line 914
    .line 915
    iget v8, v2, Landroid/app/WaitResult;->launchState:I

    .line 916
    .line 917
    invoke-static {v8}, Landroid/app/WaitResult;->launchStateToString(I)Ljava/lang/String;

    .line 918
    .line 919
    .line 920
    move-result-object v8

    .line 921
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 922
    .line 923
    .line 924
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 925
    .line 926
    .line 927
    move-result-object v3

    .line 928
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 929
    .line 930
    .line 931
    iget-object v3, v2, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    .line 932
    .line 933
    if-eqz v3, :cond_30

    .line 934
    .line 935
    new-instance v3, Ljava/lang/StringBuilder;

    .line 936
    .line 937
    const-string v8, "Activity: "

    .line 938
    .line 939
    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 940
    .line 941
    .line 942
    iget-object v8, v2, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    .line 943
    .line 944
    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 945
    .line 946
    .line 947
    move-result-object v8

    .line 948
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 949
    .line 950
    .line 951
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 952
    .line 953
    .line 954
    move-result-object v3

    .line 955
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 956
    .line 957
    .line 958
    :cond_30
    iget-wide v8, v2, Landroid/app/WaitResult;->totalTime:J

    .line 959
    .line 960
    const-wide/16 v10, 0x0

    .line 961
    .line 962
    cmp-long v3, v8, v10

    .line 963
    .line 964
    if-ltz v3, :cond_31

    .line 965
    .line 966
    new-instance v3, Ljava/lang/StringBuilder;

    .line 967
    .line 968
    const-string v8, "TotalTime: "

    .line 969
    .line 970
    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 971
    .line 972
    .line 973
    iget-wide v8, v2, Landroid/app/WaitResult;->totalTime:J

    .line 974
    .line 975
    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 976
    .line 977
    .line 978
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 979
    .line 980
    .line 981
    move-result-object v2

    .line 982
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 983
    .line 984
    .line 985
    :cond_31
    new-instance v2, Ljava/lang/StringBuilder;

    .line 986
    .line 987
    const-string v3, "WaitTime: "

    .line 988
    .line 989
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 990
    .line 991
    .line 992
    sub-long v4, v4, v20

    .line 993
    .line 994
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 995
    .line 996
    .line 997
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 998
    .line 999
    .line 1000
    move-result-object v2

    .line 1001
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1002
    .line 1003
    .line 1004
    const-string v2, "Complete"

    .line 1005
    .line 1006
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1007
    .line 1008
    .line 1009
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->flush()V

    .line 1010
    .line 1011
    .line 1012
    :cond_32
    :goto_11
    iget v2, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mRepeat:I

    .line 1013
    .line 1014
    sub-int/2addr v2, v6

    .line 1015
    iput v2, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mRepeat:I

    .line 1016
    .line 1017
    if-lez v2, :cond_33

    .line 1018
    .line 1019
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1020
    .line 1021
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->unhandledBack()V

    .line 1022
    .line 1023
    .line 1024
    :cond_33
    iget v2, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mRepeat:I

    .line 1025
    .line 1026
    if-gtz v2, :cond_34

    .line 1027
    .line 1028
    return v23

    .line 1029
    :cond_34
    move v13, v6

    .line 1030
    move-object v12, v7

    .line 1031
    move/from16 v14, v22

    .line 1032
    .line 1033
    goto/16 :goto_0

    .line 1034
    .line 1035
    :cond_35
    const/4 v6, 0x1

    .line 1036
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1037
    .line 1038
    const-string v1, "Error: Activity not started, voice control not allowed for: "

    .line 1039
    .line 1040
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1041
    .line 1042
    .line 1043
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1044
    .line 1045
    .line 1046
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1047
    .line 1048
    .line 1049
    move-result-object v0

    .line 1050
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1051
    .line 1052
    .line 1053
    return v6

    .line 1054
    :cond_36
    const/4 v6, 0x1

    .line 1055
    const-string v0, "Error: Not allowed to start background user activity that shouldn\'t be displayed for all users."

    .line 1056
    .line 1057
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1058
    .line 1059
    .line 1060
    return v6

    .line 1061
    :catch_1
    move-exception v0

    .line 1062
    move-object v1, v0

    .line 1063
    new-instance v0, Ljava/lang/RuntimeException;

    .line 1064
    .line 1065
    invoke-virtual {v1}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    .line 1066
    .line 1067
    .line 1068
    move-result-object v2

    .line 1069
    invoke-direct {v0, v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1070
    .line 1071
    .line 1072
    throw v0

    .line 1073
    :pswitch_data_0
    .packed-switch -0x5e
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final runStartInfoDetailedMonitoring(Ljava/io/PrintWriter;)I
    .locals 7

    .line 1
    const/4 v0, -0x2

    .line 2
    move v1, v0

    .line 3
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    const/4 v3, -0x1

    .line 8
    if-eqz v2, :cond_1

    .line 9
    .line 10
    const-string v1, "--user"

    .line 11
    .line 12
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    const-string p1, "Error: Unknown option: "

    .line 32
    .line 33
    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return v3

    .line 41
    :cond_1
    if-ne v1, v0, :cond_3

    .line 42
    .line 43
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Lcom/android/server/am/ActivityManagerService;

    .line 44
    .line 45
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/android/server/am/UserController;->getCurrentUser()Landroid/content/pm/UserInfo;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    if-nez v0, :cond_2

    .line 52
    .line 53
    return v3

    .line 54
    :cond_2
    iget v1, v0, Landroid/content/pm/UserInfo;->id:I

    .line 55
    .line 56
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    .line 57
    .line 58
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 59
    .line 60
    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mAppStartInfoTracker:Lcom/android/server/am/AppStartInfoTracker;

    .line 61
    .line 62
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    const-string v2, "Package "

    .line 67
    .line 68
    iget-object v3, v0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    .line 69
    .line 70
    monitor-enter v3

    .line 71
    :try_start_0
    iget-boolean v4, v0, Lcom/android/server/am/AppStartInfoTracker;->mEnabled:Z

    .line 72
    .line 73
    const/4 v5, 0x0

    .line 74
    if-nez v4, :cond_4

    .line 75
    .line 76
    monitor-exit v3

    .line 77
    goto :goto_3

    .line 78
    :catchall_0
    move-exception p0

    .line 79
    goto :goto_4

    .line 80
    :cond_4
    new-instance v4, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda5;

    .line 81
    .line 82
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v4}, Lcom/android/server/am/AppStartInfoTracker;->forEachPackageLocked(Ljava/util/function/BiFunction;)Z

    .line 86
    .line 87
    .line 88
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    if-eqz v4, :cond_5

    .line 93
    .line 94
    const-string p0, "ActivityManager AppStartInfo detailed monitoring disabled"

    .line 95
    .line 96
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_5
    iget-object v0, v0, Lcom/android/server/am/AppStartInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    .line 101
    .line 102
    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    check-cast v0, Landroid/util/SparseArray;

    .line 111
    .line 112
    if-eqz v0, :cond_8

    .line 113
    .line 114
    move v2, v5

    .line 115
    :goto_1
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 116
    .line 117
    .line 118
    move-result v4

    .line 119
    if-ge v2, v4, :cond_7

    .line 120
    .line 121
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    check-cast v4, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;

    .line 126
    .line 127
    iget v6, v4, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->mUid:I

    .line 128
    .line 129
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    .line 130
    .line 131
    .line 132
    move-result v6

    .line 133
    if-ne v6, v1, :cond_6

    .line 134
    .line 135
    const/4 v6, 0x1

    .line 136
    iput-boolean v6, v4, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->mMonitoringModeEnabled:Z

    .line 137
    .line 138
    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    .line 145
    .line 146
    const-string v1, "ActivityManager AppStartInfo detailed monitoring enabled for "

    .line 147
    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    goto :goto_2

    .line 162
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    const-string p0, " not found"

    .line 171
    .line 172
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p0

    .line 179
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    :goto_2
    monitor-exit v3

    .line 183
    :goto_3
    return v5

    .line 184
    :goto_4
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    throw p0
.end method

.method public final runStartService(Ljava/io/PrintWriter;Z)I
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->makeIntent()Landroid/content/Intent;

    .line 6
    .line 7
    .line 8
    move-result-object v3
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    iget v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    .line 10
    .line 11
    const/4 v9, -0x1

    .line 12
    if-ne v1, v9, :cond_0

    .line 13
    .line 14
    const-string p0, "Error: Can\'t start activity with user \'all\'"

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return v9

    .line 20
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v2, "Starting service: "

    .line 23
    .line 24
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Lcom/android/server/am/ActivityManagerService;

    .line 41
    .line 42
    invoke-virtual {v3}, Landroid/content/Intent;->getType()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    iget v8, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    .line 47
    .line 48
    const-string/jumbo v6, "com.android.shell"

    .line 49
    .line 50
    .line 51
    const/4 v7, 0x0

    .line 52
    const/4 v2, 0x0

    .line 53
    move v5, p2

    .line 54
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/ActivityManagerService;->startService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)Landroid/content/ComponentName;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    if-nez p0, :cond_1

    .line 59
    .line 60
    const-string p0, "Error: Not found; no service started."

    .line 61
    .line 62
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    return v9

    .line 66
    :cond_1
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    const-string p2, "!"

    .line 71
    .line 72
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    if-eqz p1, :cond_2

    .line 77
    .line 78
    new-instance p1, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    const-string p2, "Error: Requires permission "

    .line 81
    .line 82
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    return v9

    .line 100
    :cond_2
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    const-string p2, "!!"

    .line 105
    .line 106
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    const-string p2, "Error: "

    .line 111
    .line 112
    if-eqz p1, :cond_3

    .line 113
    .line 114
    new-instance p1, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    return v9

    .line 134
    :cond_3
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    const-string v1, "?"

    .line 139
    .line 140
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result p1

    .line 144
    if-eqz p1, :cond_4

    .line 145
    .line 146
    new-instance p1, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p0

    .line 155
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p0

    .line 162
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    return v9

    .line 166
    :cond_4
    const/4 p0, 0x0

    .line 167
    return p0

    .line 168
    :catch_0
    move-exception p0

    .line 169
    new-instance p1, Ljava/lang/RuntimeException;

    .line 170
    .line 171
    invoke-virtual {p0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p2

    .line 175
    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 176
    .line 177
    .line 178
    throw p1
.end method

.method public final runStartUser(Ljava/io/PrintWriter;)I
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, -0x1

    .line 7
    move v4, v2

    .line 8
    move v5, v3

    .line 9
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v6

    .line 13
    const/4 v7, 0x1

    .line 14
    if-eqz v6, :cond_3

    .line 15
    .line 16
    const-string v8, "--display"

    .line 17
    .line 18
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v8

    .line 22
    if-nez v8, :cond_1

    .line 23
    .line 24
    const-string v4, "-w"

    .line 25
    .line 26
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-nez v4, :cond_0

    .line 31
    .line 32
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-string v1, "Error: unknown option: "

    .line 37
    .line 38
    invoke-virtual {v1, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return v3

    .line 46
    :cond_0
    move v4, v7

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    if-ltz v5, :cond_2

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 60
    .line 61
    const-string v1, "--display must be a non-negative integer"

    .line 62
    .line 63
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw v0

    .line 67
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    move-result v6

    .line 75
    if-eqz v4, :cond_4

    .line 76
    .line 77
    new-instance v8, Lcom/android/server/am/ActivityManagerShellCommand$ProgressWaiter;

    .line 78
    .line 79
    invoke-direct {v8, v6}, Lcom/android/server/am/ActivityManagerShellCommand$ProgressWaiter;-><init>(I)V

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_4
    const/4 v8, 0x0

    .line 84
    :goto_1
    const-class v9, Lcom/android/server/pm/UserManagerInternal;

    .line 85
    .line 86
    invoke-static {v9}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v9

    .line 90
    check-cast v9, Lcom/android/server/pm/UserManagerInternal;

    .line 91
    .line 92
    const-class v10, Landroid/app/ActivityManagerInternal;

    .line 93
    .line 94
    invoke-static {v10}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v10

    .line 98
    check-cast v10, Landroid/app/ActivityManagerInternal;

    .line 99
    .line 100
    invoke-virtual {v9, v6}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    .line 101
    .line 102
    .line 103
    move-result v9

    .line 104
    invoke-virtual {v10}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    .line 105
    .line 106
    .line 107
    move-result v10

    .line 108
    if-eq v9, v6, :cond_5

    .line 109
    .line 110
    move v11, v7

    .line 111
    goto :goto_2

    .line 112
    :cond_5
    move v11, v2

    .line 113
    :goto_2
    if-eqz v11, :cond_6

    .line 114
    .line 115
    if-ne v9, v10, :cond_6

    .line 116
    .line 117
    goto :goto_3

    .line 118
    :cond_6
    move v7, v2

    .line 119
    :goto_3
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 120
    .line 121
    .line 122
    move-result-object v12

    .line 123
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 124
    .line 125
    .line 126
    move-result-object v13

    .line 127
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 128
    .line 129
    .line 130
    move-result-object v14

    .line 131
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 132
    .line 133
    .line 134
    move-result-object v15

    .line 135
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 136
    .line 137
    .line 138
    move-result-object v16

    .line 139
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 140
    .line 141
    .line 142
    move-result-object v17

    .line 143
    move-object v9, v12

    .line 144
    move-object v10, v13

    .line 145
    move-object v11, v14

    .line 146
    move-object v12, v15

    .line 147
    move-object/from16 v13, v16

    .line 148
    .line 149
    move-object/from16 v14, v17

    .line 150
    .line 151
    move-object v15, v8

    .line 152
    filled-new-array/range {v9 .. v15}, [Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v9

    .line 156
    const-string/jumbo v10, "runStartUser(): userId=%d, parentUserId=%d, currentUserId=%d, isProfile=%b, isVisibleProfile=%b, display=%d, waiter=%s"

    .line 157
    .line 158
    .line 159
    const-string v11, "ActivityManager"

    .line 160
    .line 161
    invoke-static {v11, v10, v9}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    .line 163
    .line 164
    new-instance v9, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    const-string/jumbo v10, "shell_runStartUser"

    .line 167
    .line 168
    .line 169
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v9

    .line 179
    const-wide/16 v12, 0x40

    .line 180
    .line 181
    invoke-static {v12, v13, v9}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 182
    .line 183
    .line 184
    const-string v9, ""

    .line 185
    .line 186
    if-eqz v7, :cond_7

    .line 187
    .line 188
    :try_start_0
    const-string/jumbo v3, "calling startProfileWithListener(%d, %s)"

    .line 189
    .line 190
    .line 191
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 192
    .line 193
    .line 194
    move-result-object v5

    .line 195
    filled-new-array {v5, v8}, [Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v5

    .line 199
    invoke-static {v11, v3, v5}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    .line 201
    .line 202
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Lcom/android/server/am/ActivityManagerService;

    .line 203
    .line 204
    invoke-virtual {v3, v6, v8}, Lcom/android/server/am/ActivityManagerService;->startProfileWithListener(ILandroid/os/IProgressListener;)Z

    .line 205
    .line 206
    .line 207
    move-result v3

    .line 208
    goto :goto_4

    .line 209
    :catchall_0
    move-exception v0

    .line 210
    goto/16 :goto_7

    .line 211
    .line 212
    :cond_7
    if-ne v5, v3, :cond_8

    .line 213
    .line 214
    const-string/jumbo v3, "calling startUserInBackgroundWithListener(%d)"

    .line 215
    .line 216
    .line 217
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 218
    .line 219
    .line 220
    move-result-object v5

    .line 221
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v5

    .line 225
    invoke-static {v11, v3, v5}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 226
    .line 227
    .line 228
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Lcom/android/server/am/ActivityManagerService;

    .line 229
    .line 230
    invoke-virtual {v3, v6, v8}, Lcom/android/server/am/ActivityManagerService;->startUserInBackgroundWithListener(ILandroid/os/IProgressListener;)Z

    .line 231
    .line 232
    .line 233
    move-result v3

    .line 234
    goto :goto_4

    .line 235
    :cond_8
    invoke-static {}, Landroid/os/UserManager;->isVisibleBackgroundUsersEnabled()Z

    .line 236
    .line 237
    .line 238
    move-result v7

    .line 239
    if-nez v7, :cond_9

    .line 240
    .line 241
    const-string v0, "Not supported"

    .line 242
    .line 243
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    .line 245
    .line 246
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 247
    .line 248
    .line 249
    return v3

    .line 250
    :cond_9
    :try_start_1
    const-string/jumbo v3, "calling startUserInBackgroundVisibleOnDisplay(%d, %d, %s)"

    .line 251
    .line 252
    .line 253
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 254
    .line 255
    .line 256
    move-result-object v7

    .line 257
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 258
    .line 259
    .line 260
    move-result-object v9

    .line 261
    filled-new-array {v7, v9, v8}, [Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v7

    .line 265
    invoke-static {v11, v3, v7}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 266
    .line 267
    .line 268
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Lcom/android/server/am/ActivityManagerService;

    .line 269
    .line 270
    invoke-virtual {v3, v6, v5, v8}, Lcom/android/server/am/ActivityManagerService;->startUserInBackgroundVisibleOnDisplay(IILandroid/os/IProgressListener;)Z

    .line 271
    .line 272
    .line 273
    move-result v3

    .line 274
    new-instance v6, Ljava/lang/StringBuilder;

    .line 275
    .line 276
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 277
    .line 278
    .line 279
    const-string v7, " on display "

    .line 280
    .line 281
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v9

    .line 291
    :goto_4
    if-eqz v4, :cond_a

    .line 292
    .line 293
    if-eqz v3, :cond_a

    .line 294
    .line 295
    const-string/jumbo v3, "waiting %d ms"

    .line 296
    .line 297
    .line 298
    const v4, 0x1d4c0

    .line 299
    .line 300
    .line 301
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 302
    .line 303
    .line 304
    move-result-object v4

    .line 305
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    move-result-object v4

    .line 309
    invoke-static {v11, v3, v4}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 313
    .line 314
    .line 315
    :try_start_2
    iget-object v3, v8, Lcom/android/server/am/ActivityManagerShellCommand$ProgressWaiter;->mFinishedLatch:Ljava/util/concurrent/CountDownLatch;

    .line 316
    .line 317
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 318
    .line 319
    const-wide/32 v5, 0x1d4c0

    .line 320
    .line 321
    .line 322
    invoke-virtual {v3, v5, v6, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 323
    .line 324
    .line 325
    move-result v3
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 326
    goto :goto_5

    .line 327
    :catch_0
    :try_start_3
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 328
    .line 329
    const-string v4, "Thread interrupted unexpectedly."

    .line 330
    .line 331
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 332
    .line 333
    .line 334
    move v3, v2

    .line 335
    :cond_a
    :goto_5
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 336
    .line 337
    .line 338
    if-eqz v3, :cond_b

    .line 339
    .line 340
    const-string v0, "Success: user started"

    .line 341
    .line 342
    invoke-static {v1, v0, v9}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    goto :goto_6

    .line 346
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 347
    .line 348
    .line 349
    move-result-object v0

    .line 350
    const-string v1, "Error: could not start user"

    .line 351
    .line 352
    invoke-static {v0, v1, v9}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    .line 354
    .line 355
    :goto_6
    return v2

    .line 356
    :goto_7
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 357
    .line 358
    .line 359
    throw v0
.end method

.method public final runStopApp()I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    if-eqz v2, :cond_1

    .line 8
    .line 9
    const-string v1, "--user"

    .line 10
    .line 11
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    const-string v0, "Error: Unknown option: "

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const/4 p0, -0x1

    .line 40
    return p0

    .line 41
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Lcom/android/server/am/ActivityManagerService;

    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {v2, p0, v1}, Lcom/android/server/am/ActivityManagerService;->stopAppForUser(Ljava/lang/String;I)V

    .line 48
    .line 49
    .line 50
    return v0
.end method

.method public final runStopService(Ljava/io/PrintWriter;)I
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->makeIntent()Landroid/content/Intent;

    .line 6
    .line 7
    .line 8
    move-result-object v1
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    iget v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    .line 10
    .line 11
    const/4 v3, -0x1

    .line 12
    if-ne v2, v3, :cond_0

    .line 13
    .line 14
    const-string p0, "Error: Can\'t stop activity with user \'all\'"

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return v3

    .line 20
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v4, "Stopping service: "

    .line 23
    .line 24
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Lcom/android/server/am/ActivityManagerService;

    .line 41
    .line 42
    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    iget p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    .line 47
    .line 48
    const/4 v4, 0x0

    .line 49
    invoke-virtual {p1, v4, v1, v2, p0}, Lcom/android/server/am/ActivityManagerService;->stopService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;I)I

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    if-nez p0, :cond_1

    .line 54
    .line 55
    const-string p0, "Service not stopped: was not running."

    .line 56
    .line 57
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return v3

    .line 61
    :cond_1
    const/4 p1, 0x1

    .line 62
    if-ne p0, p1, :cond_2

    .line 63
    .line 64
    const-string p0, "Service stopped"

    .line 65
    .line 66
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    return v3

    .line 70
    :cond_2
    if-ne p0, v3, :cond_3

    .line 71
    .line 72
    const-string p0, "Error stopping service"

    .line 73
    .line 74
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    return v3

    .line 78
    :cond_3
    const/4 p0, 0x0

    .line 79
    return p0

    .line 80
    :catch_0
    move-exception p0

    .line 81
    new-instance p1, Ljava/lang/RuntimeException;

    .line 82
    .line 83
    invoke-virtual {p0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    .line 89
    .line 90
    throw p1
.end method

.method public final runStopUser()I
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v3

    .line 8
    const/4 v4, -0x1

    .line 9
    if-eqz v3, :cond_2

    .line 10
    .line 11
    const-string v5, "-w"

    .line 12
    .line 13
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v5

    .line 17
    const/4 v6, 0x1

    .line 18
    if-eqz v5, :cond_0

    .line 19
    .line 20
    move v1, v6

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const-string v2, "-f"

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    move v2, v6

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    const-string v0, "Error: unknown option: "

    .line 37
    .line 38
    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return v4

    .line 46
    :cond_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-eqz v1, :cond_3

    .line 55
    .line 56
    new-instance v1, Lcom/android/server/am/ActivityManagerShellCommand$StopUserCallback;

    .line 57
    .line 58
    invoke-direct {v1, v3}, Lcom/android/server/am/ActivityManagerShellCommand$StopUserCallback;-><init>(I)V

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_3
    const/4 v1, 0x0

    .line 63
    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    filled-new-array {v5, v6, v1}, [Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    const-string v6, "ActivityManager"

    .line 76
    .line 77
    const-string v7, "Calling stopUser(%d, %b, %s)"

    .line 78
    .line 79
    invoke-static {v6, v7, v5}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    new-instance v5, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    const-string/jumbo v6, "shell_runStopUser-"

    .line 85
    .line 86
    .line 87
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v6, "-[stopUser]"

    .line 94
    .line 95
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    const-wide/16 v6, 0x40

    .line 103
    .line 104
    invoke-static {v6, v7, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 105
    .line 106
    .line 107
    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Lcom/android/server/am/ActivityManagerService;

    .line 108
    .line 109
    invoke-virtual {v5, v3, v2, v1}, Lcom/android/server/am/ActivityManagerService;->stopUserExceptCertainProfiles(IZLandroid/app/IStopUserCallback;)I

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    if-eqz v2, :cond_8

    .line 114
    .line 115
    const-string v0, ""

    .line 116
    .line 117
    const/4 v1, -0x4

    .line 118
    if-eq v2, v1, :cond_7

    .line 119
    .line 120
    const/4 v1, -0x3

    .line 121
    if-eq v2, v1, :cond_6

    .line 122
    .line 123
    const/4 v1, -0x2

    .line 124
    if-eq v2, v1, :cond_5

    .line 125
    .line 126
    if-eq v2, v4, :cond_4

    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .line 133
    .line 134
    const-string v1, " (Unknown user "

    .line 135
    .line 136
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    const-string v1, ")"

    .line 143
    .line 144
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    goto :goto_2

    .line 152
    :catchall_0
    move-exception p0

    .line 153
    goto :goto_3

    .line 154
    :cond_5
    const-string v0, " (Can\'t stop current user)"

    .line 155
    .line 156
    goto :goto_2

    .line 157
    :cond_6
    const-string v0, " (System user cannot be stopped)"

    .line 158
    .line 159
    goto :goto_2

    .line 160
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 161
    .line 162
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    .line 164
    .line 165
    const-string v1, " (Can\'t stop user "

    .line 166
    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    const-string v1, " - one of its related users can\'t be stopped)"

    .line 174
    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    :goto_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 183
    .line 184
    .line 185
    move-result-object p0

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    .line 187
    .line 188
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    .line 190
    .line 191
    const-string v3, "Switch failed: "

    .line 192
    .line 193
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    .line 208
    .line 209
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 210
    .line 211
    .line 212
    return v4

    .line 213
    :cond_8
    if-eqz v1, :cond_9

    .line 214
    .line 215
    :try_start_1
    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerShellCommand$StopUserCallback;->waitForFinish()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 216
    .line 217
    .line 218
    :cond_9
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 219
    .line 220
    .line 221
    return v0

    .line 222
    :goto_3
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 223
    .line 224
    .line 225
    throw p0
.end method

.method public final runSupportsMultiwindow(Ljava/io/PrintWriter;)I
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->getResources(Ljava/io/PrintWriter;)Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p0, -0x1

    .line 8
    return p0

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    invoke-static {p0}, Landroid/app/ActivityTaskManager;->supportsMultiWindow(Landroid/content/Context;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Z)V

    .line 18
    .line 19
    .line 20
    const/4 p0, 0x0

    .line 21
    return p0
.end method

.method public final runSwitchUser(Ljava/io/PrintWriter;)I
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    const/4 v3, -0x1

    .line 8
    const/4 v4, 0x1

    .line 9
    if-eqz v2, :cond_1

    .line 10
    .line 11
    const-string v1, "-w"

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    move v1, v4

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    const-string p1, "Error: unknown option: "

    .line 26
    .line 27
    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return v3

    .line 35
    :cond_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    .line 44
    .line 45
    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 46
    .line 47
    const-class v6, Landroid/os/UserManager;

    .line 48
    .line 49
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    check-cast v5, Landroid/os/UserManager;

    .line 54
    .line 55
    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    invoke-virtual {v5, v6}, Landroid/os/UserManager;->getUserSwitchability(Landroid/os/UserHandle;)I

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    if-eqz v5, :cond_2

    .line 64
    .line 65
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    const-string p1, "Error: UserSwitchabilityResult="

    .line 70
    .line 71
    invoke-static {p0, p1, v5}, Lcom/android/server/accounts/AccountManagerServiceShellCommand$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 72
    .line 73
    .line 74
    return v3

    .line 75
    :cond_2
    const-wide/16 v5, 0x40

    .line 76
    .line 77
    const-string/jumbo v3, "shell_runSwitchUser"

    .line 78
    .line 79
    .line 80
    invoke-static {v5, v6, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 81
    .line 82
    .line 83
    if-eqz v1, :cond_3

    .line 84
    .line 85
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityManagerShellCommand;->switchUserAndWaitForComplete(I)Z

    .line 86
    .line 87
    .line 88
    move-result p0

    .line 89
    goto :goto_1

    .line 90
    :catchall_0
    move-exception p0

    .line 91
    goto :goto_2

    .line 92
    :cond_3
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Lcom/android/server/am/ActivityManagerService;

    .line 93
    .line 94
    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityManagerService;->switchUser(I)Z

    .line 95
    .line 96
    .line 97
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    :goto_1
    if-eqz p0, :cond_4

    .line 99
    .line 100
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 101
    .line 102
    .line 103
    return v0

    .line 104
    :cond_4
    :try_start_1
    const-string p0, "Error: Failed to switch to user %d\n"

    .line 105
    .line 106
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {p1, p0, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    .line 116
    .line 117
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 118
    .line 119
    .line 120
    return v4

    .line 121
    :goto_2
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 122
    .line 123
    .line 124
    throw p0
.end method

.method public final runTask(Ljava/io/PrintWriter;)I
    .locals 11

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string/jumbo v1, "lock"

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz v1, :cond_2

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string/jumbo v1, "stop"

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->stopSystemLockTaskMode()V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 39
    .line 40
    invoke-virtual {v1, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->startSystemLockTaskMode(I)V

    .line 41
    .line 42
    .line 43
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string v1, "Activity manager is "

    .line 46
    .line 47
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->isInLockTaskMode()Z

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    if-eqz p0, :cond_1

    .line 57
    .line 58
    const-string p0, ""

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_1
    const-string/jumbo p0, "not "

    .line 62
    .line 63
    .line 64
    :goto_1
    const-string/jumbo v1, "in lockTaskMode"

    .line 65
    .line 66
    .line 67
    invoke-static {p1, p0, v1, v0}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 68
    .line 69
    .line 70
    return v2

    .line 71
    :cond_2
    const-string/jumbo v1, "resizeable"

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-eqz v1, :cond_3

    .line 79
    .line 80
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 97
    .line 98
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->setTaskResizeable(II)V

    .line 99
    .line 100
    .line 101
    return v2

    .line 102
    :cond_3
    const-string/jumbo v1, "resize"

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    const/4 v3, -0x1

    .line 110
    if-eqz v1, :cond_9

    .line 111
    .line 112
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 133
    .line 134
    .line 135
    move-result v5

    .line 136
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v6

    .line 140
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 141
    .line 142
    .line 143
    move-result v7

    .line 144
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v8

    .line 148
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 149
    .line 150
    .line 151
    move-result v9

    .line 152
    const/4 v10, 0x0

    .line 153
    if-gez v1, :cond_4

    .line 154
    .line 155
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    const-string v4, "Error: bad left arg: "

    .line 160
    .line 161
    invoke-static {v1, v4, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    goto :goto_2

    .line 165
    :cond_4
    if-gez v5, :cond_5

    .line 166
    .line 167
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    const-string v1, "Error: bad top arg: "

    .line 172
    .line 173
    invoke-static {v0, v1, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    goto :goto_2

    .line 177
    :cond_5
    if-gtz v7, :cond_6

    .line 178
    .line 179
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    const-string v1, "Error: bad right arg: "

    .line 184
    .line 185
    invoke-static {v0, v1, v6}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    goto :goto_2

    .line 189
    :cond_6
    if-gtz v9, :cond_7

    .line 190
    .line 191
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    const-string v1, "Error: bad bottom arg: "

    .line 196
    .line 197
    invoke-static {v0, v1, v8}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    goto :goto_2

    .line 201
    :cond_7
    new-instance v10, Landroid/graphics/Rect;

    .line 202
    .line 203
    invoke-direct {v10, v1, v5, v7, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 204
    .line 205
    .line 206
    :goto_2
    if-nez v10, :cond_8

    .line 207
    .line 208
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 209
    .line 210
    .line 211
    move-result-object p0

    .line 212
    const-string p1, "Error: invalid input bounds"

    .line 213
    .line 214
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    move v2, v3

    .line 218
    goto :goto_3

    .line 219
    :cond_8
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 220
    .line 221
    invoke-virtual {p0, p1, v10, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->resizeTask(ILandroid/graphics/Rect;I)V

    .line 222
    .line 223
    .line 224
    int-to-long p0, v2

    .line 225
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    .line 227
    .line 228
    :catch_0
    :goto_3
    return v2

    .line 229
    :cond_9
    const-string/jumbo v1, "focus"

    .line 230
    .line 231
    .line 232
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    move-result v1

    .line 236
    if-eqz v1, :cond_a

    .line 237
    .line 238
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 243
    .line 244
    .line 245
    move-result v0

    .line 246
    const-string v1, "Setting focus to task "

    .line 247
    .line 248
    invoke-static {p1, v1, v0}, Lcom/android/server/accounts/AccountManagerServiceShellCommand$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 249
    .line 250
    .line 251
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 252
    .line 253
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->setFocusedTask(I)V

    .line 254
    .line 255
    .line 256
    return v2

    .line 257
    :cond_a
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 258
    .line 259
    .line 260
    move-result-object p0

    .line 261
    const-string p1, "Error: unknown command \'"

    .line 262
    .line 263
    const-string v1, "\'"

    .line 264
    .line 265
    invoke-static {p0, p1, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    return v3
.end method

.method public final runToUri(ILjava/io/PrintWriter;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->makeIntent()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    invoke-virtual {p0, p1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :catch_0
    move-exception p0

    .line 14
    new-instance p1, Ljava/lang/RuntimeException;

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 21
    .line 22
    .line 23
    throw p1
.end method

.method public final runTraceIpc(Ljava/io/PrintWriter;)I
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string/jumbo v1, "start"

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    const-string v0, "Starting IPC tracing."

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 21
    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Lcom/android/server/am/ActivityManagerService;

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->startBinderTracking()Z

    .line 26
    .line 27
    .line 28
    return v2

    .line 29
    :cond_0
    const-string/jumbo v1, "stop"

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    const/4 v3, -0x1

    .line 37
    if-eqz v1, :cond_5

    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const/4 v1, 0x0

    .line 44
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    if-eqz v4, :cond_2

    .line 49
    .line 50
    const-string v1, "--dump-file"

    .line 51
    .line 52
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_1

    .line 57
    .line 58
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    goto :goto_0

    .line 63
    :cond_1
    const-string p0, "Error: Unknown option: "

    .line 64
    .line 65
    invoke-virtual {p0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    :goto_1
    move v2, v3

    .line 73
    goto :goto_2

    .line 74
    :cond_2
    if-nez v1, :cond_3

    .line 75
    .line 76
    const-string p0, "Error: Specify filename to dump logs to."

    .line 77
    .line 78
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_3
    const-string/jumbo v0, "w"

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, v1, v0}, Landroid/os/ShellCommand;->openFileForSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    if-nez v0, :cond_4

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_4
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Lcom/android/server/am/ActivityManagerService;

    .line 93
    .line 94
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerService;->stopBinderTrackingAndDump(Landroid/os/ParcelFileDescriptor;)Z

    .line 95
    .line 96
    .line 97
    const-string p0, "Stopped IPC tracing. Dumping logs to: "

    .line 98
    .line 99
    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    :goto_2
    return v2

    .line 107
    :cond_5
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    const-string p1, "Error: unknown trace ipc command \'"

    .line 112
    .line 113
    const-string v1, "\'"

    .line 114
    .line 115
    invoke-static {p0, p1, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    return v3
.end method

.method public final runTrackAssociations(Ljava/io/PrintWriter;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    const-string v1, "android.permission.SET_ACTIVITY_WATCHER"

    .line 4
    .line 5
    const-string/jumbo v2, "runTrackAssociations()"

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    .line 12
    .line 13
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 14
    .line 15
    .line 16
    monitor-enter v0

    .line 17
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    .line 18
    .line 19
    iget-boolean v1, p0, Lcom/android/server/am/ActivityManagerService;->mTrackingAssociations:Z

    .line 20
    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    iput-boolean v1, p0, Lcom/android/server/am/ActivityManagerService;->mTrackingAssociations:Z

    .line 25
    .line 26
    const-string p0, "Association tracking started."

    .line 27
    .line 28
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    const-string p0, "Association tracking already enabled."

    .line 35
    .line 36
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 46
    .line 47
    .line 48
    throw p0
.end method

.method public final runUnlockUser(Ljava/io/PrintWriter;)I
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/4 v3, -0x1

    .line 18
    const-string v4, "!"

    .line 19
    .line 20
    if-nez v2, :cond_0

    .line 21
    .line 22
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_0

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    const-string p1, "Error: token parameter not supported"

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return v3

    .line 38
    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-nez v2, :cond_1

    .line 47
    .line 48
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-nez v1, :cond_1

    .line 53
    .line 54
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    const-string p1, "Error: secret parameter not supported"

    .line 59
    .line 60
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    return v3

    .line 64
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Lcom/android/server/am/ActivityManagerService;

    .line 65
    .line 66
    const/4 v2, 0x0

    .line 67
    invoke-virtual {v1, v0, v2}, Lcom/android/server/am/ActivityManagerService;->unlockUser2(ILandroid/os/IProgressListener;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_2

    .line 72
    .line 73
    const-string p0, "Success: user unlocked"

    .line 74
    .line 75
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    const-string p1, "Error: could not unlock user"

    .line 84
    .line 85
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    :goto_0
    const/4 p0, 0x0

    .line 89
    return p0
.end method

.method public final runUntrackAssociations(Ljava/io/PrintWriter;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    const-string v1, "android.permission.SET_ACTIVITY_WATCHER"

    .line 4
    .line 5
    const-string/jumbo v2, "runUntrackAssociations()"

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    .line 12
    .line 13
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 14
    .line 15
    .line 16
    monitor-enter v0

    .line 17
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    .line 18
    .line 19
    iget-boolean v1, p0, Lcom/android/server/am/ActivityManagerService;->mTrackingAssociations:Z

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    iput-boolean v1, p0, Lcom/android/server/am/ActivityManagerService;->mTrackingAssociations:Z

    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAssociations:Landroid/util/SparseArray;

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    .line 29
    .line 30
    .line 31
    const-string p0, "Association tracking stopped."

    .line 32
    .line 33
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    const-string p0, "Association tracking not running."

    .line 40
    .line 41
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 51
    .line 52
    .line 53
    throw p0
.end method

.method public final runUpdateApplicationInfo(Ljava/io/PrintWriter;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    .line 32
    .line 33
    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/ActivityManagerService;->scheduleApplicationInfoChanged(Ljava/util/List;I)V

    .line 34
    .line 35
    .line 36
    const-string p0, "Packages updated with most recent ApplicationInfos."

    .line 37
    .line 38
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final runWaitForBroadcastBarrier(Ljava/io/PrintWriter;)I
    .locals 6

    .line 1
    new-instance v0, Ljava/io/PrintWriter;

    .line 2
    .line 3
    new-instance v1, Landroid/util/TeeWriter;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    new-array v2, v2, [Ljava/io/Writer;

    .line 7
    .line 8
    sget-object v3, Lcom/android/server/am/ActivityManagerDebugConfig;->LOG_WRITER_INFO:Ljava/io/PrintWriter;

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    aput-object v3, v2, v4

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    aput-object p1, v2, v3

    .line 15
    .line 16
    invoke-direct {v1, v2}, Landroid/util/TeeWriter;-><init>([Ljava/io/Writer;)V

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 20
    .line 21
    .line 22
    move p1, v4

    .line 23
    move v1, p1

    .line 24
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    if-eqz v2, :cond_2

    .line 29
    .line 30
    const-string v5, "--flush-broadcast-loopers"

    .line 31
    .line 32
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    if-eqz v5, :cond_0

    .line 37
    .line 38
    move p1, v3

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const-string v1, "--flush-application-threads"

    .line 41
    .line 42
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_1

    .line 47
    .line 48
    move v1, v3

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    const-string p1, "Error: Unknown option: "

    .line 55
    .line 56
    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const/4 p0, -0x1

    .line 64
    return p0

    .line 65
    :cond_2
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    .line 66
    .line 67
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/am/ActivityManagerService;->waitForBroadcastBarrier(Ljava/io/PrintWriter;ZZ)V

    .line 68
    .line 69
    .line 70
    return v4
.end method

.method public final runWaitForBroadcastDispatch(Ljava/io/PrintWriter;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/io/PrintWriter;

    .line 2
    .line 3
    new-instance v1, Landroid/util/TeeWriter;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    new-array v2, v2, [Ljava/io/Writer;

    .line 7
    .line 8
    sget-object v3, Lcom/android/server/am/ActivityManagerDebugConfig;->LOG_WRITER_INFO:Ljava/io/PrintWriter;

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    aput-object v3, v2, v4

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    aput-object p1, v2, v3

    .line 15
    .line 16
    invoke-direct {v1, v2}, Landroid/util/TeeWriter;-><init>([Ljava/io/Writer;)V

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 20
    .line 21
    .line 22
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->makeIntent()Landroid/content/Intent;

    .line 23
    .line 24
    .line 25
    move-result-object p1
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    .line 27
    .line 28
    const-string v1, "android.permission.DUMP"

    .line 29
    .line 30
    const-string/jumbo v2, "waitForBroadcastDispatch"

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mBroadcastQueue:Lcom/android/server/am/BroadcastQueueModernImpl;

    .line 37
    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    new-instance v1, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda9;

    .line 42
    .line 43
    invoke-direct {v1, p0, p1, v0}, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/am/BroadcastQueueModernImpl;Landroid/content/Intent;Ljava/io/PrintWriter;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v1}, Lcom/android/server/am/BroadcastQueueModernImpl;->waitFor(Ljava/util/function/BooleanSupplier;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :catch_0
    move-exception p0

    .line 51
    new-instance p1, Ljava/lang/RuntimeException;

    .line 52
    .line 53
    invoke-virtual {p0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 58
    .line 59
    .line 60
    throw p1
.end method

.method public final runWaitForBroadcastIdle(Ljava/io/PrintWriter;)I
    .locals 5

    .line 1
    new-instance v0, Ljava/io/PrintWriter;

    .line 2
    .line 3
    new-instance v1, Landroid/util/TeeWriter;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    new-array v2, v2, [Ljava/io/Writer;

    .line 7
    .line 8
    sget-object v3, Lcom/android/server/am/ActivityManagerDebugConfig;->LOG_WRITER_INFO:Ljava/io/PrintWriter;

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    aput-object v3, v2, v4

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    aput-object p1, v2, v3

    .line 15
    .line 16
    invoke-direct {v1, v2}, Landroid/util/TeeWriter;-><init>([Ljava/io/Writer;)V

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 20
    .line 21
    .line 22
    move p1, v4

    .line 23
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    const-string p1, "--flush-broadcast-loopers"

    .line 30
    .line 31
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_0

    .line 36
    .line 37
    move p1, v3

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    const-string p1, "Error: Unknown option: "

    .line 44
    .line 45
    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const/4 p0, -0x1

    .line 53
    return p0

    .line 54
    :cond_1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    .line 55
    .line 56
    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/ActivityManagerService;->waitForBroadcastIdle(Ljava/io/PrintWriter;Z)V

    .line 57
    .line 58
    .line 59
    return v4
.end method

.method public final runWatchUids(Ljava/io/PrintWriter;)I
    .locals 11

    .line 1
    const/4 v3, -0x1

    .line 2
    const/16 v0, 0xf

    .line 3
    .line 4
    move v9, v0

    .line 5
    move v8, v3

    .line 6
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    const-string v1, "--oom"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    move-result v8

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const-string v1, "--mask"

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result v9

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    const-string p1, "Error: Unknown option: "

    .line 51
    .line 52
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return v3

    .line 60
    :cond_2
    new-instance v10, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;

    .line 61
    .line 62
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    .line 63
    .line 64
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getRawInputStream()Ljava/io/InputStream;

    .line 65
    .line 66
    .line 67
    move-result-object v7

    .line 68
    move-object v4, v10

    .line 69
    move-object v6, p1

    .line 70
    invoke-direct/range {v4 .. v9}, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;-><init>(Lcom/android/server/am/ActivityManagerService;Ljava/io/PrintWriter;Ljava/io/InputStream;II)V

    .line 71
    .line 72
    .line 73
    const/4 p0, 0x0

    .line 74
    :try_start_0
    iget-object p1, v10, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    .line 75
    .line 76
    const-string v0, "Watching uid states...  available commands:"

    .line 77
    .line 78
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    iget-object p1, v10, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    .line 82
    .line 83
    const-string v0, "(q)uit: finish watching"

    .line 84
    .line 85
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    iget-object p1, v10, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    .line 89
    .line 90
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 91
    .line 92
    .line 93
    iget-object v0, v10, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mInterface:Lcom/android/server/am/ActivityManagerService;

    .line 94
    .line 95
    const/4 v5, 0x0

    .line 96
    const/16 v2, 0x1f

    .line 97
    .line 98
    const/4 v4, 0x0

    .line 99
    move-object v1, v10

    .line 100
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->registerUidObserverForUids(Landroid/app/IUidObserver;IILjava/lang/String;[I)Landroid/os/IBinder;

    .line 101
    .line 102
    .line 103
    iget p1, v10, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mUid:I

    .line 104
    .line 105
    if-ltz p1, :cond_3

    .line 106
    .line 107
    iget-object v0, v10, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mInternal:Lcom/android/server/am/ActivityManagerService;

    .line 108
    .line 109
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mOomAdjObserverLock:Ljava/lang/Object;

    .line 110
    .line 111
    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 112
    :try_start_1
    iput p1, v0, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjUid:I

    .line 113
    .line 114
    iput-object v10, v0, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjObserver:Lcom/android/server/am/ActivityManagerService$OomAdjObserver;

    .line 115
    .line 116
    monitor-exit v1

    .line 117
    goto :goto_1

    .line 118
    :catchall_0
    move-exception p1

    .line 119
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    :try_start_2
    throw p1

    .line 121
    :catchall_1
    move-exception p0

    .line 122
    goto/16 :goto_a

    .line 123
    .line 124
    :catch_0
    move-exception p1

    .line 125
    goto/16 :goto_8

    .line 126
    .line 127
    :cond_3
    :goto_1
    new-instance p1, Ljava/io/InputStreamReader;

    .line 128
    .line 129
    iget-object v0, v10, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mInput:Ljava/io/InputStream;

    .line 130
    .line 131
    invoke-direct {p1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 132
    .line 133
    .line 134
    new-instance v0, Ljava/io/BufferedReader;

    .line 135
    .line 136
    invoke-direct {v0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 137
    .line 138
    .line 139
    :goto_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    if-eqz p1, :cond_7

    .line 144
    .line 145
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    if-gtz v1, :cond_4

    .line 150
    .line 151
    move p1, p0

    .line 152
    goto :goto_3

    .line 153
    :cond_4
    const-string/jumbo v1, "q"

    .line 154
    .line 155
    .line 156
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    if-nez v1, :cond_7

    .line 161
    .line 162
    const-string/jumbo v1, "quit"

    .line 163
    .line 164
    .line 165
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v1

    .line 169
    if-eqz v1, :cond_5

    .line 170
    .line 171
    goto :goto_6

    .line 172
    :cond_5
    iget-object v1, v10, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    .line 173
    .line 174
    new-instance v2, Ljava/lang/StringBuilder;

    .line 175
    .line 176
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    .line 178
    .line 179
    const-string v3, "Invalid command: "

    .line 180
    .line 181
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    const/4 p1, 0x1

    .line 195
    :goto_3
    monitor-enter v10
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 196
    if-eqz p1, :cond_6

    .line 197
    .line 198
    :try_start_3
    iget-object p1, v10, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    .line 199
    .line 200
    const-string v1, ""

    .line 201
    .line 202
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    goto :goto_4

    .line 206
    :catchall_2
    move-exception p1

    .line 207
    goto :goto_5

    .line 208
    :cond_6
    :goto_4
    iget-object p1, v10, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    .line 209
    .line 210
    const-string v1, "Watching uid states...  available commands:"

    .line 211
    .line 212
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    iget-object p1, v10, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    .line 216
    .line 217
    const-string v1, "(q)uit: finish watching"

    .line 218
    .line 219
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    iget-object p1, v10, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    .line 223
    .line 224
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 225
    .line 226
    .line 227
    monitor-exit v10

    .line 228
    goto :goto_2

    .line 229
    :goto_5
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 230
    :try_start_4
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 231
    :cond_7
    :goto_6
    iget p1, v10, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mUid:I

    .line 232
    .line 233
    if-ltz p1, :cond_8

    .line 234
    .line 235
    :goto_7
    iget-object p1, v10, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mInternal:Lcom/android/server/am/ActivityManagerService;

    .line 236
    .line 237
    invoke-virtual {p1}, Lcom/android/server/am/ActivityManagerService;->clearOomAdjObserver()V

    .line 238
    .line 239
    .line 240
    :cond_8
    iget-object p1, v10, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mInterface:Lcom/android/server/am/ActivityManagerService;

    .line 241
    .line 242
    invoke-virtual {p1, v10}, Lcom/android/server/am/ActivityManagerService;->unregisterUidObserver(Landroid/app/IUidObserver;)V

    .line 243
    .line 244
    .line 245
    goto :goto_9

    .line 246
    :goto_8
    :try_start_5
    iget-object v0, v10, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    .line 247
    .line 248
    invoke-virtual {p1, v0}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 249
    .line 250
    .line 251
    iget-object p1, v10, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    .line 252
    .line 253
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 254
    .line 255
    .line 256
    iget p1, v10, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mUid:I

    .line 257
    .line 258
    if-ltz p1, :cond_8

    .line 259
    .line 260
    goto :goto_7

    .line 261
    :goto_9
    return p0

    .line 262
    :goto_a
    iget p1, v10, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mUid:I

    .line 263
    .line 264
    if-ltz p1, :cond_9

    .line 265
    .line 266
    iget-object p1, v10, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mInternal:Lcom/android/server/am/ActivityManagerService;

    .line 267
    .line 268
    invoke-virtual {p1}, Lcom/android/server/am/ActivityManagerService;->clearOomAdjObserver()V

    .line 269
    .line 270
    .line 271
    :cond_9
    iget-object p1, v10, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mInterface:Lcom/android/server/am/ActivityManagerService;

    .line 272
    .line 273
    invoke-virtual {p1, v10}, Lcom/android/server/am/ActivityManagerService;->unregisterUidObserver(Landroid/app/IUidObserver;)V

    .line 274
    .line 275
    .line 276
    throw p0
.end method

.method public final runWrite(Ljava/io/PrintWriter;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    const-string v1, "android.permission.SET_ACTIVITY_WATCHER"

    .line 4
    .line 5
    const-string/jumbo v2, "registerUidObserver()"

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 14
    .line 15
    check-cast p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 24
    .line 25
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 26
    .line 27
    .line 28
    monitor-enter v0

    .line 29
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wm/RecentTasks;->syncPersistentTaskIdsLocked()V

    .line 30
    .line 31
    .line 32
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 33
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 34
    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/server/wm/RecentTasks;->mTaskPersister:Lcom/android/server/wm/TaskPersister;

    .line 37
    .line 38
    iget-object p0, p0, Lcom/android/server/wm/TaskPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    .line 39
    .line 40
    monitor-enter p0

    .line 41
    const-wide/16 v0, -0x1

    .line 42
    .line 43
    :try_start_1
    iput-wide v0, p0, Lcom/android/server/wm/PersisterQueue;->mNextWriteTime:J

    .line 44
    .line 45
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    .line 47
    .line 48
    :cond_0
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception p1

    .line 53
    goto :goto_1

    .line 54
    :catch_0
    :goto_0
    :try_start_3
    iget-wide v2, p0, Lcom/android/server/wm/PersisterQueue;->mNextWriteTime:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 55
    .line 56
    cmp-long v2, v2, v0

    .line 57
    .line 58
    if-eqz v2, :cond_0

    .line 59
    .line 60
    monitor-exit p0

    .line 61
    const-string p0, "All tasks persisted."

    .line 62
    .line 63
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :goto_1
    monitor-exit p0

    .line 68
    throw p1

    .line 69
    :catchall_1
    move-exception p0

    .line 70
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 71
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 72
    .line 73
    .line 74
    throw p0
.end method

.method public final switchUserAndWaitForComplete(I)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/server/am/UserController;->getCurrentUser()Landroid/content/pm/UserInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    .line 13
    .line 14
    if-ne p1, v0, :cond_0

    .line 15
    .line 16
    return v1

    .line 17
    :cond_0
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    .line 18
    .line 19
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 20
    .line 21
    .line 22
    new-instance v1, Lcom/android/server/am/ActivityManagerShellCommand$3;

    .line 23
    .line 24
    invoke-direct {v1, p1, v0}, Lcom/android/server/am/ActivityManagerShellCommand$3;-><init>(ILjava/util/concurrent/CountDownLatch;)V

    .line 25
    .line 26
    .line 27
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Lcom/android/server/am/ActivityManagerService;

    .line 28
    .line 29
    const-class v3, Lcom/android/server/am/ActivityManagerShellCommand;

    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v2, v1, v3}, Lcom/android/server/am/ActivityManagerService;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Lcom/android/server/am/ActivityManagerService;

    .line 39
    .line 40
    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityManagerService;->switchUser(I)Z

    .line 41
    .line 42
    .line 43
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    if-nez p1, :cond_1

    .line 45
    .line 46
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Lcom/android/server/am/ActivityManagerService;

    .line 47
    .line 48
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityManagerService;->unregisterUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V

    .line 49
    .line 50
    .line 51
    const/4 p0, 0x0

    .line 52
    return p0

    .line 53
    :cond_1
    :try_start_1
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 54
    .line 55
    const-wide/32 v3, 0x1d4c0

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v3, v4, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 59
    .line 60
    .line 61
    move-result p1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    goto :goto_0

    .line 63
    :catchall_0
    move-exception p1

    .line 64
    goto :goto_1

    .line 65
    :catch_0
    :try_start_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    const-string v2, "Error: Thread interrupted unexpectedly."

    .line 70
    .line 71
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 72
    .line 73
    .line 74
    :goto_0
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Lcom/android/server/am/ActivityManagerService;

    .line 75
    .line 76
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityManagerService;->unregisterUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V

    .line 77
    .line 78
    .line 79
    return p1

    .line 80
    :goto_1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Lcom/android/server/am/ActivityManagerService;

    .line 81
    .line 82
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityManagerService;->unregisterUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V

    .line 83
    .line 84
    .line 85
    throw p1
.end method

.method public final writeDeviceConfig(Landroid/util/proto/ProtoOutputStream;JLjava/io/PrintWriter;Landroid/util/DisplayMetrics;)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p4

    .line 6
    .line 7
    move-object/from16 v3, p5

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 12
    .line 13
    .line 14
    move-result-wide v4

    .line 15
    iget v6, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 16
    .line 17
    const-wide v7, 0x10d00000001L

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 23
    .line 24
    .line 25
    const-wide v6, 0x10d00000002L

    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    iget v8, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 31
    .line 32
    invoke-virtual {v1, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 33
    .line 34
    .line 35
    const-wide v6, 0x10d00000003L

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    sget v8, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    .line 41
    .line 42
    invoke-virtual {v1, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const-wide/16 v4, -0x1

    .line 47
    .line 48
    :goto_0
    if-eqz v2, :cond_1

    .line 49
    .line 50
    const-string/jumbo v6, "stable-width-px: "

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget v6, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 57
    .line 58
    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 59
    .line 60
    .line 61
    const-string/jumbo v6, "stable-height-px: "

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 68
    .line 69
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 70
    .line 71
    .line 72
    const-string/jumbo v3, "stable-density-dpi: "

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    sget v3, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    .line 79
    .line 80
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 81
    .line 82
    .line 83
    :cond_1
    new-instance v3, Lcom/android/internal/util/MemInfoReader;

    .line 84
    .line 85
    invoke-direct {v3}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 89
    .line 90
    .line 91
    iget-object v6, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    .line 92
    .line 93
    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 94
    .line 95
    const-class v7, Landroid/app/KeyguardManager;

    .line 96
    .line 97
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v6

    .line 101
    check-cast v6, Landroid/app/KeyguardManager;

    .line 102
    .line 103
    if-eqz v1, :cond_2

    .line 104
    .line 105
    const-wide v7, 0x10400000004L

    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    invoke-virtual {v3}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    .line 111
    .line 112
    .line 113
    move-result-wide v9

    .line 114
    invoke-virtual {v1, v7, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 115
    .line 116
    .line 117
    const-wide v7, 0x10800000005L

    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    .line 123
    .line 124
    .line 125
    move-result v9

    .line 126
    invoke-virtual {v1, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 127
    .line 128
    .line 129
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 130
    .line 131
    .line 132
    move-result-object v7

    .line 133
    invoke-virtual {v7}, Ljava/lang/Runtime;->availableProcessors()I

    .line 134
    .line 135
    .line 136
    move-result v7

    .line 137
    const-wide v8, 0x10d00000006L

    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    invoke-virtual {v1, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 143
    .line 144
    .line 145
    const-wide v7, 0x10800000007L

    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    invoke-virtual {v6}, Landroid/app/KeyguardManager;->isDeviceSecure()Z

    .line 151
    .line 152
    .line 153
    move-result v9

    .line 154
    invoke-virtual {v1, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 155
    .line 156
    .line 157
    :cond_2
    if-eqz v2, :cond_3

    .line 158
    .line 159
    const-string/jumbo v7, "total-ram: "

    .line 160
    .line 161
    .line 162
    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v3}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    .line 166
    .line 167
    .line 168
    move-result-wide v7

    .line 169
    invoke-virtual {v2, v7, v8}, Ljava/io/PrintWriter;->println(J)V

    .line 170
    .line 171
    .line 172
    const-string/jumbo v3, "low-ram: "

    .line 173
    .line 174
    .line 175
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    .line 179
    .line 180
    .line 181
    move-result v3

    .line 182
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 183
    .line 184
    .line 185
    const-string/jumbo v3, "max-cores: "

    .line 186
    .line 187
    .line 188
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 192
    .line 193
    .line 194
    move-result-object v3

    .line 195
    invoke-virtual {v3}, Ljava/lang/Runtime;->availableProcessors()I

    .line 196
    .line 197
    .line 198
    move-result v3

    .line 199
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 200
    .line 201
    .line 202
    const-string/jumbo v3, "has-secure-screen-lock: "

    .line 203
    .line 204
    .line 205
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v6}, Landroid/app/KeyguardManager;->isDeviceSecure()Z

    .line 209
    .line 210
    .line 211
    move-result v3

    .line 212
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 213
    .line 214
    .line 215
    :cond_3
    :try_start_0
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 216
    .line 217
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    .line 218
    .line 219
    .line 220
    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    iget v6, v3, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    .line 222
    .line 223
    if-eqz v6, :cond_5

    .line 224
    .line 225
    if-eqz v1, :cond_4

    .line 226
    .line 227
    const-wide v7, 0x10d00000008L

    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    invoke-virtual {v1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 233
    .line 234
    .line 235
    :cond_4
    if-eqz v2, :cond_5

    .line 236
    .line 237
    const-string/jumbo v6, "opengl-version: 0x"

    .line 238
    .line 239
    .line 240
    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    iget v3, v3, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    .line 244
    .line 245
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v3

    .line 249
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    :cond_5
    new-instance v3, Ljava/util/HashSet;

    .line 253
    .line 254
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 255
    .line 256
    .line 257
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    .line 258
    .line 259
    .line 260
    move-result-object v6

    .line 261
    move-object v12, v6

    .line 262
    check-cast v12, Ljavax/microedition/khronos/egl/EGL10;

    .line 263
    .line 264
    const/4 v13, 0x0

    .line 265
    if-nez v12, :cond_6

    .line 266
    .line 267
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 268
    .line 269
    .line 270
    move-result-object v6

    .line 271
    const-string v7, "Warning: couldn\'t get EGL"

    .line 272
    .line 273
    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    goto/16 :goto_5

    .line 277
    .line 278
    :cond_6
    sget-object v6, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    .line 279
    .line 280
    invoke-interface {v12, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 281
    .line 282
    .line 283
    move-result-object v14

    .line 284
    const/4 v6, 0x2

    .line 285
    new-array v7, v6, [I

    .line 286
    .line 287
    invoke-interface {v12, v14, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    .line 288
    .line 289
    .line 290
    const/4 v15, 0x1

    .line 291
    new-array v11, v15, [I

    .line 292
    .line 293
    const/4 v7, 0x0

    .line 294
    invoke-interface {v12, v14, v7, v13, v11}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigs(Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 295
    .line 296
    .line 297
    move-result v7

    .line 298
    if-nez v7, :cond_7

    .line 299
    .line 300
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 301
    .line 302
    .line 303
    move-result-object v6

    .line 304
    const-string v7, "Warning: couldn\'t get EGL config count"

    .line 305
    .line 306
    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    goto/16 :goto_5

    .line 310
    .line 311
    :cond_7
    aget v7, v11, v13

    .line 312
    .line 313
    new-array v10, v7, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 314
    .line 315
    invoke-interface {v12, v14, v10, v7, v11}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigs(Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 316
    .line 317
    .line 318
    move-result v7

    .line 319
    if-nez v7, :cond_8

    .line 320
    .line 321
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 322
    .line 323
    .line 324
    move-result-object v6

    .line 325
    const-string v7, "Warning: couldn\'t get EGL configs"

    .line 326
    .line 327
    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    goto/16 :goto_5

    .line 331
    .line 332
    :cond_8
    const/16 v7, 0x3057

    .line 333
    .line 334
    const/16 v8, 0x3056

    .line 335
    .line 336
    const/16 v9, 0x3038

    .line 337
    .line 338
    filled-new-array {v7, v15, v8, v15, v9}, [I

    .line 339
    .line 340
    .line 341
    move-result-object v16

    .line 342
    const/16 v7, 0x3098

    .line 343
    .line 344
    filled-new-array {v7, v6, v9}, [I

    .line 345
    .line 346
    .line 347
    move-result-object v17

    .line 348
    new-array v9, v15, [I

    .line 349
    .line 350
    move v8, v13

    .line 351
    :goto_1
    aget v6, v11, v13

    .line 352
    .line 353
    if-ge v8, v6, :cond_d

    .line 354
    .line 355
    aget-object v6, v10, v8

    .line 356
    .line 357
    const/16 v7, 0x3027

    .line 358
    .line 359
    invoke-interface {v12, v14, v6, v7, v9}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 360
    .line 361
    .line 362
    aget v6, v9, v13

    .line 363
    .line 364
    const/16 v7, 0x3050

    .line 365
    .line 366
    if-ne v6, v7, :cond_9

    .line 367
    .line 368
    :goto_2
    move/from16 v20, v8

    .line 369
    .line 370
    move-object/from16 v18, v9

    .line 371
    .line 372
    move-object/from16 v21, v10

    .line 373
    .line 374
    move-object/from16 v19, v11

    .line 375
    .line 376
    goto :goto_4

    .line 377
    :cond_9
    aget-object v6, v10, v8

    .line 378
    .line 379
    const/16 v7, 0x3033

    .line 380
    .line 381
    invoke-interface {v12, v14, v6, v7, v9}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 382
    .line 383
    .line 384
    aget v6, v9, v13

    .line 385
    .line 386
    and-int/2addr v6, v15

    .line 387
    if-nez v6, :cond_a

    .line 388
    .line 389
    goto :goto_2

    .line 390
    :cond_a
    aget-object v6, v10, v8

    .line 391
    .line 392
    const/16 v7, 0x3040

    .line 393
    .line 394
    invoke-interface {v12, v14, v6, v7, v9}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 395
    .line 396
    .line 397
    aget v6, v9, v13

    .line 398
    .line 399
    and-int/2addr v6, v15

    .line 400
    if-eqz v6, :cond_b

    .line 401
    .line 402
    aget-object v18, v10, v8

    .line 403
    .line 404
    const/16 v19, 0x0

    .line 405
    .line 406
    move-object v6, v12

    .line 407
    move-object v7, v14

    .line 408
    move/from16 v20, v8

    .line 409
    .line 410
    move-object/from16 v8, v18

    .line 411
    .line 412
    move-object/from16 v18, v9

    .line 413
    .line 414
    move-object/from16 v9, v16

    .line 415
    .line 416
    move-object/from16 v21, v10

    .line 417
    .line 418
    move-object/from16 v10, v19

    .line 419
    .line 420
    move-object/from16 v19, v11

    .line 421
    .line 422
    move-object v11, v3

    .line 423
    invoke-static/range {v6 .. v11}, Lcom/android/server/am/ActivityManagerShellCommand;->addExtensionsForConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I[ILjava/util/Set;)V

    .line 424
    .line 425
    .line 426
    goto :goto_3

    .line 427
    :cond_b
    move/from16 v20, v8

    .line 428
    .line 429
    move-object/from16 v18, v9

    .line 430
    .line 431
    move-object/from16 v21, v10

    .line 432
    .line 433
    move-object/from16 v19, v11

    .line 434
    .line 435
    :goto_3
    aget v6, v18, v13

    .line 436
    .line 437
    and-int/lit8 v6, v6, 0x4

    .line 438
    .line 439
    if-eqz v6, :cond_c

    .line 440
    .line 441
    aget-object v8, v21, v20

    .line 442
    .line 443
    move-object v6, v12

    .line 444
    move-object v7, v14

    .line 445
    move-object/from16 v9, v16

    .line 446
    .line 447
    move-object/from16 v10, v17

    .line 448
    .line 449
    move-object v11, v3

    .line 450
    invoke-static/range {v6 .. v11}, Lcom/android/server/am/ActivityManagerShellCommand;->addExtensionsForConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I[ILjava/util/Set;)V

    .line 451
    .line 452
    .line 453
    :cond_c
    :goto_4
    add-int/lit8 v8, v20, 0x1

    .line 454
    .line 455
    move-object/from16 v9, v18

    .line 456
    .line 457
    move-object/from16 v11, v19

    .line 458
    .line 459
    move-object/from16 v10, v21

    .line 460
    .line 461
    goto :goto_1

    .line 462
    :cond_d
    invoke-interface {v12, v14}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 463
    .line 464
    .line 465
    :goto_5
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    .line 466
    .line 467
    .line 468
    move-result v6

    .line 469
    new-array v6, v6, [Ljava/lang/String;

    .line 470
    .line 471
    invoke-virtual {v3, v6}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 472
    .line 473
    .line 474
    move-result-object v3

    .line 475
    check-cast v3, [Ljava/lang/String;

    .line 476
    .line 477
    invoke-static {v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 478
    .line 479
    .line 480
    move v6, v13

    .line 481
    :goto_6
    array-length v7, v3

    .line 482
    if-ge v6, v7, :cond_10

    .line 483
    .line 484
    if-eqz v1, :cond_e

    .line 485
    .line 486
    const-wide v7, 0x20900000009L

    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    aget-object v9, v3, v6

    .line 492
    .line 493
    invoke-virtual {v1, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 494
    .line 495
    .line 496
    :cond_e
    if-eqz v2, :cond_f

    .line 497
    .line 498
    const-string/jumbo v7, "opengl-extensions: "

    .line 499
    .line 500
    .line 501
    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 502
    .line 503
    .line 504
    aget-object v7, v3, v6

    .line 505
    .line 506
    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 507
    .line 508
    .line 509
    :cond_f
    add-int/lit8 v6, v6, 0x1

    .line 510
    .line 511
    goto :goto_6

    .line 512
    :cond_10
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    .line 513
    .line 514
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 515
    .line 516
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 517
    .line 518
    .line 519
    move-result-object v0

    .line 520
    invoke-virtual {v0, v13}, Landroid/content/pm/PackageManager;->getSharedLibraries(I)Ljava/util/List;

    .line 521
    .line 522
    .line 523
    move-result-object v3

    .line 524
    new-instance v6, Lcom/android/server/am/ActivityManagerShellCommand$$ExternalSyntheticLambda1;

    .line 525
    .line 526
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 527
    .line 528
    .line 529
    invoke-static {v6}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    .line 530
    .line 531
    .line 532
    move-result-object v6

    .line 533
    invoke-static {v3, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 534
    .line 535
    .line 536
    move v6, v13

    .line 537
    :goto_7
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 538
    .line 539
    .line 540
    move-result v7

    .line 541
    if-ge v6, v7, :cond_13

    .line 542
    .line 543
    if-eqz v1, :cond_11

    .line 544
    .line 545
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 546
    .line 547
    .line 548
    move-result-object v7

    .line 549
    check-cast v7, Landroid/content/pm/SharedLibraryInfo;

    .line 550
    .line 551
    invoke-virtual {v7}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    .line 552
    .line 553
    .line 554
    move-result-object v7

    .line 555
    const-wide v8, 0x2090000000aL

    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    invoke-virtual {v1, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 561
    .line 562
    .line 563
    :cond_11
    if-eqz v2, :cond_12

    .line 564
    .line 565
    const-string/jumbo v7, "shared-libraries: "

    .line 566
    .line 567
    .line 568
    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 569
    .line 570
    .line 571
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 572
    .line 573
    .line 574
    move-result-object v7

    .line 575
    check-cast v7, Landroid/content/pm/SharedLibraryInfo;

    .line 576
    .line 577
    invoke-virtual {v7}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    .line 578
    .line 579
    .line 580
    move-result-object v7

    .line 581
    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 582
    .line 583
    .line 584
    :cond_12
    add-int/lit8 v6, v6, 0x1

    .line 585
    .line 586
    goto :goto_7

    .line 587
    :cond_13
    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;

    .line 588
    .line 589
    .line 590
    move-result-object v0

    .line 591
    new-instance v3, Lcom/android/server/am/ActivityManagerShellCommand$$ExternalSyntheticLambda2;

    .line 592
    .line 593
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 594
    .line 595
    .line 596
    invoke-static {v0, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 597
    .line 598
    .line 599
    :goto_8
    array-length v3, v0

    .line 600
    if-ge v13, v3, :cond_16

    .line 601
    .line 602
    aget-object v3, v0, v13

    .line 603
    .line 604
    iget-object v3, v3, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    .line 605
    .line 606
    if-eqz v3, :cond_15

    .line 607
    .line 608
    if-eqz v1, :cond_14

    .line 609
    .line 610
    const-wide v6, 0x2090000000bL

    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    invoke-virtual {v1, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 616
    .line 617
    .line 618
    :cond_14
    if-eqz v2, :cond_15

    .line 619
    .line 620
    const-string/jumbo v3, "features: "

    .line 621
    .line 622
    .line 623
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 624
    .line 625
    .line 626
    aget-object v3, v0, v13

    .line 627
    .line 628
    iget-object v3, v3, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    .line 629
    .line 630
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 631
    .line 632
    .line 633
    :cond_15
    add-int/lit8 v13, v13, 0x1

    .line 634
    .line 635
    goto :goto_8

    .line 636
    :cond_16
    if-eqz v1, :cond_17

    .line 637
    .line 638
    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 639
    .line 640
    .line 641
    :cond_17
    return-void

    .line 642
    :catch_0
    move-exception v0

    .line 643
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 644
    .line 645
    .line 646
    move-result-object v0

    .line 647
    throw v0
.end method
