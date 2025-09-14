.class public final Lcom/android/server/wm/ActivityStarter;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final REACTIVE_COOLDOWN_TIME:J

.field public static mtdManager:Lcom/samsung/android/knox/mtd/KMTDManager;

.field public static prevReactiveTime:J

.field public static prevReactiveUrl:Ljava/lang/String;


# instance fields
.field mAddingToTask:Z

.field public mAddingToTaskFragment:Lcom/android/server/wm/TaskFragment;

.field public mApplicationPolicy:Lcom/samsung/android/knox/localservice/ApplicationPolicyInternal;

.field public mBalCode:I

.field public mCallingUid:I

.field public mCanMoveToFrontCode:I

.field public final mController:Lcom/android/server/wm/ActivityStartController;

.field public mDisplayLockAndOccluded:Z

.field public mDoResume:Z

.field public mFrozeTaskList:Z

.field public mInTask:Lcom/android/server/wm/Task;

.field public mInTaskFragment:Lcom/android/server/wm/TaskFragment;

.field public mIntent:Landroid/content/Intent;

.field public mIntentDelivered:Z

.field public final mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

.field public mIsFreeformLaunching:Z

.field public mIsTaskCleared:Z

.field public mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

.field public mLastStartActivityResult:I

.field public mLastStartActivityTimeMs:J

.field public mLastStartReason:Ljava/lang/String;

.field public mLaunchFlags:I

.field public mLaunchMode:I

.field public final mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

.field public mLaunchTaskBehind:Z

.field public mMovedToFront:Z

.field mMovedToTopActivity:Lcom/android/server/wm/ActivityRecord;

.field public mNoAnimation:Z

.field public mNotTop:Lcom/android/server/wm/ActivityRecord;

.field public mOptions:Landroid/app/ActivityOptions;

.field public mPasswordPolicy:Lcom/samsung/android/knox/localservice/PasswordPolicyInternal;

.field public mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

.field public mPreferredWindowingMode:I

.field public mPriorAboveTask:Lcom/android/server/wm/Task;

.field public mRealCallingUid:I

.field mRequest:Lcom/android/server/wm/ActivityStarter$Request;

.field public final mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

.field public final mSavedFrontTaskIds:Landroid/util/SparseBooleanArray;

.field public mSecurityPolicy:Lcom/samsung/android/knox/localservice/SecurityPolicyInternal;

.field public final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public mSourceRecord:Lcom/android/server/wm/ActivityRecord;

.field public mSourceRootTask:Lcom/android/server/wm/Task;

.field mStartActivity:Lcom/android/server/wm/ActivityRecord;

.field public mStartFlags:I

.field public final mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

.field public mTargetRootTask:Lcom/android/server/wm/Task;

.field public mTargetTask:Lcom/android/server/wm/Task;

.field public mTransientLaunch:Z

.field public mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

.field public mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    .line 3
    .line 4
    .line 5
    const-wide/16 v0, 0x1f4

    .line 6
    .line 7
    sput-wide v0, Lcom/android/server/wm/ActivityStarter;->REACTIVE_COOLDOWN_TIME:J

    .line 8
    .line 9
    const-string v0, ""

    .line 10
    .line 11
    sput-object v0, Lcom/android/server/wm/ActivityStarter;->prevReactiveUrl:Ljava/lang/String;

    .line 12
    .line 13
    const-wide/16 v0, 0x0

    .line 14
    .line 15
    sput-wide v0, Lcom/android/server/wm/ActivityStarter;->prevReactiveTime:J

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityStartController;Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityTaskSupervisor;Lcom/android/server/wm/ActivityStartInterceptor;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mCanMoveToFrontCode:I

    .line 13
    .line 14
    new-instance v1, Landroid/util/SparseBooleanArray;

    .line 15
    .line 16
    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mSavedFrontTaskIds:Landroid/util/SparseBooleanArray;

    .line 20
    .line 21
    new-instance v1, Lcom/android/server/wm/ActivityStarter$Request;

    .line 22
    .line 23
    invoke-direct {v1}, Lcom/android/server/wm/ActivityStarter$Request;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 27
    .line 28
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mIsFreeformLaunching:Z

    .line 29
    .line 30
    iput-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mController:Lcom/android/server/wm/ActivityStartController;

    .line 31
    .line 32
    iput-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 33
    .line 34
    iget-object p1, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 35
    .line 36
    iput-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 37
    .line 38
    iput-object p3, p0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 39
    .line 40
    iput-object p4, p0, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    .line 41
    .line 42
    const/4 p1, 0x1

    .line 43
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStarter;->reset(Z)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public static canEmbedActivity(Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    if-eq p2, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget p2, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizerUid:I

    .line 11
    .line 12
    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/TaskFragment;->isAllowedToEmbedActivity(ILcom/android/server/wm/ActivityRecord;)I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    return p0

    .line 17
    :cond_1
    :goto_0
    const/4 p0, 0x3

    .line 18
    return p0
.end method

.method public static computeResolveFilterUid(III)I
    .locals 1

    .line 1
    const/16 v0, -0x2710

    .line 2
    .line 3
    if-eq p2, v0, :cond_0

    .line 4
    .line 5
    move p0, p2

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    if-ltz p0, :cond_1

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_1
    move p0, p1

    .line 11
    :goto_0
    return p0
.end method

.method public static getExternalResult(I)I
    .locals 1

    .line 1
    const/16 v0, 0x66

    .line 2
    .line 3
    if-eq p0, v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 p0, 0x0

    .line 7
    :goto_0
    return p0
.end method

.method public static shouldWriteStartActivityDebugLog(I)Z
    .locals 2

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_0

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    if-eq p0, v1, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x3

    .line 10
    if-eq p0, v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method


# virtual methods
.method public final addOrReparentStartingActivity(Ljava/lang/String;Lcom/android/server/wm/Task;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-eqz v0, :cond_5

    .line 7
    .line 8
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 9
    .line 10
    invoke-static {v0, v3, p2}, Lcom/android/server/wm/ActivityStarter;->canEmbedActivity(Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    iget-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mInTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 19
    .line 20
    iget-object v3, p2, Lcom/android/server/wm/TaskFragment;->mFragmentToken:Landroid/os/IBinder;

    .line 21
    .line 22
    iput-object v3, v0, Lcom/android/server/wm/ActivityRecord;->mRequestedLaunchingTaskFragmentToken:Landroid/os/IBinder;

    .line 23
    .line 24
    goto/16 :goto_6

    .line 25
    .line 26
    :cond_0
    iget-object v7, p0, Lcom/android/server/wm/ActivityStarter;->mInTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 27
    .line 28
    if-eq v0, v2, :cond_3

    .line 29
    .line 30
    const/4 v3, 0x2

    .line 31
    const-string v4, "Cannot embed "

    .line 32
    .line 33
    if-eq v0, v3, :cond_2

    .line 34
    .line 35
    const/4 v3, 0x3

    .line 36
    if-eq v0, v3, :cond_1

    .line 37
    .line 38
    const-string v3, "Unhandled embed result:"

    .line 39
    .line 40
    invoke-static {v0, v3}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 51
    .line 52
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v3, " that launched on another task,mLaunchMode="

    .line 56
    .line 57
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    iget v3, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    .line 61
    .line 62
    invoke-static {v3}, Landroid/content/pm/ActivityInfo;->launchModeToString(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v3, ",mLaunchFlag="

    .line 70
    .line 71
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    iget v3, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 75
    .line 76
    invoke-static {v0, v3}, Landroid/hardware/audio/common/V2_0/AudioChannelMask$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    goto :goto_0

    .line 81
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 87
    .line 88
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v3, ". TaskFragment\'s bounds:"

    .line 92
    .line 93
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v7}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v3, ", minimum dimensions:"

    .line 104
    .line 105
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 109
    .line 110
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getMinDimensions()Landroid/graphics/Point;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    goto :goto_0

    .line 122
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    const-string v3, "The app:"

    .line 125
    .line 126
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    iget v3, p0, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    .line 130
    .line 131
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    const-string v3, "is not trusted to "

    .line 135
    .line 136
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 140
    .line 141
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    :goto_0
    invoke-virtual {v7}, Lcom/android/server/wm/TaskFragment;->isOrganized()Z

    .line 149
    .line 150
    .line 151
    move-result v3

    .line 152
    if-eqz v3, :cond_4

    .line 153
    .line 154
    iget-object v4, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 155
    .line 156
    iget-object v5, v7, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    .line 157
    .line 158
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 159
    .line 160
    iget-object v6, v3, Lcom/android/server/wm/ActivityStarter$Request;->errorCallbackToken:Landroid/os/IBinder;

    .line 161
    .line 162
    new-instance v9, Ljava/lang/SecurityException;

    .line 163
    .line 164
    invoke-direct {v9, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    const/4 v8, 0x2

    .line 168
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    .line 169
    .line 170
    .line 171
    goto/16 :goto_6

    .line 172
    .line 173
    :cond_4
    const-string v3, "ActivityTaskManager"

    .line 174
    .line 175
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    .line 177
    .line 178
    goto/16 :goto_6

    .line 179
    .line 180
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 181
    .line 182
    if-nez v0, :cond_f

    .line 183
    .line 184
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 185
    .line 186
    const/4 v3, 0x0

    .line 187
    if-eqz v0, :cond_6

    .line 188
    .line 189
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    goto :goto_1

    .line 194
    :cond_6
    move-object v0, v3

    .line 195
    :goto_1
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    .line 196
    .line 197
    .line 198
    move-result v4

    .line 199
    sub-int/2addr v4, v2

    .line 200
    :goto_2
    if-ltz v4, :cond_7

    .line 201
    .line 202
    invoke-virtual {p2, v4}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    .line 203
    .line 204
    .line 205
    move-result-object v5

    .line 206
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 207
    .line 208
    .line 209
    move-result-object v6

    .line 210
    if-eqz v6, :cond_8

    .line 211
    .line 212
    iget-boolean v5, v6, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 213
    .line 214
    if-eqz v5, :cond_7

    .line 215
    .line 216
    goto :goto_4

    .line 217
    :cond_7
    :goto_3
    move-object v0, v3

    .line 218
    goto :goto_5

    .line 219
    :cond_8
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 220
    .line 221
    .line 222
    move-result-object v5

    .line 223
    if-eqz v5, :cond_e

    .line 224
    .line 225
    iget-boolean v6, v5, Lcom/android/server/wm/TaskFragment;->mIsRemovalRequested:Z

    .line 226
    .line 227
    if-eqz v6, :cond_9

    .line 228
    .line 229
    goto :goto_4

    .line 230
    :cond_9
    new-instance v6, Lcom/android/server/wm/ActivityStarter$$ExternalSyntheticLambda0;

    .line 231
    .line 232
    const/4 v7, 0x1

    .line 233
    invoke-direct {v6, v7}, Lcom/android/server/wm/ActivityStarter$$ExternalSyntheticLambda0;-><init>(I)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    .line 237
    .line 238
    .line 239
    move-result-object v6

    .line 240
    if-nez v6, :cond_a

    .line 241
    .line 242
    goto :goto_4

    .line 243
    :cond_a
    iget-boolean v6, v5, Lcom/android/server/wm/TaskFragment;->mIsEmbedded:Z

    .line 244
    .line 245
    if-eqz v6, :cond_b

    .line 246
    .line 247
    iget-boolean v7, v5, Lcom/android/server/wm/TaskFragment;->mIsolatedNav:Z

    .line 248
    .line 249
    if-eqz v7, :cond_b

    .line 250
    .line 251
    goto :goto_3

    .line 252
    :cond_b
    if-eqz v0, :cond_d

    .line 253
    .line 254
    if-ne v0, v5, :cond_d

    .line 255
    .line 256
    :cond_c
    move-object v0, v5

    .line 257
    goto :goto_5

    .line 258
    :cond_d
    if-eqz v6, :cond_c

    .line 259
    .line 260
    iget-boolean v6, v5, Lcom/android/server/wm/TaskFragment;->mPinned:Z

    .line 261
    .line 262
    if-eqz v6, :cond_c

    .line 263
    .line 264
    :cond_e
    :goto_4
    add-int/lit8 v4, v4, -0x1

    .line 265
    .line 266
    goto :goto_2

    .line 267
    :cond_f
    :goto_5
    if-eqz v0, :cond_10

    .line 268
    .line 269
    iget-boolean v3, v0, Lcom/android/server/wm/TaskFragment;->mIsEmbedded:Z

    .line 270
    .line 271
    if-eqz v3, :cond_10

    .line 272
    .line 273
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 274
    .line 275
    invoke-static {v0, v3, p2}, Lcom/android/server/wm/ActivityStarter;->canEmbedActivity(Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)I

    .line 276
    .line 277
    .line 278
    move-result v3

    .line 279
    if-nez v3, :cond_10

    .line 280
    .line 281
    move-object p2, v0

    .line 282
    :cond_10
    :goto_6
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 283
    .line 284
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    if-eqz v0, :cond_12

    .line 289
    .line 290
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 291
    .line 292
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    if-ne v0, p2, :cond_11

    .line 297
    .line 298
    goto :goto_7

    .line 299
    :cond_11
    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 300
    .line 301
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    .line 302
    .line 303
    .line 304
    move-result v0

    .line 305
    invoke-virtual {p0, p2, v0, p1}, Lcom/android/server/wm/ActivityRecord;->reparent(Lcom/android/server/wm/TaskFragment;ILjava/lang/String;)V

    .line 306
    .line 307
    .line 308
    goto/16 :goto_a

    .line 309
    .line 310
    :cond_12
    :goto_7
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    .line 311
    .line 312
    if-eqz p1, :cond_14

    .line 313
    .line 314
    iget-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mInTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 315
    .line 316
    if-nez p1, :cond_14

    .line 317
    .line 318
    iget-boolean p1, p2, Lcom/android/server/wm/TaskFragment;->mIsEmbedded:Z

    .line 319
    .line 320
    if-eqz p1, :cond_14

    .line 321
    .line 322
    iget-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 323
    .line 324
    if-eqz p1, :cond_13

    .line 325
    .line 326
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 327
    .line 328
    invoke-virtual {p2}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    if-eq p1, v0, :cond_14

    .line 333
    .line 334
    :cond_13
    iget-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 335
    .line 336
    iput-boolean v2, p1, Lcom/android/server/wm/ActivityRecord;->mIsActivityReparentToEmbeddedTask:Z

    .line 337
    .line 338
    :cond_14
    iget-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRootTask:Lcom/android/server/wm/Task;

    .line 339
    .line 340
    if-eqz p1, :cond_15

    .line 341
    .line 342
    goto :goto_8

    .line 343
    :cond_15
    iget-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 344
    .line 345
    invoke-virtual {p1}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    .line 346
    .line 347
    .line 348
    move-result-object p1

    .line 349
    :goto_8
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 350
    .line 351
    const v3, 0x7fffffff

    .line 352
    .line 353
    .line 354
    invoke-virtual {p2, v0, v3}, Lcom/android/server/wm/TaskFragment;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    .line 355
    .line 356
    .line 357
    iget-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 358
    .line 359
    iget-object p2, p2, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 360
    .line 361
    if-eqz p2, :cond_18

    .line 362
    .line 363
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 364
    .line 365
    .line 366
    move-result v0

    .line 367
    if-eqz v0, :cond_18

    .line 368
    .line 369
    invoke-virtual {p2}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 370
    .line 371
    .line 372
    move-result-object v0

    .line 373
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isDesktopModeSingleTopActivityTranslucent(Landroid/app/TaskInfo;)Z

    .line 374
    .line 375
    .line 376
    move-result v0

    .line 377
    if-eqz v0, :cond_18

    .line 378
    .line 379
    iget v0, p2, Lcom/android/server/wm/Task;->mResizeMode:I

    .line 380
    .line 381
    const/16 v3, 0xa

    .line 382
    .line 383
    if-eq v0, v3, :cond_17

    .line 384
    .line 385
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 386
    .line 387
    invoke-virtual {p2}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 388
    .line 389
    .line 390
    move-result-object v1

    .line 391
    invoke-static {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isSystemUiTask(Landroid/content/Context;Landroid/app/TaskInfo;)Z

    .line 392
    .line 393
    .line 394
    move-result v0

    .line 395
    if-nez v0, :cond_17

    .line 396
    .line 397
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRootTask:Lcom/android/server/wm/Task;

    .line 398
    .line 399
    if-nez v0, :cond_16

    .line 400
    .line 401
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 402
    .line 403
    iget-boolean v0, v0, Lcom/android/server/wm/ActivityRecord;->mStyleFloating:Z

    .line 404
    .line 405
    if-eqz v0, :cond_16

    .line 406
    .line 407
    goto :goto_9

    .line 408
    :cond_16
    if-eqz p1, :cond_18

    .line 409
    .line 410
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    .line 411
    .line 412
    .line 413
    move-result v0

    .line 414
    if-nez v0, :cond_18

    .line 415
    .line 416
    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 417
    .line 418
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isResolverOrDelegateActivity()Z

    .line 419
    .line 420
    .line 421
    move-result p0

    .line 422
    if-eqz p0, :cond_18

    .line 423
    .line 424
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    .line 425
    .line 426
    .line 427
    move-result p0

    .line 428
    if-nez p0, :cond_18

    .line 429
    .line 430
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 431
    .line 432
    .line 433
    move-result p0

    .line 434
    invoke-virtual {p2, p0}, Lcom/android/server/wm/Task;->setWindowingMode(I)V

    .line 435
    .line 436
    .line 437
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 438
    .line 439
    .line 440
    move-result-object p0

    .line 441
    invoke-virtual {p2, p0}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    .line 442
    .line 443
    .line 444
    goto :goto_a

    .line 445
    :cond_17
    :goto_9
    invoke-virtual {p2, v2}, Lcom/android/server/wm/Task;->setWindowingMode(I)V

    .line 446
    .line 447
    .line 448
    :cond_18
    :goto_a
    return-void
.end method

.method public final avoidMoveToFront()Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/wm/ActivityStarter;->mCanMoveToFrontCode:I

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0
.end method

.method public final canMoveTaskToBottomTask(ILcom/android/server/wm/Task;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget v1, p2, Lcom/android/server/wm/Task;->mTaskId:I

    .line 6
    .line 7
    if-ne v1, p1, :cond_1

    .line 8
    .line 9
    return v0

    .line 10
    :cond_1
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_3

    .line 15
    .line 16
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MT_NEW_DEX_LAUNCH_POLICY:Z

    .line 17
    .line 18
    if-eqz v1, :cond_2

    .line 19
    .line 20
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->isNewDexMode()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-nez v1, :cond_2

    .line 31
    .line 32
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mSavedFrontTaskIds:Landroid/util/SparseBooleanArray;

    .line 33
    .line 34
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_2

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    return v0

    .line 42
    :cond_3
    :goto_0
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_RESUMED_AFFORDANCE_SHELL_TRANSITION:Z

    .line 43
    .line 44
    if-eqz p1, :cond_4

    .line 45
    .line 46
    iget-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 47
    .line 48
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    .line 49
    .line 50
    iget-object p1, p1, Lcom/android/server/wm/MultiTaskingController;->mAffordanceTargetTask:Lcom/android/server/wm/Task;

    .line 51
    .line 52
    if-eqz p1, :cond_4

    .line 53
    .line 54
    if-ne p1, p2, :cond_4

    .line 55
    .line 56
    return v0

    .line 57
    :cond_4
    const/4 p1, 0x1

    .line 58
    invoke-virtual {p2, p1, v0}, Lcom/android/server/wm/Task;->getTopVisibleActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    if-eqz v1, :cond_5

    .line 63
    .line 64
    iget p2, p2, Lcom/android/server/wm/Task;->mTaskId:I

    .line 65
    .line 66
    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mSavedFrontTaskIds:Landroid/util/SparseBooleanArray;

    .line 67
    .line 68
    invoke-virtual {p0, p2, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    .line 69
    .line 70
    .line 71
    move-result p0

    .line 72
    if-eqz p0, :cond_5

    .line 73
    .line 74
    return v0

    .line 75
    :cond_5
    return p1
.end method

.method public final checkStartActivityAllowedByEDM(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;ILcom/android/server/wm/SafeActivityOptions;Landroid/content/ComponentName;Ljava/lang/String;)I
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p6

    .line 1
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v5

    .line 2
    new-instance v6, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v6, v5}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 3
    invoke-virtual {v6}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitDiskReads()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v6

    .line 4
    invoke-virtual {v6}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v6

    .line 5
    invoke-static {v6}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    const/4 v6, 0x0

    if-eqz v2, :cond_0

    .line 6
    iget-object v7, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    goto :goto_0

    :cond_0
    move v7, v6

    .line 7
    :goto_0
    const-string v14, "ActivityTaskManager"

    const-string v13, " succeeded"

    const/16 v16, -0x65

    const-string v12, "Start activity "

    if-eqz p5, :cond_16

    invoke-virtual/range {p5 .. p5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_16

    .line 8
    invoke-virtual/range {p5 .. p5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 9
    const-string v8, "com.android.settings"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v10, "OutOfMemoryError is happened"

    const-string v9, ":android:show_fragment"

    const-string/jumbo v17, "restriction_policy"

    move-object/from16 v18, v10

    const-string v10, "ActivityManager"

    if-eqz v8, :cond_5

    .line 10
    :try_start_0
    invoke-static/range {v17 .. v17}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 11
    invoke-interface {v8, v6, v7}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isSettingsChangesAllowedAsUser(ZI)Z

    move-result v17

    if-nez v17, :cond_4

    .line 12
    invoke-virtual {v0, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_11

    if-nez v9, :cond_1

    .line 13
    :try_start_1
    invoke-virtual/range {p5 .. p5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-object/from16 v22, v11

    move-object v6, v12

    move-object/from16 v19, v14

    move-object/from16 v15, v18

    move-object v14, v10

    move-object/from16 v18, v13

    goto/16 :goto_9

    :catch_1
    move-exception v0

    move-object/from16 v22, v11

    move-object v6, v12

    move-object/from16 v18, v13

    move-object/from16 v19, v14

    goto/16 :goto_a

    :catch_2
    move-object/from16 v22, v11

    move-object v6, v12

    move-object/from16 v18, v13

    goto/16 :goto_7

    .line 14
    :cond_1
    :goto_1
    :try_start_2
    sget-object v15, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->settingsExceptions:[Ljava/lang/String;

    array-length v6, v15
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_11

    move-object/from16 v19, v10

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v6, :cond_3

    move/from16 v17, v6

    :try_start_3
    aget-object v6, v15, v10

    .line 15
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/high16 v6, 0x800000

    .line 16
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 17
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    const-string v6, "ActivityStarter"
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_6

    .line 18
    :try_start_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_9

    :try_start_5
    const-string v17, ""
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_6

    const/4 v9, 0x5

    const/4 v10, 0x0

    const/4 v8, 0x5

    move-object/from16 v20, v18

    move-object/from16 v21, v19

    move-object/from16 v22, v11

    move v11, v0

    move-object/from16 v23, v12

    move-object v12, v6

    move-object v6, v13

    move-object v13, v15

    move-object v15, v14

    move-object/from16 v14, v17

    move-object/from16 v18, v6

    move-object v6, v15

    move v15, v7

    .line 19
    :try_start_6
    invoke-static/range {v8 .. v15}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_4

    :catch_3
    :goto_3
    move-object/from16 v19, v6

    move-object/from16 v6, v23

    goto/16 :goto_8

    :catch_4
    :goto_4
    move-object/from16 v19, v6

    move-object/from16 v15, v20

    move-object/from16 v14, v21

    move-object/from16 v6, v23

    goto/16 :goto_9

    :catch_5
    move-exception v0

    :goto_5
    move-object/from16 v19, v6

    move-object/from16 v6, v23

    goto/16 :goto_a

    :catch_6
    move-object/from16 v22, v11

    move-object/from16 v20, v18

    move-object/from16 v18, v13

    move-object v6, v12

    move-object/from16 v15, v20

    move-object/from16 v25, v19

    move-object/from16 v19, v14

    move-object/from16 v14, v25

    goto/16 :goto_9

    :catch_7
    move-exception v0

    move-object/from16 v22, v11

    move-object/from16 v23, v12

    move-object/from16 v18, v13

    move-object v6, v14

    goto :goto_5

    :catch_8
    move-object/from16 v22, v11

    move-object/from16 v18, v13

    move-object v6, v12

    goto/16 :goto_7

    :catch_9
    move-object/from16 v22, v11

    move-object/from16 v23, v12

    move-object v6, v14

    move-object/from16 v20, v18

    move-object/from16 v21, v19

    move-object/from16 v18, v13

    goto :goto_4

    :catch_a
    move-object/from16 v22, v11

    move-object/from16 v23, v12

    move-object/from16 v18, v13

    move-object v6, v14

    goto :goto_3

    :cond_2
    move-object/from16 v22, v11

    move-object/from16 v23, v12

    move-object v6, v14

    move-object/from16 v20, v18

    move-object/from16 v21, v19

    move-object/from16 v18, v13

    add-int/lit8 v10, v10, 0x1

    move/from16 v6, v17

    move-object/from16 v18, v20

    goto/16 :goto_2

    :cond_3
    move-object/from16 v22, v11

    move-object/from16 v23, v12

    move-object v6, v14

    move-object/from16 v20, v18

    move-object/from16 v21, v19

    move-object/from16 v18, v13

    .line 20
    :try_start_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Settings restriction policy blocks "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " from starting!"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x1

    .line 21
    invoke-interface {v8, v9, v7}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isSettingsChangesAllowedAsUser(ZI)Z

    .line 22
    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 23
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v11

    const-string v12, "ActivityStarter"

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_10

    move-object/from16 v15, v23

    :try_start_8
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    const-string v8, " failed. Blocked due to settings changes not allowed."

    .line 26
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, ""
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_d

    const/4 v9, 0x5

    const/4 v10, 0x0

    const/4 v8, 0x5

    move-object/from16 v19, v6

    move-object v6, v15

    move v15, v7

    .line 27
    :try_start_9
    invoke-static/range {v8 .. v15}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_12
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_9} :catch_b

    return v16

    :catch_b
    :goto_6
    move-object/from16 v15, v20

    move-object/from16 v14, v21

    goto :goto_9

    :catch_c
    move-exception v0

    goto :goto_a

    :catch_d
    move-object/from16 v19, v6

    move-object v6, v15

    goto :goto_6

    :catch_e
    move-exception v0

    move-object/from16 v19, v6

    move-object v6, v15

    goto :goto_a

    :catch_f
    move-object/from16 v19, v6

    move-object v6, v15

    goto :goto_8

    :catch_10
    move-object/from16 v19, v6

    move-object/from16 v6, v23

    goto :goto_6

    :catch_11
    move-object/from16 v22, v11

    move-object v6, v12

    move-object/from16 v19, v14

    move-object/from16 v20, v18

    move-object/from16 v18, v13

    move-object v14, v10

    move-object/from16 v15, v20

    goto :goto_9

    :cond_4
    move-object/from16 v22, v11

    move-object v6, v12

    move-object/from16 v18, v13

    :goto_7
    move-object/from16 v19, v14

    :catch_12
    :goto_8
    move-object/from16 v24, v22

    goto/16 :goto_10

    .line 28
    :goto_9
    invoke-static {v14, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 29
    :goto_a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    :cond_5
    move-object/from16 v22, v11

    move-object v6, v12

    move-object/from16 v19, v14

    move-object/from16 v15, v18

    move-object v14, v10

    move-object/from16 v18, v13

    .line 30
    sget-object v8, Lcom/samsung/android/knox/kiosk/KioskMode;->TASK_MANAGER_PKGNAME:Ljava/lang/String;

    move-object/from16 v13, v22

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    sget-object v8, Lcom/samsung/android/knox/kiosk/KioskMode;->CONTROL_PANEL_PKGNAME:Ljava/lang/String;

    .line 31
    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    :cond_6
    move-object/from16 v24, v13

    move-object v0, v14

    goto/16 :goto_f

    .line 32
    :cond_7
    const-string v8, "com.vlingo.midas"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    const-string v8, "com.samsung.voiceserviceplatform"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    goto :goto_b

    :catch_13
    :cond_8
    move-object/from16 v24, v13

    goto/16 :goto_10

    .line 33
    :cond_9
    :goto_b
    :try_start_a
    invoke-static/range {v17 .. v17}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v8

    if-eqz v8, :cond_8

    const/4 v10, 0x1

    .line 34
    invoke-interface {v8, v10, v7}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isSVoiceAllowedAsUser(ZI)Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-interface {v8, v10, v7}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isMicrophoneEnabledAsUser(ZI)Z

    move-result v8

    if-nez v8, :cond_8

    goto :goto_c

    :catch_14
    move-object/from16 v24, v13

    move-object v0, v14

    move-object v2, v15

    goto :goto_d

    :catch_15
    move-exception v0

    move-object/from16 v24, v13

    goto :goto_e

    .line 35
    :cond_a
    :goto_c
    invoke-virtual {v0, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    .line 36
    invoke-virtual/range {p5 .. p5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 37
    :cond_b
    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 38
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v11

    const-string v12, "ActivityStarter"

    .line 39
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    const-string v0, " failed. Blocked due to SVoice not allowed."

    .line 41
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v17, ""
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_13
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_15
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_a} :catch_14

    const/4 v9, 0x5

    const/4 v10, 0x0

    const/4 v8, 0x5

    move-object/from16 v24, v13

    move-object v13, v0

    move-object v0, v14

    move-object/from16 v14, v17

    move-object v2, v15

    move v15, v7

    .line 42
    :try_start_b
    invoke-static/range {v8 .. v15}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_19
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_16
    .catch Ljava/lang/OutOfMemoryError; {:try_start_b .. :try_end_b} :catch_17

    return v16

    :catch_16
    move-exception v0

    goto :goto_e

    .line 43
    :catch_17
    :goto_d
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 44
    :goto_e
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_10

    .line 45
    :goto_f
    :try_start_c
    const-string v2, "kioskmode"

    .line 46
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 47
    invoke-static {v2}, Lcom/samsung/android/knox/kiosk/IKioskMode$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/kiosk/IKioskMode;

    move-result-object v2

    if-eqz v2, :cond_c

    const/4 v8, 0x1

    .line 48
    invoke-interface {v2, v8, v7}, Lcom/samsung/android/knox/kiosk/IKioskMode;->isTaskManagerAllowedAsUser(ZI)Z

    move-result v2

    if-nez v2, :cond_c

    .line 49
    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 50
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v11

    const-string v12, "ActivityStarter"

    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    const-string v8, " failed. Task manager is not allowed."

    .line 53
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, ""

    const/4 v9, 0x5

    const/4 v10, 0x0

    const/4 v8, 0x5

    move v15, v7

    .line 54
    invoke-static/range {v8 .. v15}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_19
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_18

    return v16

    .line 55
    :catch_18
    const-string v2, "Is edm running?"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :catch_19
    :cond_c
    :goto_10
    invoke-virtual/range {p5 .. p5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 57
    :try_start_d
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mPasswordPolicy:Lcom/samsung/android/knox/localservice/PasswordPolicyInternal;

    if-nez v0, :cond_d

    .line 58
    const-class v0, Lcom/samsung/android/knox/localservice/PasswordPolicyInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/localservice/PasswordPolicyInternal;

    iput-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mPasswordPolicy:Lcom/samsung/android/knox/localservice/PasswordPolicyInternal;

    .line 59
    :cond_d
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mPasswordPolicy:Lcom/samsung/android/knox/localservice/PasswordPolicyInternal;

    .line 60
    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mSecurityPolicy:Lcom/samsung/android/knox/localservice/SecurityPolicyInternal;

    if-nez v2, :cond_e

    .line 61
    const-class v2, Lcom/samsung/android/knox/localservice/SecurityPolicyInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/localservice/SecurityPolicyInternal;

    iput-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mSecurityPolicy:Lcom/samsung/android/knox/localservice/SecurityPolicyInternal;

    .line 62
    :cond_e
    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mSecurityPolicy:Lcom/samsung/android/knox/localservice/SecurityPolicyInternal;

    if-eqz v0, :cond_f

    const/4 v8, 0x0

    .line 63
    invoke-virtual {v0, v8}, Lcom/samsung/android/knox/localservice/PasswordPolicyInternal;->isChangeRequestedAsUser(I)I

    move-result v0

    if-gtz v0, :cond_10

    goto :goto_11

    :catch_1a
    move-exception v0

    goto/16 :goto_14

    :cond_f
    :goto_11
    if-eqz v2, :cond_14

    .line 64
    invoke-virtual {v2, v7}, Lcom/samsung/android/knox/localservice/SecurityPolicyInternal;->isDodBannerVisibleAsUser(I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 65
    :cond_10
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/app/IActivityManager;->getTasks(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 66
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_14

    const/4 v2, 0x0

    .line 67
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-virtual/range {p5 .. p5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 69
    sget-object v8, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->enforcePwdExceptions:[Ljava/lang/String;

    array-length v9, v8

    const/4 v10, 0x0

    const/4 v15, 0x0

    :goto_12
    if-ge v10, v9, :cond_13

    aget-object v11, v8, v10

    if-eqz v0, :cond_11

    .line 70
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_11

    const/4 v15, 0x1

    :cond_11
    if-eqz v2, :cond_12

    .line 71
    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    add-int/lit8 v10, v10, 0x1

    goto :goto_12

    :cond_13
    const/4 v0, 0x0

    :goto_13
    if-eqz v15, :cond_14

    if-nez v0, :cond_14

    .line 72
    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 73
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v11

    const-string v12, "ActivityStarter"

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    const-string v2, " failed. Blocked due to password change enforcement."

    .line 76
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, ""

    const/4 v9, 0x5

    const/4 v10, 0x0

    const/4 v8, 0x5

    move v15, v7

    .line 77
    invoke-static/range {v8 .. v15}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_1b
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1a

    return v16

    .line 78
    :goto_14
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 79
    :catch_1b
    :cond_14
    :try_start_e
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mApplicationPolicy:Lcom/samsung/android/knox/localservice/ApplicationPolicyInternal;

    if-nez v0, :cond_15

    .line 80
    const-class v0, Lcom/samsung/android/knox/localservice/ApplicationPolicyInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/localservice/ApplicationPolicyInternal;

    iput-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mApplicationPolicy:Lcom/samsung/android/knox/localservice/ApplicationPolicyInternal;

    .line 81
    :cond_15
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mApplicationPolicy:Lcom/samsung/android/knox/localservice/ApplicationPolicyInternal;

    if-eqz v0, :cond_17

    move-object/from16 v4, v24

    const/4 v2, 0x1

    .line 82
    invoke-virtual {v0, v4, v2, v7}, Lcom/samsung/android/knox/localservice/ApplicationPolicyInternal;->getApplicationStateEnabledAsUser(Ljava/lang/String;ZI)Z

    move-result v0

    if-nez v0, :cond_17

    .line 83
    const-string v0, "ActivityStarter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to open "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1c

    return v16

    :catch_1c
    move-exception v0

    .line 85
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_15

    :cond_16
    move-object v6, v12

    move-object/from16 v18, v13

    move-object/from16 v19, v14

    :cond_17
    :goto_15
    if-eqz v3, :cond_18

    .line 86
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    move/from16 v2, p3

    if-ne v2, v0, :cond_18

    const/4 v0, 0x0

    .line 87
    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v3, v0, v0, v0, v2}, Lcom/android/server/wm/SafeActivityOptions;->getOptions(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityTaskSupervisor;)Landroid/app/ActivityOptions;

    move-result-object v4

    if-eqz v4, :cond_1c

    .line 88
    invoke-virtual {v3, v0, v0, v0, v2}, Lcom/android/server/wm/SafeActivityOptions;->getOptions(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityTaskSupervisor;)Landroid/app/ActivityOptions;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getStartedByMDMAdmin()Z

    move-result v0

    if-nez v0, :cond_1c

    :cond_18
    move-object/from16 v2, p2

    if-eqz v2, :cond_1c

    .line 90
    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 91
    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 93
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v4

    const/4 v8, 0x1

    sub-int/2addr v4, v8

    :goto_16
    if-ltz v4, :cond_19

    .line 94
    invoke-virtual {v2, v4}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/DisplayContent;

    .line 95
    new-instance v9, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda52;

    const/4 v10, 0x1

    invoke-direct {v9, v0, v7, v3, v10}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda52;-><init>(Ljava/lang/String;ILjava/util/concurrent/atomic/AtomicReference;I)V

    invoke-virtual {v8, v9}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Consumer;)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_16

    .line 96
    :cond_19
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    if-nez v2, :cond_1c

    .line 97
    :try_start_f
    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mApplicationPolicy:Lcom/samsung/android/knox/localservice/ApplicationPolicyInternal;

    if-nez v2, :cond_1a

    .line 98
    const-class v2, Lcom/samsung/android/knox/localservice/ApplicationPolicyInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/localservice/ApplicationPolicyInternal;

    iput-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mApplicationPolicy:Lcom/samsung/android/knox/localservice/ApplicationPolicyInternal;

    .line 99
    :cond_1a
    iget-object v1, v1, Lcom/android/server/wm/ActivityStarter;->mApplicationPolicy:Lcom/samsung/android/knox/localservice/ApplicationPolicyInternal;

    if-eqz v1, :cond_1b

    .line 100
    invoke-virtual {v1, v0, v7}, Lcom/samsung/android/knox/localservice/ApplicationPolicyInternal;->isApplicationStartDisabledAsUser(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to start "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p5 .. p5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " which is at prevent start black list"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v19

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 103
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v11

    const-string v12, "ActivityStarter"

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    const-string v0, " failed"

    .line 106
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, ""

    const/4 v9, 0x5

    const/4 v10, 0x0

    const/4 v8, 0x5

    move v15, v7

    .line 107
    invoke-static/range {v8 .. v15}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return v16

    :catch_1d
    move-exception v0

    goto :goto_17

    .line 108
    :cond_1b
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v11

    const-string v12, "ActivityStarter"

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v18

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, ""

    const/4 v9, 0x5

    const/4 v10, 0x1

    const/4 v8, 0x5

    move v15, v7

    .line 110
    invoke-static/range {v8 .. v15}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1d

    goto :goto_18

    .line 111
    :goto_17
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 112
    :cond_1c
    :goto_18
    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    const/4 v1, 0x0

    return v1
.end method

.method public final computeLaunchParams(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)V
    .locals 11

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_NEW_DEX_LAUNCH_POLICY:Z

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 6
    .line 7
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mLaunchParamsController:Lcom/android/server/wm/LaunchParamsController;

    .line 8
    .line 9
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 10
    .line 11
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    .line 12
    .line 13
    iget-object v6, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 14
    .line 15
    iget-object v7, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 16
    .line 17
    iget-object v9, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 18
    .line 19
    iget-object v10, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 20
    .line 21
    const/4 v8, 0x3

    .line 22
    move-object v2, p3

    .line 23
    move-object v4, p1

    .line 24
    move-object v5, p2

    .line 25
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/wm/LaunchParamsController;->calculate(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityStarter$Request;ILcom/android/server/wm/LaunchParamsController$LaunchParams;Lcom/android/server/wm/TaskDisplayArea;)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 29
    .line 30
    iget p2, p1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    .line 31
    .line 32
    const/4 p3, 0x5

    .line 33
    if-ne p2, p3, :cond_1

    .line 34
    .line 35
    iget-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 36
    .line 37
    if-nez p2, :cond_0

    .line 38
    .line 39
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    iput-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 44
    .line 45
    :cond_0
    iget-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 46
    .line 47
    invoke-virtual {p2, p3}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 48
    .line 49
    .line 50
    :cond_1
    iget-object p2, p1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 51
    .line 52
    if-eqz p2, :cond_2

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    iget-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 56
    .line 57
    iget-object p2, p2, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 58
    .line 59
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    :goto_0
    iput-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 64
    .line 65
    iget p1, p1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    .line 66
    .line 67
    iput p1, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredWindowingMode:I

    .line 68
    .line 69
    return-void

    .line 70
    :cond_3
    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 71
    .line 72
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    const/4 p0, 0x0

    .line 76
    throw p0
.end method

.method public final computeLaunchingTaskFlags()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x3

    .line 6
    const/4 v4, 0x0

    .line 7
    const/high16 v5, 0x10000000

    .line 8
    .line 9
    const/4 v6, 0x1

    .line 10
    if-nez v0, :cond_7

    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    .line 13
    .line 14
    if-eqz v0, :cond_7

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_7

    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v7, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    .line 29
    .line 30
    invoke-virtual {v7, v6, v4}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 31
    .line 32
    .line 33
    move-result-object v7

    .line 34
    if-eqz v0, :cond_6

    .line 35
    .line 36
    iget v8, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    .line 37
    .line 38
    if-eq v3, v8, :cond_0

    .line 39
    .line 40
    if-ne v1, v8, :cond_1

    .line 41
    .line 42
    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 43
    .line 44
    .line 45
    move-result-object v8

    .line 46
    iget-object v9, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 47
    .line 48
    iget-object v9, v9, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 49
    .line 50
    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 51
    .line 52
    .line 53
    move-result-object v9

    .line 54
    invoke-virtual {v8, v9}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v8

    .line 58
    if-eqz v8, :cond_5

    .line 59
    .line 60
    if-nez v7, :cond_4

    .line 61
    .line 62
    :cond_1
    if-nez v7, :cond_2

    .line 63
    .line 64
    iget v7, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 65
    .line 66
    const v8, -0x18082001

    .line 67
    .line 68
    .line 69
    and-int/2addr v7, v8

    .line 70
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    const v8, 0x18082000

    .line 75
    .line 76
    .line 77
    and-int/2addr v0, v8

    .line 78
    or-int/2addr v0, v7

    .line 79
    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 80
    .line 81
    iget-object v7, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 82
    .line 83
    invoke-virtual {v7, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    .line 87
    .line 88
    iget-object v7, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 89
    .line 90
    invoke-virtual {v0, v7, v2, v2}, Lcom/android/server/wm/Task;->setIntent(Lcom/android/server/wm/ActivityRecord;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 91
    .line 92
    .line 93
    iput-boolean v6, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 94
    .line 95
    goto/16 :goto_0

    .line 96
    .line 97
    :cond_2
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 98
    .line 99
    and-int/2addr v0, v5

    .line 100
    if-eqz v0, :cond_3

    .line 101
    .line 102
    iput-boolean v4, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 103
    .line 104
    goto/16 :goto_0

    .line 105
    .line 106
    :cond_3
    iput-boolean v6, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 107
    .line 108
    goto/16 :goto_0

    .line 109
    .line 110
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 111
    .line 112
    invoke-static {v0}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 113
    .line 114
    .line 115
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 116
    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    const-string v2, "Caller with mInTask "

    .line 120
    .line 121
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    .line 125
    .line 126
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    const-string p0, " has root "

    .line 130
    .line 131
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    const-string p0, " but target is singleInstance/Task"

    .line 138
    .line 139
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    throw v0

    .line 150
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 151
    .line 152
    invoke-static {v0}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 153
    .line 154
    .line 155
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 156
    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    const-string v2, "Trying to launch singleInstance/Task "

    .line 160
    .line 161
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 165
    .line 166
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    const-string v2, " into different task "

    .line 170
    .line 171
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    .line 175
    .line 176
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p0

    .line 183
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    throw v0

    .line 187
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 188
    .line 189
    invoke-static {v0}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 190
    .line 191
    .line 192
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 193
    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    .line 195
    .line 196
    const-string v2, "Launching into task without base intent: "

    .line 197
    .line 198
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    .line 202
    .line 203
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object p0

    .line 210
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    throw v0

    .line 214
    :cond_7
    iput-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    .line 215
    .line 216
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 217
    .line 218
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isResolverOrDelegateActivity()Z

    .line 219
    .line 220
    .line 221
    move-result v0

    .line 222
    if-nez v0, :cond_8

    .line 223
    .line 224
    goto :goto_0

    .line 225
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 226
    .line 227
    if-eqz v0, :cond_a

    .line 228
    .line 229
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 230
    .line 231
    .line 232
    move-result v0

    .line 233
    if-nez v0, :cond_9

    .line 234
    .line 235
    goto :goto_0

    .line 236
    :cond_9
    iput-boolean v6, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 237
    .line 238
    :cond_a
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    .line 239
    .line 240
    if-nez v0, :cond_e

    .line 241
    .line 242
    iget-object v6, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 243
    .line 244
    if-nez v6, :cond_b

    .line 245
    .line 246
    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 247
    .line 248
    and-int/2addr v1, v5

    .line 249
    if-nez v1, :cond_e

    .line 250
    .line 251
    if-nez v0, :cond_e

    .line 252
    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    .line 254
    .line 255
    const-string/jumbo v1, "startActivity called from non-Activity context; forcing Intent.FLAG_ACTIVITY_NEW_TASK for: "

    .line 256
    .line 257
    .line 258
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 262
    .line 263
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    const-string v1, "ActivityTaskManager"

    .line 271
    .line 272
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    .line 274
    .line 275
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 276
    .line 277
    or-int/2addr v0, v5

    .line 278
    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 279
    .line 280
    goto :goto_1

    .line 281
    :cond_b
    iget v0, v6, Lcom/android/server/wm/ActivityRecord;->launchMode:I

    .line 282
    .line 283
    if-ne v0, v3, :cond_c

    .line 284
    .line 285
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 286
    .line 287
    or-int/2addr v0, v5

    .line 288
    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 289
    .line 290
    goto :goto_1

    .line 291
    :cond_c
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    .line 292
    .line 293
    if-eq v3, v0, :cond_d

    .line 294
    .line 295
    if-ne v1, v0, :cond_e

    .line 296
    .line 297
    :cond_d
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 298
    .line 299
    or-int/2addr v0, v5

    .line 300
    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 301
    .line 302
    :cond_e
    :goto_1
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 303
    .line 304
    and-int/lit16 v1, v0, 0x1000

    .line 305
    .line 306
    if-eqz v1, :cond_10

    .line 307
    .line 308
    and-int v1, v0, v5

    .line 309
    .line 310
    if-eqz v1, :cond_f

    .line 311
    .line 312
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 313
    .line 314
    if-nez v1, :cond_10

    .line 315
    .line 316
    :cond_f
    and-int/lit16 v0, v0, -0x1001

    .line 317
    .line 318
    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 319
    .line 320
    :cond_10
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 321
    .line 322
    iget v0, v0, Lcom/android/server/wm/ActivityRecord;->launchMode:I

    .line 323
    .line 324
    const/4 v1, 0x4

    .line 325
    if-ne v0, v1, :cond_27

    .line 326
    .line 327
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 328
    .line 329
    const/high16 v1, 0x8000000

    .line 330
    .line 331
    and-int/2addr v0, v1

    .line 332
    if-eqz v0, :cond_11

    .line 333
    .line 334
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 335
    .line 336
    if-eqz v0, :cond_27

    .line 337
    .line 338
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->isStartedFromWindowTypeLauncher()Z

    .line 339
    .line 340
    .line 341
    move-result v0

    .line 342
    if-eqz v0, :cond_27

    .line 343
    .line 344
    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 345
    .line 346
    if-eqz v0, :cond_14

    .line 347
    .line 348
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    .line 349
    .line 350
    .line 351
    move-result v0

    .line 352
    if-nez v0, :cond_12

    .line 353
    .line 354
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 355
    .line 356
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getForceLaunchWindowingMode()I

    .line 357
    .line 358
    .line 359
    move-result v0

    .line 360
    :cond_12
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 361
    .line 362
    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getLaunchRootTask()Landroid/window/WindowContainerToken;

    .line 363
    .line 364
    .line 365
    move-result-object v3

    .line 366
    invoke-static {v3}, Lcom/android/server/wm/Task;->fromWindowContainerToken(Landroid/window/WindowContainerToken;)Lcom/android/server/wm/Task;

    .line 367
    .line 368
    .line 369
    move-result-object v3

    .line 370
    if-eqz v3, :cond_13

    .line 371
    .line 372
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    .line 373
    .line 374
    .line 375
    move-result v5

    .line 376
    if-eqz v5, :cond_13

    .line 377
    .line 378
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->getStageType()I

    .line 379
    .line 380
    .line 381
    move-result v3

    .line 382
    goto :goto_2

    .line 383
    :cond_13
    move v3, v4

    .line 384
    goto :goto_2

    .line 385
    :cond_14
    move v0, v4

    .line 386
    move v3, v0

    .line 387
    :goto_2
    if-nez v3, :cond_15

    .line 388
    .line 389
    iget-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 390
    .line 391
    if-eqz v5, :cond_15

    .line 392
    .line 393
    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    .line 394
    .line 395
    .line 396
    move-result v5

    .line 397
    if-eqz v5, :cond_15

    .line 398
    .line 399
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 400
    .line 401
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->getStageType()I

    .line 402
    .line 403
    .line 404
    move-result v3

    .line 405
    :cond_15
    iget-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 406
    .line 407
    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiInstanceController:Lcom/android/server/wm/MultiInstanceController;

    .line 408
    .line 409
    iget-object v6, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 410
    .line 411
    iget-object v7, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 412
    .line 413
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 414
    .line 415
    .line 416
    iget-object v8, v6, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 417
    .line 418
    invoke-virtual {v8}, Landroid/content/Intent;->getLaunchTaskIdForSingleInstancePerTask()I

    .line 419
    .line 420
    .line 421
    move-result v8

    .line 422
    const/4 v9, -0x1

    .line 423
    if-eq v8, v9, :cond_16

    .line 424
    .line 425
    goto/16 :goto_8

    .line 426
    .line 427
    :cond_16
    new-instance v8, Ljava/util/ArrayList;

    .line 428
    .line 429
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 430
    .line 431
    .line 432
    iget-object v9, v5, Lcom/android/server/wm/MultiInstanceController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 433
    .line 434
    iget-object v9, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 435
    .line 436
    iget-object v5, v5, Lcom/android/server/wm/MultiInstanceController;->mTmpFindTaskResult:Lcom/android/server/wm/MultiInstanceController$FindTasksResult;

    .line 437
    .line 438
    invoke-virtual {v5, v6, v9, v8}, Lcom/android/server/wm/MultiInstanceController$FindTasksResult;->process(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowContainer;Ljava/util/ArrayList;)V

    .line 439
    .line 440
    .line 441
    new-instance v5, Lcom/android/server/wm/MultiInstanceController$$ExternalSyntheticLambda0;

    .line 442
    .line 443
    const/4 v9, 0x0

    .line 444
    invoke-direct {v5, v9}, Lcom/android/server/wm/MultiInstanceController$$ExternalSyntheticLambda0;-><init>(I)V

    .line 445
    .line 446
    .line 447
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 448
    .line 449
    .line 450
    if-nez v7, :cond_17

    .line 451
    .line 452
    if-nez v0, :cond_17

    .line 453
    .line 454
    if-eqz v3, :cond_18

    .line 455
    .line 456
    :cond_17
    if-eqz v7, :cond_1a

    .line 457
    .line 458
    invoke-virtual {v7}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    .line 459
    .line 460
    .line 461
    move-result v5

    .line 462
    if-nez v5, :cond_1a

    .line 463
    .line 464
    if-nez v0, :cond_1a

    .line 465
    .line 466
    if-nez v3, :cond_1a

    .line 467
    .line 468
    :cond_18
    :goto_3
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 469
    .line 470
    .line 471
    move-result v0

    .line 472
    if-ge v4, v0, :cond_27

    .line 473
    .line 474
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 475
    .line 476
    .line 477
    move-result-object v0

    .line 478
    check-cast v0, Lcom/android/server/wm/Task;

    .line 479
    .line 480
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    .line 481
    .line 482
    .line 483
    move-result v1

    .line 484
    if-eqz v1, :cond_19

    .line 485
    .line 486
    iget-object v1, v6, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 487
    .line 488
    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    .line 489
    .line 490
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setLaunchTaskIdForSingleInstancePerTask(I)V

    .line 491
    .line 492
    .line 493
    goto/16 :goto_8

    .line 494
    .line 495
    :cond_19
    add-int/lit8 v4, v4, 0x1

    .line 496
    .line 497
    goto :goto_3

    .line 498
    :cond_1a
    if-eqz v7, :cond_1b

    .line 499
    .line 500
    invoke-virtual {v7}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    .line 501
    .line 502
    .line 503
    move-result v5

    .line 504
    if-nez v5, :cond_1b

    .line 505
    .line 506
    invoke-virtual {v7}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    .line 507
    .line 508
    .line 509
    move-result v5

    .line 510
    if-nez v5, :cond_1b

    .line 511
    .line 512
    goto/16 :goto_8

    .line 513
    .line 514
    :cond_1b
    new-instance v5, Ljava/util/HashMap;

    .line 515
    .line 516
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 517
    .line 518
    .line 519
    move v7, v4

    .line 520
    move-object v4, v2

    .line 521
    :goto_4
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 522
    .line 523
    .line 524
    move-result v9

    .line 525
    if-ge v7, v9, :cond_22

    .line 526
    .line 527
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 528
    .line 529
    .line 530
    move-result-object v9

    .line 531
    check-cast v9, Lcom/android/server/wm/Task;

    .line 532
    .line 533
    invoke-virtual {v9}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    .line 534
    .line 535
    .line 536
    move-result v10

    .line 537
    if-eqz v10, :cond_1c

    .line 538
    .line 539
    invoke-virtual {v9}, Lcom/android/server/wm/ConfigurationContainer;->getStageType()I

    .line 540
    .line 541
    .line 542
    move-result v10

    .line 543
    if-ne v10, v3, :cond_1c

    .line 544
    .line 545
    iget-object v0, v6, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 546
    .line 547
    iget v1, v9, Lcom/android/server/wm/Task;->mTaskId:I

    .line 548
    .line 549
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setLaunchTaskIdForSingleInstancePerTask(I)V

    .line 550
    .line 551
    .line 552
    goto/16 :goto_8

    .line 553
    .line 554
    :cond_1c
    invoke-virtual {v9}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 555
    .line 556
    .line 557
    move-result v10

    .line 558
    if-eqz v10, :cond_1e

    .line 559
    .line 560
    invoke-virtual {v9}, Lcom/android/server/wm/Task;->isMinimized()Z

    .line 561
    .line 562
    .line 563
    move-result v10

    .line 564
    if-nez v10, :cond_1d

    .line 565
    .line 566
    if-nez v4, :cond_21

    .line 567
    .line 568
    move-object v4, v9

    .line 569
    goto :goto_5

    .line 570
    :cond_1d
    iget-object v0, v6, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 571
    .line 572
    iget v1, v9, Lcom/android/server/wm/Task;->mTaskId:I

    .line 573
    .line 574
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setLaunchTaskIdForSingleInstancePerTask(I)V

    .line 575
    .line 576
    .line 577
    goto :goto_8

    .line 578
    :cond_1e
    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    .line 579
    .line 580
    .line 581
    move-result v10

    .line 582
    if-nez v10, :cond_1f

    .line 583
    .line 584
    if-nez v2, :cond_21

    .line 585
    .line 586
    move-object v2, v9

    .line 587
    goto :goto_5

    .line 588
    :cond_1f
    invoke-virtual {v9}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    .line 589
    .line 590
    .line 591
    move-result v10

    .line 592
    if-eqz v10, :cond_20

    .line 593
    .line 594
    invoke-virtual {v9}, Lcom/android/server/wm/ConfigurationContainer;->getStageType()I

    .line 595
    .line 596
    .line 597
    move-result v10

    .line 598
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 599
    .line 600
    .line 601
    move-result-object v10

    .line 602
    invoke-virtual {v5, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    .line 604
    .line 605
    goto :goto_5

    .line 606
    :cond_20
    invoke-virtual {v9}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 607
    .line 608
    .line 609
    move-result v10

    .line 610
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 611
    .line 612
    .line 613
    move-result-object v10

    .line 614
    invoke-virtual {v5, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    .line 616
    .line 617
    :cond_21
    :goto_5
    add-int/lit8 v7, v7, 0x1

    .line 618
    .line 619
    goto :goto_4

    .line 620
    :cond_22
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 621
    .line 622
    .line 623
    move-result-object v0

    .line 624
    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    .line 626
    .line 627
    move-result-object v0

    .line 628
    check-cast v0, Lcom/android/server/wm/Task;

    .line 629
    .line 630
    if-nez v0, :cond_23

    .line 631
    .line 632
    if-eqz v2, :cond_23

    .line 633
    .line 634
    goto :goto_6

    .line 635
    :cond_23
    move-object v2, v0

    .line 636
    :goto_6
    if-eqz v2, :cond_24

    .line 637
    .line 638
    iget-object v0, v6, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 639
    .line 640
    iget v1, v2, Lcom/android/server/wm/Task;->mTaskId:I

    .line 641
    .line 642
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setLaunchTaskIdForSingleInstancePerTask(I)V

    .line 643
    .line 644
    .line 645
    goto :goto_8

    .line 646
    :cond_24
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 647
    .line 648
    .line 649
    move-result v0

    .line 650
    const/4 v2, 0x5

    .line 651
    if-ge v0, v2, :cond_26

    .line 652
    .line 653
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 654
    .line 655
    .line 656
    move-result v0

    .line 657
    if-nez v0, :cond_25

    .line 658
    .line 659
    goto :goto_7

    .line 660
    :cond_25
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 661
    .line 662
    or-int/2addr v0, v1

    .line 663
    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 664
    .line 665
    goto :goto_8

    .line 666
    :cond_26
    :goto_7
    if-eqz v4, :cond_27

    .line 667
    .line 668
    iget-object v0, v6, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 669
    .line 670
    iget v1, v4, Lcom/android/server/wm/Task;->mTaskId:I

    .line 671
    .line 672
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setLaunchTaskIdForSingleInstancePerTask(I)V

    .line 673
    .line 674
    .line 675
    :cond_27
    :goto_8
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_MODE:Z

    .line 676
    .line 677
    if-eqz v0, :cond_28

    .line 678
    .line 679
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 680
    .line 681
    iget-boolean v0, v0, Lcom/android/server/wm/ActivityRecord;->mIsFlexPanel:Z

    .line 682
    .line 683
    if-eqz v0, :cond_28

    .line 684
    .line 685
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 686
    .line 687
    or-int/lit16 v0, v0, 0x1000

    .line 688
    .line 689
    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 690
    .line 691
    :cond_28
    return-void
.end method

.method public final computeTargetTask()Lcom/android/server/wm/Task;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 17
    .line 18
    const/high16 v3, 0x10000000

    .line 19
    .line 20
    and-int/2addr v1, v3

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    return-object v2

    .line 24
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    iget-object p0, v1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 29
    .line 30
    return-object p0

    .line 31
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    .line 32
    .line 33
    if-eqz v1, :cond_3

    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_2

    .line 40
    .line 41
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 42
    .line 43
    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 44
    .line 45
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    .line 46
    .line 47
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 48
    .line 49
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/wm/ActivityStarter;->getOrCreateRootTask(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/Task;Landroid/app/ActivityOptions;)Lcom/android/server/wm/Task;

    .line 50
    .line 51
    .line 52
    :cond_2
    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    .line 53
    .line 54
    return-object p0

    .line 55
    :cond_3
    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 56
    .line 57
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 58
    .line 59
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/wm/ActivityStarter;->getOrCreateRootTask(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/Task;Landroid/app/ActivityOptions;)Lcom/android/server/wm/Task;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    const/4 v0, 0x1

    .line 64
    invoke-virtual {p0, v0, v0}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    if-eqz v0, :cond_4

    .line 69
    .line 70
    iget-object p0, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 71
    .line 72
    return-object p0

    .line 73
    :cond_4
    const-string v0, "computeTargetTask"

    .line 74
    .line 75
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->removeIfPossible(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    return-object v2
.end method

.method public final createLaunchIntent(Landroid/content/pm/AuxiliaryResolveInfo;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 18

    .line 1
    move-object/from16 v12, p1

    .line 2
    .line 3
    if-eqz v12, :cond_0

    .line 4
    .line 5
    iget-boolean v0, v12, Landroid/content/pm/AuxiliaryResolveInfo;->needsPhaseTwo:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    move-object/from16 v0, p0

    .line 10
    .line 11
    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    move-object/from16 v13, p3

    .line 18
    .line 19
    move/from16 v14, p7

    .line 20
    .line 21
    invoke-virtual {v0, v13, v14}, Landroid/content/pm/PackageManagerInternal;->isInstantApp(Ljava/lang/String;I)Z

    .line 22
    .line 23
    .line 24
    move-result v6

    .line 25
    check-cast v0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 26
    .line 27
    iget-object v15, v0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 28
    .line 29
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    new-instance v11, Landroid/content/pm/InstantAppRequest;

    .line 33
    .line 34
    iget-object v10, v12, Landroid/content/pm/AuxiliaryResolveInfo;->hostDigestPrefixSecure:[I

    .line 35
    .line 36
    iget-object v9, v12, Landroid/content/pm/AuxiliaryResolveInfo;->token:Ljava/lang/String;

    .line 37
    .line 38
    const/16 v16, 0x0

    .line 39
    .line 40
    move-object v0, v11

    .line 41
    move-object/from16 v1, p1

    .line 42
    .line 43
    move-object/from16 v2, p2

    .line 44
    .line 45
    move-object/from16 v3, p6

    .line 46
    .line 47
    move-object/from16 v4, p3

    .line 48
    .line 49
    move-object/from16 v5, p4

    .line 50
    .line 51
    move/from16 v7, p7

    .line 52
    .line 53
    move-object/from16 v8, p5

    .line 54
    .line 55
    move-object/from16 v17, v9

    .line 56
    .line 57
    move/from16 v9, v16

    .line 58
    .line 59
    move-object v13, v11

    .line 60
    move-object/from16 v11, v17

    .line 61
    .line 62
    invoke-direct/range {v0 .. v11}, Landroid/content/pm/InstantAppRequest;-><init>(Landroid/content/pm/AuxiliaryResolveInfo;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILandroid/os/Bundle;Z[ILjava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iget-object v0, v15, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 66
    .line 67
    const/16 v1, 0x14

    .line 68
    .line 69
    invoke-virtual {v0, v1, v13}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_0
    move/from16 v14, p7

    .line 78
    .line 79
    :goto_0
    invoke-static/range {p2 .. p2}, Lcom/android/server/pm/InstantAppResolver;->sanitizeIntent(Landroid/content/Intent;)Landroid/content/Intent;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    const/4 v0, 0x0

    .line 84
    if-nez v12, :cond_1

    .line 85
    .line 86
    move-object v3, v0

    .line 87
    goto :goto_1

    .line 88
    :cond_1
    iget-object v1, v12, Landroid/content/pm/AuxiliaryResolveInfo;->failureIntent:Landroid/content/Intent;

    .line 89
    .line 90
    move-object v3, v1

    .line 91
    :goto_1
    if-nez v12, :cond_2

    .line 92
    .line 93
    move-object v9, v0

    .line 94
    goto :goto_2

    .line 95
    :cond_2
    iget-object v1, v12, Landroid/content/pm/AuxiliaryResolveInfo;->installFailureActivity:Landroid/content/ComponentName;

    .line 96
    .line 97
    move-object v9, v1

    .line 98
    :goto_2
    if-nez v12, :cond_3

    .line 99
    .line 100
    move-object v10, v0

    .line 101
    goto :goto_3

    .line 102
    :cond_3
    iget-object v1, v12, Landroid/content/pm/AuxiliaryResolveInfo;->token:Ljava/lang/String;

    .line 103
    .line 104
    move-object v10, v1

    .line 105
    :goto_3
    if-eqz v12, :cond_4

    .line 106
    .line 107
    iget-boolean v1, v12, Landroid/content/pm/AuxiliaryResolveInfo;->needsPhaseTwo:Z

    .line 108
    .line 109
    if-eqz v1, :cond_4

    .line 110
    .line 111
    const/4 v1, 0x1

    .line 112
    :goto_4
    move v11, v1

    .line 113
    goto :goto_5

    .line 114
    :cond_4
    const/4 v1, 0x0

    .line 115
    goto :goto_4

    .line 116
    :goto_5
    if-nez v12, :cond_5

    .line 117
    .line 118
    :goto_6
    move-object v12, v0

    .line 119
    goto :goto_7

    .line 120
    :cond_5
    iget-object v0, v12, Landroid/content/pm/AuxiliaryResolveInfo;->filters:Ljava/util/List;

    .line 121
    .line 122
    goto :goto_6

    .line 123
    :goto_7
    move-object/from16 v1, p2

    .line 124
    .line 125
    move-object/from16 v4, p3

    .line 126
    .line 127
    move-object/from16 v5, p4

    .line 128
    .line 129
    move-object/from16 v6, p5

    .line 130
    .line 131
    move-object/from16 v7, p6

    .line 132
    .line 133
    move/from16 v8, p7

    .line 134
    .line 135
    invoke-static/range {v1 .. v12}, Lcom/android/server/pm/InstantAppResolver;->buildEphemeralInstallerIntent(Landroid/content/Intent;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILandroid/content/ComponentName;Ljava/lang/String;ZLjava/util/List;)Landroid/content/Intent;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    return-object v0
.end method

.method public final deliverNewIntent(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/uri/NeededUriGrants;)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    iget-boolean v0, v1, Lcom/android/server/wm/ActivityStarter;->mIntentDelivered:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, v8, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 11
    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->getStartInfo()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const/16 v3, 0x7533

    .line 17
    .line 18
    invoke-virtual {v8, v3, v0, v2}, Lcom/android/server/wm/ActivityRecord;->logStartActivity(ILcom/android/server/wm/Task;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget v13, v1, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    .line 22
    .line 23
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 24
    .line 25
    iget-object v15, v0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 26
    .line 27
    iget-object v14, v0, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    .line 28
    .line 29
    iget-boolean v9, v0, Lcom/android/server/wm/ActivityRecord;->mShareIdentity:Z

    .line 30
    .line 31
    iget v10, v0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 32
    .line 33
    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 34
    .line 35
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 36
    .line 37
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 38
    .line 39
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    .line 40
    .line 41
    .line 42
    move-result v12

    .line 43
    const-string v11, "Exception thrown sending new intent to "

    .line 44
    .line 45
    new-instance v7, Landroid/os/Binder;

    .line 46
    .line 47
    invoke-direct {v7}, Landroid/os/Binder;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-static {}, Landroid/security/Flags;->contentUriPermissionApis()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_1

    .line 55
    .line 56
    move-object/from16 v2, p1

    .line 57
    .line 58
    move-object v3, v7

    .line 59
    move-object v4, v15

    .line 60
    move v5, v13

    .line 61
    move-object v6, v14

    .line 62
    move-object/from16 v16, v7

    .line 63
    .line 64
    move v7, v9

    .line 65
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/ActivityRecord;->computeCallerInfo(Landroid/os/IBinder;Landroid/content/Intent;ILjava/lang/String;Z)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    move-object/from16 v16, v7

    .line 70
    .line 71
    :goto_0
    iget-object v0, v8, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 72
    .line 73
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 74
    .line 75
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/uri/UriPermissionOwner;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    check-cast v0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;

    .line 80
    .line 81
    move-object/from16 v3, p2

    .line 82
    .line 83
    invoke-virtual {v0, v3, v2}, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->grantUriPermissionUncheckedFromIntent(Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/uri/UriPermissionOwner;)V

    .line 84
    .line 85
    .line 86
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_APPLOCK:Z

    .line 87
    .line 88
    const/4 v2, 0x1

    .line 89
    const-string v3, "ActivityTaskManager"

    .line 90
    .line 91
    if-eqz v0, :cond_3

    .line 92
    .line 93
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    .line 94
    .line 95
    invoke-direct {v0, v15}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 96
    .line 97
    .line 98
    const-string v4, "LAUNCH_FROM_NOTIFICATION"

    .line 99
    .line 100
    const/4 v5, -0x1

    .line 101
    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 102
    .line 103
    .line 104
    move-result v4

    .line 105
    if-eq v4, v2, :cond_2

    .line 106
    .line 107
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    const/high16 v4, 0x4000000

    .line 112
    .line 113
    and-int/2addr v0, v4

    .line 114
    if-eqz v0, :cond_3

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :catch_0
    move-exception v0

    .line 118
    goto :goto_2

    .line 119
    :cond_2
    :goto_1
    iput-boolean v2, v8, Lcom/android/server/wm/ActivityRecord;->mLaunchingRequestedFromNotification:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    .line 121
    goto :goto_3

    .line 122
    :goto_2
    const-string v4, "Exception while parsing intent but ignorable, was : "

    .line 123
    .line 124
    invoke-static {v0, v4, v3}, Lcom/android/server/KnoxCaptureInputFilter$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    :cond_3
    :goto_3
    if-eqz v9, :cond_4

    .line 128
    .line 129
    invoke-static {}, Landroid/security/Flags;->contentUriPermissionApis()Z

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    if-eqz v0, :cond_4

    .line 134
    .line 135
    iget-object v0, v8, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 136
    .line 137
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    move-object v9, v0

    .line 142
    check-cast v9, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 143
    .line 144
    const/4 v0, 0x0

    .line 145
    const/4 v4, 0x1

    .line 146
    move-object v5, v11

    .line 147
    move-object v11, v15

    .line 148
    move-object v6, v14

    .line 149
    move v14, v4

    .line 150
    move-object v4, v15

    .line 151
    move v15, v0

    .line 152
    invoke-virtual/range {v9 .. v15}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->grantImplicitAccess(ILandroid/content/Intent;IIZZ)V

    .line 153
    .line 154
    .line 155
    goto :goto_4

    .line 156
    :cond_4
    move-object v5, v11

    .line 157
    move-object v6, v14

    .line 158
    move-object v4, v15

    .line 159
    :goto_4
    new-instance v7, Lcom/android/internal/content/ReferrerIntent;

    .line 160
    .line 161
    invoke-virtual {v8, v6}, Lcom/android/server/wm/ActivityRecord;->getFilteredReferrer(Ljava/lang/String;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    move-object/from16 v6, v16

    .line 166
    .line 167
    invoke-direct {v7, v4, v0, v6}, Lcom/android/internal/content/ReferrerIntent;-><init>(Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->isTopRunningActivity()Z

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    const/4 v4, 0x0

    .line 175
    if-eqz v0, :cond_6

    .line 176
    .line 177
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    if-eqz v0, :cond_5

    .line 182
    .line 183
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->shouldSleepActivities()Z

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    goto :goto_5

    .line 188
    :cond_5
    iget-object v0, v8, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 189
    .line 190
    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSleeping:Z

    .line 191
    .line 192
    :goto_5
    if-eqz v0, :cond_6

    .line 193
    .line 194
    move v0, v2

    .line 195
    goto :goto_6

    .line 196
    :cond_6
    move v0, v4

    .line 197
    :goto_6
    iget-object v6, v8, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    .line 198
    .line 199
    sget-object v9, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    .line 200
    .line 201
    if-eq v6, v9, :cond_7

    .line 202
    .line 203
    sget-object v10, Lcom/android/server/wm/ActivityRecord$State;->PAUSED:Lcom/android/server/wm/ActivityRecord$State;

    .line 204
    .line 205
    if-eq v6, v10, :cond_7

    .line 206
    .line 207
    if-eqz v0, :cond_9

    .line 208
    .line 209
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    .line 210
    .line 211
    .line 212
    move-result v0

    .line 213
    if-eqz v0, :cond_9

    .line 214
    .line 215
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    .line 216
    .line 217
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    iget-object v6, v8, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 224
    .line 225
    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mLifecycleManager:Lcom/android/server/wm/ClientLifecycleManager;

    .line 226
    .line 227
    iget-object v10, v8, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 228
    .line 229
    iget-object v10, v10, Lcom/android/server/wm/WindowProcessController;->mThread:Landroid/app/IApplicationThread;

    .line 230
    .line 231
    iget-object v11, v8, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    .line 232
    .line 233
    iget-object v12, v8, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    .line 234
    .line 235
    if-ne v12, v9, :cond_8

    .line 236
    .line 237
    move v4, v2

    .line 238
    :cond_8
    invoke-static {v11, v0, v4}, Landroid/app/servertransaction/NewIntentItem;->obtain(Landroid/os/IBinder;Ljava/util/List;Z)Landroid/app/servertransaction/NewIntentItem;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    invoke-virtual {v6, v10, v0}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransactionItem(Landroid/app/IApplicationThread;Landroid/app/servertransaction/ClientTransactionItem;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 243
    .line 244
    .line 245
    goto :goto_a

    .line 246
    :catch_1
    move-exception v0

    .line 247
    goto :goto_7

    .line 248
    :catch_2
    move-exception v0

    .line 249
    goto :goto_8

    .line 250
    :goto_7
    new-instance v4, Ljava/lang/StringBuilder;

    .line 251
    .line 252
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v4

    .line 262
    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 263
    .line 264
    .line 265
    goto :goto_9

    .line 266
    :goto_8
    new-instance v4, Ljava/lang/StringBuilder;

    .line 267
    .line 268
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v4

    .line 278
    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 279
    .line 280
    .line 281
    :cond_9
    :goto_9
    iget-object v0, v8, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 282
    .line 283
    if-nez v0, :cond_a

    .line 284
    .line 285
    new-instance v0, Ljava/util/ArrayList;

    .line 286
    .line 287
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 288
    .line 289
    .line 290
    iput-object v0, v8, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 291
    .line 292
    :cond_a
    iget-object v0, v8, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 293
    .line 294
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    .line 296
    .line 297
    :goto_a
    iput-boolean v2, v1, Lcom/android/server/wm/ActivityStarter;->mIntentDelivered:Z

    .line 298
    .line 299
    return-void
.end method

.method public final deliverToCurrentTopIfNeeded(Lcom/android/server/wm/Task;Lcom/android/server/uri/NeededUriGrants;)I
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mNotTop:Lcom/android/server/wm/ActivityRecord;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/android/server/wm/Task;->topRunningNonDelayedActivityLocked(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_7

    .line 9
    .line 10
    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 11
    .line 12
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 13
    .line 14
    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 15
    .line 16
    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_7

    .line 21
    .line 22
    iget v2, v0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 23
    .line 24
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 25
    .line 26
    iget v3, v3, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 27
    .line 28
    if-ne v2, v3, :cond_7

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_7

    .line 35
    .line 36
    iget v2, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 37
    .line 38
    const/high16 v3, 0x20000000

    .line 39
    .line 40
    and-int/2addr v2, v3

    .line 41
    const/4 v3, 0x1

    .line 42
    if-nez v2, :cond_0

    .line 43
    .line 44
    iget v2, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    .line 45
    .line 46
    if-ne v3, v2, :cond_7

    .line 47
    .line 48
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_1

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 59
    .line 60
    if-ne v2, v4, :cond_7

    .line 61
    .line 62
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 63
    .line 64
    if-eqz v2, :cond_3

    .line 65
    .line 66
    iget-boolean v4, v2, Lcom/android/server/wm/ActivityRecord;->mIsAliasActivity:Z

    .line 67
    .line 68
    if-eqz v4, :cond_3

    .line 69
    .line 70
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    if-ne v2, v4, :cond_2

    .line 79
    .line 80
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 81
    .line 82
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    if-eqz v2, :cond_3

    .line 87
    .line 88
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 89
    .line 90
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getStageType()I

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getStageType()I

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    if-eq v2, v4, :cond_3

    .line 107
    .line 108
    :cond_2
    return v1

    .line 109
    :cond_3
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->clearLastPausedActivity()V

    .line 114
    .line 115
    .line 116
    iget-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    .line 117
    .line 118
    if-eqz v2, :cond_4

    .line 119
    .line 120
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 121
    .line 122
    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()V

    .line 123
    .line 124
    .line 125
    :cond_4
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 126
    .line 127
    invoke-static {v2}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 128
    .line 129
    .line 130
    iget v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    .line 131
    .line 132
    and-int/2addr v2, v3

    .line 133
    if-eqz v2, :cond_5

    .line 134
    .line 135
    return v3

    .line 136
    :cond_5
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 137
    .line 138
    iget-object v3, v2, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    .line 139
    .line 140
    if-eqz v3, :cond_6

    .line 141
    .line 142
    iget-object v5, v2, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    .line 143
    .line 144
    iget v6, v2, Lcom/android/server/wm/ActivityRecord;->requestCode:I

    .line 145
    .line 146
    const/4 v9, 0x0

    .line 147
    const/4 v10, 0x0

    .line 148
    const/4 v4, -0x1

    .line 149
    const/4 v7, 0x0

    .line 150
    const/4 v8, 0x0

    .line 151
    const/4 v11, 0x0

    .line 152
    invoke-virtual/range {v3 .. v11}, Lcom/android/server/wm/ActivityRecord;->sendResult(ILjava/lang/String;IILandroid/content/Intent;Landroid/os/IBinder;Lcom/android/server/uri/NeededUriGrants;Z)V

    .line 153
    .line 154
    .line 155
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 156
    .line 157
    const/4 v3, 0x0

    .line 158
    iput-object v3, v2, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    .line 159
    .line 160
    :cond_6
    invoke-virtual {p0, v0, p2}, Lcom/android/server/wm/ActivityStarter;->deliverNewIntent(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/uri/NeededUriGrants;)V

    .line 161
    .line 162
    .line 163
    iget-object p2, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 164
    .line 165
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 166
    .line 167
    iget v0, v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    .line 168
    .line 169
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 170
    .line 171
    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 172
    .line 173
    invoke-virtual {p0, p2, v0, p1, v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/wm/Task;Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/Task;Z)V

    .line 174
    .line 175
    .line 176
    const/4 p0, 0x3

    .line 177
    return p0

    .line 178
    :cond_7
    return v1
.end method

.method public final execute()I
    .locals 30

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string/jumbo v2, "startActivity: reason="

    .line 4
    .line 5
    .line 6
    const-string v3, "[SecIpm] intent received, starting preload launch:"

    .line 7
    .line 8
    const-string v4, "Failed active Launch package : "

    .line 9
    .line 10
    const-string v5, "Active launch : App auto run is off : "

    .line 11
    .line 12
    const-string v6, "Checking for the Active launch isDataCleared :"

    .line 13
    .line 14
    const-string v7, "Checking for the Active launch isPkgEverLaunched :"

    .line 15
    .line 16
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->onExecutionStarted()V

    .line 17
    .line 18
    .line 19
    iget-object v8, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 20
    .line 21
    iget-object v8, v8, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 22
    .line 23
    const/4 v9, 0x1

    .line 24
    if-eqz v8, :cond_1

    .line 25
    .line 26
    invoke-virtual {v8}, Landroid/content/Intent;->hasFileDescriptors()Z

    .line 27
    .line 28
    .line 29
    move-result v8

    .line 30
    if-nez v8, :cond_0

    .line 31
    .line 32
    iget-object v8, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 33
    .line 34
    iget-object v8, v8, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 35
    .line 36
    invoke-virtual {v8, v9}, Landroid/content/Intent;->removeExtendedFlags(I)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception v0

    .line 41
    move-object v2, v0

    .line 42
    goto/16 :goto_18

    .line 43
    .line 44
    :catch_0
    move-exception v0

    .line 45
    move-object v2, v0

    .line 46
    goto/16 :goto_19

    .line 47
    .line 48
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 49
    .line 50
    const-string v3, "File descriptors passed in Intent"

    .line 51
    .line 52
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw v2

    .line 56
    :cond_1
    :goto_0
    iget-object v8, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 57
    .line 58
    iget-object v8, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 59
    .line 60
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 61
    .line 62
    .line 63
    monitor-enter v8
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    :try_start_1
    iget-object v10, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 65
    .line 66
    iget-object v10, v10, Lcom/android/server/wm/ActivityStarter$Request;->resultTo:Landroid/os/IBinder;

    .line 67
    .line 68
    invoke-static {v10}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    .line 69
    .line 70
    .line 71
    move-result-object v10

    .line 72
    iget-object v11, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 73
    .line 74
    iget v11, v11, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    .line 75
    .line 76
    const/4 v12, -0x1

    .line 77
    if-ne v11, v12, :cond_2

    .line 78
    .line 79
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 80
    .line 81
    .line 82
    move-result v11

    .line 83
    goto :goto_1

    .line 84
    :catchall_1
    move-exception v0

    .line 85
    move-object v2, v0

    .line 86
    goto/16 :goto_17

    .line 87
    .line 88
    :cond_2
    :goto_1
    iget-object v13, v1, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 89
    .line 90
    iget-object v13, v13, Lcom/android/server/wm/ActivityTaskSupervisor;->mActivityMetricsLogger:Lcom/android/server/wm/ActivityMetricsLogger;

    .line 91
    .line 92
    iget-object v14, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 93
    .line 94
    iget-object v14, v14, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 95
    .line 96
    invoke-virtual {v13, v14, v10, v11}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunching(Landroid/content/Intent;Lcom/android/server/wm/ActivityRecord;I)Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;

    .line 97
    .line 98
    .line 99
    move-result-object v10

    .line 100
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 101
    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 102
    .line 103
    .line 104
    iget-object v8, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 105
    .line 106
    iget-object v11, v8, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 107
    .line 108
    if-eqz v11, :cond_4

    .line 109
    .line 110
    iget-boolean v14, v8, Lcom/android/server/wm/ActivityStarter$Request;->componentSpecified:Z

    .line 111
    .line 112
    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 113
    .line 114
    .line 115
    move-result-object v11

    .line 116
    if-eqz v11, :cond_3

    .line 117
    .line 118
    move v11, v9

    .line 119
    goto :goto_2

    .line 120
    :cond_3
    const/4 v11, 0x0

    .line 121
    :goto_2
    or-int/2addr v11, v14

    .line 122
    iput-boolean v11, v8, Lcom/android/server/wm/ActivityStarter$Request;->componentSpecified:Z

    .line 123
    .line 124
    :cond_4
    iget-object v8, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 125
    .line 126
    iget-object v11, v8, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 127
    .line 128
    if-nez v11, :cond_5

    .line 129
    .line 130
    iget-object v11, v1, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 131
    .line 132
    invoke-virtual {v8, v11}, Lcom/android/server/wm/ActivityStarter$Request;->resolveActivity(Lcom/android/server/wm/ActivityTaskSupervisor;)V

    .line 133
    .line 134
    .line 135
    :cond_5
    iget-object v8, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 136
    .line 137
    iget-object v8, v8, Lcom/android/server/wm/ActivityStarter$Request;->activityOptions:Lcom/android/server/wm/SafeActivityOptions;

    .line 138
    .line 139
    const/4 v11, 0x0

    .line 140
    if-eqz v8, :cond_6

    .line 141
    .line 142
    iget-object v14, v1, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 143
    .line 144
    invoke-virtual {v8, v11, v11, v11, v14}, Lcom/android/server/wm/SafeActivityOptions;->getOptions(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityTaskSupervisor;)Landroid/app/ActivityOptions;

    .line 145
    .line 146
    .line 147
    move-result-object v8

    .line 148
    goto :goto_3

    .line 149
    :cond_6
    move-object v8, v11

    .line 150
    :goto_3
    if-eqz v8, :cond_f

    .line 151
    .line 152
    invoke-virtual {v8}, Landroid/app/ActivityOptions;->isActiveApplaunch()Z

    .line 153
    .line 154
    .line 155
    move-result v15

    .line 156
    if-eqz v15, :cond_f

    .line 157
    .line 158
    iget-object v15, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 159
    .line 160
    iget-object v15, v15, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 161
    .line 162
    if-eqz v15, :cond_f

    .line 163
    .line 164
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 165
    .line 166
    .line 167
    move-result-wide v2

    .line 168
    iget-object v10, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 169
    .line 170
    iget-object v11, v10, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 171
    .line 172
    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 173
    .line 174
    iget v10, v10, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    .line 175
    .line 176
    const-class v15, Landroid/content/pm/PackageManagerInternal;

    .line 177
    .line 178
    invoke-static {v15}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v15

    .line 182
    check-cast v15, Landroid/content/pm/PackageManagerInternal;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 183
    .line 184
    if-eqz v15, :cond_8

    .line 185
    .line 186
    :try_start_3
    invoke-virtual {v15, v10, v11}, Landroid/content/pm/PackageManagerInternal;->wasPackageEverLaunched(ILjava/lang/String;)Z

    .line 187
    .line 188
    .line 189
    move-result v14

    .line 190
    invoke-virtual {v15, v10, v11}, Landroid/content/pm/PackageManagerInternal;->wasPackageStopped(ILjava/lang/String;)Z

    .line 191
    .line 192
    .line 193
    move-result v12

    .line 194
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    .line 195
    .line 196
    .line 197
    move-result v9

    .line 198
    invoke-virtual {v15, v9, v11}, Landroid/content/pm/PackageManagerInternal;->isPackageSuspended(ILjava/lang/String;)Z

    .line 199
    .line 200
    .line 201
    move-result v9

    .line 202
    if-eqz v14, :cond_7

    .line 203
    .line 204
    if-nez v12, :cond_7

    .line 205
    .line 206
    if-eqz v9, :cond_8

    .line 207
    .line 208
    :cond_7
    const-string v15, "ActivityTaskManager"

    .line 209
    .line 210
    new-instance v13, Ljava/lang/StringBuilder;

    .line 211
    .line 212
    invoke-direct {v13, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    const-string v7, ", isPkgStopped : "

    .line 219
    .line 220
    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    const-string v7, ", isPkgSuspended : "

    .line 227
    .line 228
    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v7

    .line 238
    invoke-static {v15, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 239
    .line 240
    .line 241
    const/16 v7, -0x60

    .line 242
    .line 243
    goto :goto_4

    .line 244
    :catch_1
    move-exception v0

    .line 245
    move-object v5, v0

    .line 246
    const/4 v7, 0x0

    .line 247
    goto :goto_7

    .line 248
    :cond_8
    const/4 v7, 0x0

    .line 249
    :goto_4
    :try_start_4
    iget-object v9, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 250
    .line 251
    iget-object v9, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 252
    .line 253
    invoke-virtual {v9, v11, v10}, Landroid/app/ActivityManagerInternal;->getIsDataClearedInAms(Ljava/lang/String;I)Z

    .line 254
    .line 255
    .line 256
    move-result v9

    .line 257
    if-eqz v9, :cond_9

    .line 258
    .line 259
    const-string v10, "ActivityTaskManager"

    .line 260
    .line 261
    new-instance v12, Ljava/lang/StringBuilder;

    .line 262
    .line 263
    invoke-direct {v12, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v6

    .line 273
    invoke-static {v10, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    .line 275
    .line 276
    const/16 v7, -0x60

    .line 277
    .line 278
    goto :goto_5

    .line 279
    :catch_2
    move-exception v0

    .line 280
    move-object v5, v0

    .line 281
    goto :goto_7

    .line 282
    :cond_9
    :goto_5
    iget-object v6, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 283
    .line 284
    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 285
    .line 286
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 287
    .line 288
    .line 289
    move-result-object v6

    .line 290
    if-eqz v6, :cond_a

    .line 291
    .line 292
    invoke-virtual {v6, v11}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    .line 293
    .line 294
    .line 295
    move-result v6

    .line 296
    goto :goto_6

    .line 297
    :cond_a
    const/4 v6, 0x0

    .line 298
    :goto_6
    const/4 v9, 0x4

    .line 299
    if-ne v6, v9, :cond_b

    .line 300
    .line 301
    const-string v6, "ActivityTaskManager"

    .line 302
    .line 303
    const-string v9, "Checking for the Active launch getApplicationEnabledSetting"

    .line 304
    .line 305
    invoke-static {v6, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    .line 307
    .line 308
    const/16 v7, -0x60

    .line 309
    .line 310
    :cond_b
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    .line 311
    .line 312
    .line 313
    move-result-object v6

    .line 314
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 315
    .line 316
    .line 317
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    .line 318
    .line 319
    .line 320
    move-result v9

    .line 321
    if-eqz v9, :cond_c

    .line 322
    .line 323
    const/4 v9, 0x0

    .line 324
    invoke-virtual {v6, v9, v11}, Lcom/android/server/am/MARsPolicyManager;->isAutoRunOn(ILjava/lang/String;)Z

    .line 325
    .line 326
    .line 327
    move-result v6

    .line 328
    if-nez v6, :cond_c

    .line 329
    .line 330
    const-string v6, "ActivityTaskManager"

    .line 331
    .line 332
    new-instance v9, Ljava/lang/StringBuilder;

    .line 333
    .line 334
    invoke-direct {v9, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    .line 339
    .line 340
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v5

    .line 344
    invoke-static {v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 345
    .line 346
    .line 347
    const/16 v7, -0x60

    .line 348
    .line 349
    goto :goto_8

    .line 350
    :goto_7
    :try_start_5
    const-string v6, "ActivityTaskManager"

    .line 351
    .line 352
    new-instance v9, Ljava/lang/StringBuilder;

    .line 353
    .line 354
    invoke-direct {v9, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    const-string v4, ": "

    .line 361
    .line 362
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v4

    .line 372
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 373
    .line 374
    .line 375
    :cond_c
    :goto_8
    :try_start_6
    iget-object v4, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 376
    .line 377
    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 378
    .line 379
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 380
    .line 381
    .line 382
    monitor-enter v4
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 383
    :try_start_7
    const-string v5, "ActivityTaskManager"

    .line 384
    .line 385
    const-string/jumbo v6, "request preloading for newly launching app"

    .line 386
    .line 387
    .line 388
    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    .line 390
    .line 391
    iget-object v5, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 392
    .line 393
    iget-object v6, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    .line 394
    .line 395
    iget-object v9, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 396
    .line 397
    iget-object v10, v9, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 398
    .line 399
    iget v9, v9, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    .line 400
    .line 401
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    .line 402
    .line 403
    .line 404
    move-result-object v5

    .line 405
    invoke-virtual {v6, v10, v9, v5}, Lcom/android/server/wm/TaskOrganizerController;->preloadSplashScreenAppIcon(Landroid/content/pm/ActivityInfo;ILandroid/content/res/Configuration;)V

    .line 406
    .line 407
    .line 408
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->FW_APPLOCK:Z

    .line 409
    .line 410
    if-eqz v5, :cond_d

    .line 411
    .line 412
    invoke-static {}, Lcom/android/internal/app/AppLockPolicy;->isSupportSSecure()Z

    .line 413
    .line 414
    .line 415
    move-result v5

    .line 416
    if-nez v5, :cond_d

    .line 417
    .line 418
    iget-object v5, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 419
    .line 420
    iget-object v6, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 421
    .line 422
    iget-object v6, v6, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 423
    .line 424
    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 425
    .line 426
    invoke-virtual {v5, v6}, Lcom/android/server/wm/ActivityTaskManagerService;->isAppLockedPackage(Ljava/lang/String;)Z

    .line 427
    .line 428
    .line 429
    move-result v5

    .line 430
    if-eqz v5, :cond_d

    .line 431
    .line 432
    const/4 v5, 0x1

    .line 433
    goto :goto_9

    .line 434
    :catchall_2
    move-exception v0

    .line 435
    move-object v5, v0

    .line 436
    goto :goto_a

    .line 437
    :cond_d
    const/4 v5, 0x0

    .line 438
    :goto_9
    if-nez v7, :cond_e

    .line 439
    .line 440
    const-string v6, "ActivityTaskManager"

    .line 441
    .line 442
    const-string/jumbo v9, "starting ActiveLaunch"

    .line 443
    .line 444
    .line 445
    invoke-static {v6, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    .line 447
    .line 448
    iget-object v6, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 449
    .line 450
    iget-object v9, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 451
    .line 452
    iget-object v9, v9, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 453
    .line 454
    iget-object v10, v9, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 455
    .line 456
    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 457
    .line 458
    const-string v26, "activelaunch"

    .line 459
    .line 460
    new-instance v11, Landroid/content/ComponentName;

    .line 461
    .line 462
    iget-object v12, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 463
    .line 464
    iget-object v12, v12, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 465
    .line 466
    iget-object v13, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 467
    .line 468
    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 469
    .line 470
    invoke-direct {v11, v13, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    .line 472
    .line 473
    const/4 v12, 0x1

    .line 474
    xor-int/2addr v5, v12

    .line 475
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 476
    .line 477
    .line 478
    new-instance v20, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda27;

    .line 479
    .line 480
    invoke-direct/range {v20 .. v20}, Ljava/lang/Object;-><init>()V

    .line 481
    .line 482
    .line 483
    iget-object v12, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 484
    .line 485
    sget-object v25, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 486
    .line 487
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 488
    .line 489
    .line 490
    move-result-object v28

    .line 491
    const/4 v5, -0x1

    .line 492
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 493
    .line 494
    .line 495
    move-result-object v29

    .line 496
    move-object/from16 v21, v12

    .line 497
    .line 498
    move-object/from16 v22, v10

    .line 499
    .line 500
    move-object/from16 v23, v9

    .line 501
    .line 502
    move-object/from16 v24, v25

    .line 503
    .line 504
    move-object/from16 v27, v11

    .line 505
    .line 506
    invoke-static/range {v20 .. v29}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/NonaConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 507
    .line 508
    .line 509
    move-result-object v5

    .line 510
    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 511
    .line 512
    invoke-virtual {v6, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 513
    .line 514
    .line 515
    const/4 v7, 0x0

    .line 516
    :cond_e
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 517
    :try_start_8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 518
    .line 519
    .line 520
    const/4 v4, 0x0

    .line 521
    :try_start_9
    invoke-virtual {v8, v4}, Landroid/app/ActivityOptions;->setActiveApplaunch(Z)V

    .line 522
    .line 523
    .line 524
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 525
    .line 526
    .line 527
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->onExecutionComplete()V

    .line 528
    .line 529
    .line 530
    return v7

    .line 531
    :catchall_3
    const/4 v4, 0x0

    .line 532
    goto :goto_c

    .line 533
    :catch_3
    move-exception v0

    .line 534
    move-object v4, v0

    .line 535
    goto :goto_b

    .line 536
    :goto_a
    :try_start_a
    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 537
    :try_start_b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 538
    .line 539
    .line 540
    throw v5
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 541
    :goto_b
    :try_start_c
    const-string v5, "ActivityTaskManager"

    .line 542
    .line 543
    new-instance v6, Ljava/lang/StringBuilder;

    .line 544
    .line 545
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 546
    .line 547
    .line 548
    const-string v9, "ActiveLaunching Fail, "

    .line 549
    .line 550
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    .line 552
    .line 553
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 554
    .line 555
    .line 556
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 557
    .line 558
    .line 559
    move-result-object v4

    .line 560
    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 561
    .line 562
    .line 563
    const/4 v4, 0x0

    .line 564
    :try_start_d
    invoke-virtual {v8, v4}, Landroid/app/ActivityOptions;->setActiveApplaunch(Z)V

    .line 565
    .line 566
    .line 567
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 568
    .line 569
    .line 570
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->onExecutionComplete()V

    .line 571
    .line 572
    .line 573
    const/16 v1, -0x60

    .line 574
    .line 575
    return v1

    .line 576
    :goto_c
    :try_start_e
    invoke-virtual {v8, v4}, Landroid/app/ActivityOptions;->setActiveApplaunch(Z)V

    .line 577
    .line 578
    .line 579
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 580
    .line 581
    .line 582
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->onExecutionComplete()V

    .line 583
    .line 584
    .line 585
    return v7

    .line 586
    :cond_f
    if-eqz v8, :cond_10

    .line 587
    .line 588
    :try_start_f
    invoke-virtual {v8}, Landroid/app/ActivityOptions;->isMlLaunch()I

    .line 589
    .line 590
    .line 591
    move-result v4

    .line 592
    const/4 v5, -0x1

    .line 593
    if-le v4, v5, :cond_10

    .line 594
    .line 595
    iget-object v4, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 596
    .line 597
    iget-object v4, v4, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 598
    .line 599
    if-eqz v4, :cond_10

    .line 600
    .line 601
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 602
    .line 603
    .line 604
    move-result-wide v4
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 605
    :try_start_10
    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 606
    .line 607
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 608
    .line 609
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 610
    .line 611
    .line 612
    monitor-enter v2
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_4
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 613
    :try_start_11
    const-string v6, "ActivityTaskManager"

    .line 614
    .line 615
    new-instance v7, Ljava/lang/StringBuilder;

    .line 616
    .line 617
    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 618
    .line 619
    .line 620
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 621
    .line 622
    iget-object v3, v3, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 623
    .line 624
    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 625
    .line 626
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 627
    .line 628
    .line 629
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 630
    .line 631
    .line 632
    move-result-object v3

    .line 633
    invoke-static {v6, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    .line 635
    .line 636
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 637
    .line 638
    iget-object v6, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 639
    .line 640
    iget-object v6, v6, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 641
    .line 642
    iget-object v7, v6, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 643
    .line 644
    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 645
    .line 646
    const-string v26, "IpmLaunch"

    .line 647
    .line 648
    new-instance v9, Landroid/content/ComponentName;

    .line 649
    .line 650
    iget-object v10, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 651
    .line 652
    iget-object v10, v10, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 653
    .line 654
    iget-object v11, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 655
    .line 656
    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 657
    .line 658
    invoke-direct {v9, v11, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    .line 660
    .line 661
    invoke-virtual {v8}, Landroid/app/ActivityOptions;->isMlLaunch()I

    .line 662
    .line 663
    .line 664
    move-result v10

    .line 665
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 666
    .line 667
    .line 668
    new-instance v20, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda27;

    .line 669
    .line 670
    invoke-direct/range {v20 .. v20}, Ljava/lang/Object;-><init>()V

    .line 671
    .line 672
    .line 673
    iget-object v11, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 674
    .line 675
    sget-object v28, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 676
    .line 677
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 678
    .line 679
    .line 680
    move-result-object v29

    .line 681
    move-object/from16 v21, v11

    .line 682
    .line 683
    move-object/from16 v22, v7

    .line 684
    .line 685
    move-object/from16 v23, v6

    .line 686
    .line 687
    move-object/from16 v24, v28

    .line 688
    .line 689
    move-object/from16 v25, v28

    .line 690
    .line 691
    move-object/from16 v27, v9

    .line 692
    .line 693
    invoke-static/range {v20 .. v29}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/NonaConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 694
    .line 695
    .line 696
    move-result-object v6

    .line 697
    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 698
    .line 699
    invoke-virtual {v3, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 700
    .line 701
    .line 702
    monitor-exit v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    .line 703
    :try_start_12
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_4
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    .line 704
    .line 705
    .line 706
    const/4 v2, -0x1

    .line 707
    :try_start_13
    invoke-virtual {v8, v2}, Landroid/app/ActivityOptions;->setMlLaunch(I)V

    .line 708
    .line 709
    .line 710
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_13
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_0
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 711
    .line 712
    .line 713
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->onExecutionComplete()V

    .line 714
    .line 715
    .line 716
    const/4 v1, 0x0

    .line 717
    return v1

    .line 718
    :catchall_4
    const/4 v2, -0x1

    .line 719
    goto :goto_e

    .line 720
    :catch_4
    move-exception v0

    .line 721
    move-object v2, v0

    .line 722
    goto :goto_d

    .line 723
    :catchall_5
    move-exception v0

    .line 724
    move-object v3, v0

    .line 725
    :try_start_14
    monitor-exit v2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    .line 726
    :try_start_15
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 727
    .line 728
    .line 729
    throw v3
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_4
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    .line 730
    :goto_d
    :try_start_16
    const-string v3, "ActivityTaskManager"

    .line 731
    .line 732
    new-instance v6, Ljava/lang/StringBuilder;

    .line 733
    .line 734
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 735
    .line 736
    .line 737
    const-string v7, "[SecIpm] Launching Fail, "

    .line 738
    .line 739
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 740
    .line 741
    .line 742
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 743
    .line 744
    .line 745
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 746
    .line 747
    .line 748
    move-result-object v2

    .line 749
    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    .line 750
    .line 751
    .line 752
    const/4 v2, -0x1

    .line 753
    :try_start_17
    invoke-virtual {v8, v2}, Landroid/app/ActivityOptions;->setMlLaunch(I)V

    .line 754
    .line 755
    .line 756
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_17
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_0
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    .line 757
    .line 758
    .line 759
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->onExecutionComplete()V

    .line 760
    .line 761
    .line 762
    const/16 v3, -0x60

    .line 763
    .line 764
    return v3

    .line 765
    :goto_e
    :try_start_18
    invoke-virtual {v8, v2}, Landroid/app/ActivityOptions;->setMlLaunch(I)V

    .line 766
    .line 767
    .line 768
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_18
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_18} :catch_0
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    .line 769
    .line 770
    .line 771
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->onExecutionComplete()V

    .line 772
    .line 773
    .line 774
    const/4 v1, 0x0

    .line 775
    return v1

    .line 776
    :cond_10
    const/16 v3, -0x60

    .line 777
    .line 778
    :try_start_19
    iget-object v4, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 779
    .line 780
    iget-object v4, v4, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 781
    .line 782
    if-eqz v4, :cond_12

    .line 783
    .line 784
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 785
    .line 786
    .line 787
    move-result-object v4

    .line 788
    iget-object v5, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 789
    .line 790
    iget-object v5, v5, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    .line 791
    .line 792
    if-eqz v4, :cond_12

    .line 793
    .line 794
    if-eqz v5, :cond_12

    .line 795
    .line 796
    const-string v6, "com.android.internal.intent.action.REQUEST_SHUTDOWN"

    .line 797
    .line 798
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 799
    .line 800
    .line 801
    move-result v6

    .line 802
    if-nez v6, :cond_11

    .line 803
    .line 804
    const-string v6, "android.intent.action.ACTION_SHUTDOWN"

    .line 805
    .line 806
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 807
    .line 808
    .line 809
    move-result v6

    .line 810
    if-nez v6, :cond_11

    .line 811
    .line 812
    const-string v6, "android.intent.action.REBOOT"

    .line 813
    .line 814
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 815
    .line 816
    .line 817
    move-result v6

    .line 818
    if-eqz v6, :cond_12

    .line 819
    .line 820
    :cond_11
    invoke-static {v4, v5}, Lcom/android/server/power/ShutdownCheckPoints;->recordCheckPoint(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    .line 822
    .line 823
    :cond_12
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    .line 824
    .line 825
    if-eqz v4, :cond_14

    .line 826
    .line 827
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->isExternalStartForSpeg()Z

    .line 828
    .line 829
    .line 830
    move-result v4
    :try_end_19
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_19} :catch_0
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    .line 831
    if-eqz v4, :cond_13

    .line 832
    .line 833
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->onExecutionComplete()V

    .line 834
    .line 835
    .line 836
    const/16 v1, 0x66

    .line 837
    .line 838
    return v1

    .line 839
    :cond_13
    :try_start_1a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->useSpegDisplayIfNeeded()V

    .line 840
    .line 841
    .line 842
    :cond_14
    iget-object v4, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 843
    .line 844
    iget-object v4, v4, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 845
    .line 846
    if-eqz v4, :cond_19

    .line 847
    .line 848
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 849
    .line 850
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 851
    .line 852
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    .line 853
    .line 854
    .line 855
    move-result v4

    .line 856
    iget-object v5, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 857
    .line 858
    iget v5, v5, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    .line 859
    .line 860
    const/4 v6, -0x1

    .line 861
    if-ne v5, v6, :cond_15

    .line 862
    .line 863
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 864
    .line 865
    .line 866
    move-result v5

    .line 867
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    .line 868
    .line 869
    .line 870
    move-result v5

    .line 871
    goto :goto_f

    .line 872
    :cond_15
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    .line 873
    .line 874
    .line 875
    move-result v5

    .line 876
    :goto_f
    if-eq v5, v4, :cond_18

    .line 877
    .line 878
    if-nez v5, :cond_16

    .line 879
    .line 880
    invoke-static {v4}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    .line 881
    .line 882
    .line 883
    move-result v6

    .line 884
    if-nez v6, :cond_17

    .line 885
    .line 886
    :cond_16
    if-nez v4, :cond_18

    .line 887
    .line 888
    invoke-static {v5}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    .line 889
    .line 890
    .line 891
    move-result v4

    .line 892
    if-eqz v4, :cond_18

    .line 893
    .line 894
    :cond_17
    iget-object v4, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 895
    .line 896
    iget-object v4, v4, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 897
    .line 898
    invoke-static {v5, v4}, Lcom/android/server/DualAppManagerService;->changeUriForDualApp(ILandroid/content/Intent;)V

    .line 899
    .line 900
    .line 901
    :cond_18
    invoke-static {}, Lcom/samsung/android/app/SemDualAppManager;->getDualAppProfileId()I

    .line 902
    .line 903
    .line 904
    move-result v4

    .line 905
    invoke-static {v4}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    .line 906
    .line 907
    .line 908
    move-result v4

    .line 909
    if-eqz v4, :cond_19

    .line 910
    .line 911
    invoke-static {v5}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    .line 912
    .line 913
    .line 914
    move-result v4

    .line 915
    if-nez v4, :cond_19

    .line 916
    .line 917
    iget-object v4, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 918
    .line 919
    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 920
    .line 921
    iget-object v4, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 922
    .line 923
    iget-object v5, v4, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 924
    .line 925
    iget v4, v4, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    .line 926
    .line 927
    invoke-static {v4, v5}, Lcom/android/server/DualAppManagerService;->recordDaUsageCount(ILandroid/content/Intent;)V

    .line 928
    .line 929
    .line 930
    :cond_19
    iget-object v4, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 931
    .line 932
    iget-object v4, v4, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 933
    .line 934
    if-eqz v4, :cond_1b

    .line 935
    .line 936
    const-string v5, "android.intent.action.DELETE"

    .line 937
    .line 938
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 939
    .line 940
    .line 941
    move-result-object v4

    .line 942
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 943
    .line 944
    .line 945
    move-result v4

    .line 946
    if-nez v4, :cond_1a

    .line 947
    .line 948
    const-string v4, "android.intent.action.UNINSTALL_PACKAGE"

    .line 949
    .line 950
    iget-object v5, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 951
    .line 952
    iget-object v5, v5, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 953
    .line 954
    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 955
    .line 956
    .line 957
    move-result-object v5

    .line 958
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 959
    .line 960
    .line 961
    move-result v4

    .line 962
    if-eqz v4, :cond_1b

    .line 963
    .line 964
    :cond_1a
    iget-object v4, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 965
    .line 966
    iget-object v5, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 967
    .line 968
    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 969
    .line 970
    iget-object v6, v4, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 971
    .line 972
    iget-object v7, v4, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 973
    .line 974
    iget v8, v4, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    .line 975
    .line 976
    iget-object v9, v4, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    .line 977
    .line 978
    invoke-static {v5, v6, v7, v8, v9}, Lcom/android/server/DualAppManagerService;->changeInfoIfDeletingDualApp(Landroid/content/Context;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;ILjava/lang/String;)Landroid/content/pm/ActivityInfo;

    .line 979
    .line 980
    .line 981
    move-result-object v5

    .line 982
    iput-object v5, v4, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 983
    .line 984
    :cond_1b
    iget-object v4, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 985
    .line 986
    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 987
    .line 988
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 989
    .line 990
    .line 991
    monitor-enter v4
    :try_end_1a
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_1a} :catch_0
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    .line 992
    :try_start_1b
    iget-object v5, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 993
    .line 994
    iget-object v5, v5, Lcom/android/server/wm/ActivityStarter$Request;->globalConfig:Landroid/content/res/Configuration;

    .line 995
    .line 996
    if-eqz v5, :cond_1c

    .line 997
    .line 998
    iget-object v5, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 999
    .line 1000
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    .line 1001
    .line 1002
    .line 1003
    move-result-object v5

    .line 1004
    iget-object v6, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 1005
    .line 1006
    iget-object v6, v6, Lcom/android/server/wm/ActivityStarter$Request;->globalConfig:Landroid/content/res/Configuration;

    .line 1007
    .line 1008
    invoke-virtual {v5, v6}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    .line 1009
    .line 1010
    .line 1011
    move-result v5

    .line 1012
    if-eqz v5, :cond_1c

    .line 1013
    .line 1014
    const/4 v5, 0x1

    .line 1015
    goto :goto_10

    .line 1016
    :catchall_6
    move-exception v0

    .line 1017
    move-object v2, v0

    .line 1018
    goto/16 :goto_16

    .line 1019
    .line 1020
    :cond_1c
    const/4 v5, 0x0

    .line 1021
    :goto_10
    iget-object v6, v1, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 1022
    .line 1023
    invoke-virtual {v6}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    .line 1024
    .line 1025
    .line 1026
    move-result-object v6

    .line 1027
    if-eqz v6, :cond_1d

    .line 1028
    .line 1029
    iput-boolean v5, v6, Lcom/android/server/wm/Task;->mConfigWillChange:Z

    .line 1030
    .line 1031
    :cond_1d
    sget-object v7, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_CONFIGURATION_enabled:[Z

    .line 1032
    .line 1033
    const/4 v8, 0x1

    .line 1034
    aget-boolean v9, v7, v8

    .line 1035
    .line 1036
    if-eqz v9, :cond_1e

    .line 1037
    .line 1038
    sget-object v12, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 1039
    .line 1040
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1041
    .line 1042
    .line 1043
    move-result-object v8

    .line 1044
    filled-new-array {v8}, [Ljava/lang/Object;

    .line 1045
    .line 1046
    .line 1047
    move-result-object v17

    .line 1048
    const/4 v15, 0x3

    .line 1049
    const/16 v16, 0x0

    .line 1050
    .line 1051
    const-wide v13, 0x171dc0871351371bL

    .line 1052
    .line 1053
    .line 1054
    .line 1055
    .line 1056
    invoke-static/range {v12 .. v17}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 1057
    .line 1058
    .line 1059
    :cond_1e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 1060
    .line 1061
    .line 1062
    move-result-wide v8
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_6

    .line 1063
    :try_start_1c
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->resolveToHeavyWeightSwitcherIfNeeded()I

    .line 1064
    .line 1065
    .line 1066
    move-result v14
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_8

    .line 1067
    if-eqz v14, :cond_1f

    .line 1068
    .line 1069
    :try_start_1d
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1070
    .line 1071
    .line 1072
    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 1073
    .line 1074
    iget-object v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->logMessage:Ljava/lang/StringBuilder;

    .line 1075
    .line 1076
    const-string v3, " result code="

    .line 1077
    .line 1078
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1079
    .line 1080
    .line 1081
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1082
    .line 1083
    .line 1084
    const-string v2, "ActivityTaskManager"

    .line 1085
    .line 1086
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 1087
    .line 1088
    iget-object v3, v3, Lcom/android/server/wm/ActivityStarter$Request;->logMessage:Ljava/lang/StringBuilder;

    .line 1089
    .line 1090
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1091
    .line 1092
    .line 1093
    move-result-object v3

    .line 1094
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    .line 1096
    .line 1097
    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 1098
    .line 1099
    iget-object v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->logMessage:Ljava/lang/StringBuilder;

    .line 1100
    .line 1101
    const/4 v3, 0x0

    .line 1102
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1103
    .line 1104
    .line 1105
    monitor-exit v4
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_6

    .line 1106
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1107
    .line 1108
    .line 1109
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->onExecutionComplete()V

    .line 1110
    .line 1111
    .line 1112
    return v14

    .line 1113
    :cond_1f
    :try_start_1e
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 1114
    .line 1115
    iget-object v3, v3, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 1116
    .line 1117
    invoke-static {v3}, Lcom/android/server/am/Pageboost;->onAppLaunch(Landroid/content/Intent;)V

    .line 1118
    .line 1119
    .line 1120
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 1121
    .line 1122
    invoke-virtual {v1, v3}, Lcom/android/server/wm/ActivityStarter;->executeRequest(Lcom/android/server/wm/ActivityStarter$Request;)I

    .line 1123
    .line 1124
    .line 1125
    move-result v14

    .line 1126
    invoke-static {}, Lcom/android/server/am/Pageboost;->stopActiveLaunch()V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_7

    .line 1127
    .line 1128
    .line 1129
    :try_start_1f
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1130
    .line 1131
    .line 1132
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 1133
    .line 1134
    iget-object v3, v3, Lcom/android/server/wm/ActivityStarter$Request;->logMessage:Ljava/lang/StringBuilder;

    .line 1135
    .line 1136
    const-string v8, " result code="

    .line 1137
    .line 1138
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1139
    .line 1140
    .line 1141
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1142
    .line 1143
    .line 1144
    const-string v3, "ActivityTaskManager"

    .line 1145
    .line 1146
    iget-object v8, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 1147
    .line 1148
    iget-object v8, v8, Lcom/android/server/wm/ActivityStarter$Request;->logMessage:Ljava/lang/StringBuilder;

    .line 1149
    .line 1150
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1151
    .line 1152
    .line 1153
    move-result-object v8

    .line 1154
    invoke-static {v3, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    .line 1156
    .line 1157
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 1158
    .line 1159
    iget-object v3, v3, Lcom/android/server/wm/ActivityStarter$Request;->logMessage:Ljava/lang/StringBuilder;

    .line 1160
    .line 1161
    const/4 v8, 0x0

    .line 1162
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1163
    .line 1164
    .line 1165
    if-eqz v5, :cond_22

    .line 1166
    .line 1167
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1168
    .line 1169
    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 1170
    .line 1171
    const-string v5, "android.permission.CHANGE_CONFIGURATION"

    .line 1172
    .line 1173
    const-string/jumbo v8, "updateConfiguration()"

    .line 1174
    .line 1175
    .line 1176
    invoke-virtual {v3, v5, v8}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1177
    .line 1178
    .line 1179
    if-eqz v6, :cond_20

    .line 1180
    .line 1181
    const/4 v3, 0x0

    .line 1182
    iput-boolean v3, v6, Lcom/android/server/wm/Task;->mConfigWillChange:Z

    .line 1183
    .line 1184
    :cond_20
    const/4 v3, 0x1

    .line 1185
    aget-boolean v5, v7, v3

    .line 1186
    .line 1187
    if-eqz v5, :cond_21

    .line 1188
    .line 1189
    sget-object v20, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 1190
    .line 1191
    const/16 v24, 0x0

    .line 1192
    .line 1193
    const/16 v25, 0x0

    .line 1194
    .line 1195
    const-wide v21, 0x41e4c7b09dde3f7aL    # 2.7890495829452486E9

    .line 1196
    .line 1197
    .line 1198
    .line 1199
    .line 1200
    const/16 v23, 0x0

    .line 1201
    .line 1202
    invoke-static/range {v20 .. v25}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 1203
    .line 1204
    .line 1205
    :cond_21
    iget-object v5, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1206
    .line 1207
    iget-object v6, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 1208
    .line 1209
    iget-object v6, v6, Lcom/android/server/wm/ActivityStarter$Request;->globalConfig:Landroid/content/res/Configuration;

    .line 1210
    .line 1211
    const/16 v7, -0x2710

    .line 1212
    .line 1213
    const/4 v8, 0x0

    .line 1214
    invoke-virtual {v5, v6, v8, v8, v7}, Lcom/android/server/wm/ActivityTaskManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;ZZI)Z

    .line 1215
    .line 1216
    .line 1217
    goto :goto_11

    .line 1218
    :cond_22
    const/4 v3, 0x1

    .line 1219
    :goto_11
    iget-object v5, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 1220
    .line 1221
    iget-object v5, v5, Lcom/android/server/wm/ActivityStarter$Request;->activityOptions:Lcom/android/server/wm/SafeActivityOptions;

    .line 1222
    .line 1223
    if-eqz v5, :cond_23

    .line 1224
    .line 1225
    iget-object v5, v5, Lcom/android/server/wm/SafeActivityOptions;->mOriginalOptions:Landroid/app/ActivityOptions;

    .line 1226
    .line 1227
    move-object/from16 v20, v5

    .line 1228
    .line 1229
    goto :goto_12

    .line 1230
    :cond_23
    move-object/from16 v20, v11

    .line 1231
    .line 1232
    :goto_12
    iget-boolean v5, v1, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    .line 1233
    .line 1234
    if-eqz v5, :cond_24

    .line 1235
    .line 1236
    iget-object v5, v1, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 1237
    .line 1238
    goto :goto_13

    .line 1239
    :cond_24
    move-object v5, v11

    .line 1240
    :goto_13
    iget-object v6, v1, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1241
    .line 1242
    if-ne v6, v5, :cond_25

    .line 1243
    .line 1244
    move/from16 v18, v3

    .line 1245
    .line 1246
    goto :goto_14

    .line 1247
    :cond_25
    const/16 v18, 0x0

    .line 1248
    .line 1249
    :goto_14
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 1250
    .line 1251
    iget-object v15, v3, Lcom/android/server/wm/ActivityTaskSupervisor;->mActivityMetricsLogger:Lcom/android/server/wm/ActivityMetricsLogger;

    .line 1252
    .line 1253
    move-object/from16 v16, v10

    .line 1254
    .line 1255
    move/from16 v17, v14

    .line 1256
    .line 1257
    move-object/from16 v19, v5

    .line 1258
    .line 1259
    invoke-virtual/range {v15 .. v20}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunched(Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;IZLcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)V

    .line 1260
    .line 1261
    .line 1262
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 1263
    .line 1264
    iget-object v3, v3, Lcom/android/server/wm/ActivityStarter$Request;->waitResult:Landroid/app/WaitResult;

    .line 1265
    .line 1266
    if-eqz v3, :cond_26

    .line 1267
    .line 1268
    iput v14, v3, Landroid/app/WaitResult;->result:I

    .line 1269
    .line 1270
    iget-object v5, v1, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 1271
    .line 1272
    invoke-virtual {v1, v3, v5, v10}, Lcom/android/server/wm/ActivityStarter;->waitResultIfNeeded(Landroid/app/WaitResult;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;)I

    .line 1273
    .line 1274
    .line 1275
    move-result v14

    .line 1276
    :cond_26
    invoke-static {v14}, Lcom/android/server/wm/ActivityStarter;->shouldWriteStartActivityDebugLog(I)Z

    .line 1277
    .line 1278
    .line 1279
    move-result v3

    .line 1280
    if-eqz v3, :cond_27

    .line 1281
    .line 1282
    const-string v3, "ActivityTaskManager"

    .line 1283
    .line 1284
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1285
    .line 1286
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1287
    .line 1288
    .line 1289
    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 1290
    .line 1291
    iget-object v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->reason:Ljava/lang/String;

    .line 1292
    .line 1293
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1294
    .line 1295
    .line 1296
    const-string v2, ", result="

    .line 1297
    .line 1298
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1299
    .line 1300
    .line 1301
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1302
    .line 1303
    .line 1304
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1305
    .line 1306
    .line 1307
    move-result-object v2

    .line 1308
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    .line 1310
    .line 1311
    :cond_27
    invoke-static {v14}, Lcom/android/server/wm/ActivityStarter;->getExternalResult(I)I

    .line 1312
    .line 1313
    .line 1314
    move-result v2

    .line 1315
    monitor-exit v4
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_6

    .line 1316
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1317
    .line 1318
    .line 1319
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->onExecutionComplete()V

    .line 1320
    .line 1321
    .line 1322
    return v2

    .line 1323
    :catchall_7
    move-exception v0

    .line 1324
    move-object v2, v0

    .line 1325
    goto :goto_15

    .line 1326
    :catchall_8
    move-exception v0

    .line 1327
    move-object v2, v0

    .line 1328
    move v14, v3

    .line 1329
    :goto_15
    :try_start_20
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1330
    .line 1331
    .line 1332
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 1333
    .line 1334
    iget-object v3, v3, Lcom/android/server/wm/ActivityStarter$Request;->logMessage:Ljava/lang/StringBuilder;

    .line 1335
    .line 1336
    const-string v5, " result code="

    .line 1337
    .line 1338
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1339
    .line 1340
    .line 1341
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1342
    .line 1343
    .line 1344
    const-string v3, "ActivityTaskManager"

    .line 1345
    .line 1346
    iget-object v5, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 1347
    .line 1348
    iget-object v5, v5, Lcom/android/server/wm/ActivityStarter$Request;->logMessage:Ljava/lang/StringBuilder;

    .line 1349
    .line 1350
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1351
    .line 1352
    .line 1353
    move-result-object v5

    .line 1354
    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    .line 1356
    .line 1357
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 1358
    .line 1359
    iget-object v3, v3, Lcom/android/server/wm/ActivityStarter$Request;->logMessage:Ljava/lang/StringBuilder;

    .line 1360
    .line 1361
    const/4 v5, 0x0

    .line 1362
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1363
    .line 1364
    .line 1365
    throw v2

    .line 1366
    :goto_16
    monitor-exit v4
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_6

    .line 1367
    :try_start_21
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1368
    .line 1369
    .line 1370
    throw v2
    :try_end_21
    .catch Ljava/lang/RuntimeException; {:try_start_21 .. :try_end_21} :catch_0
    .catchall {:try_start_21 .. :try_end_21} :catchall_0

    .line 1371
    :goto_17
    :try_start_22
    monitor-exit v8
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_1

    .line 1372
    :try_start_23
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1373
    .line 1374
    .line 1375
    throw v2
    :try_end_23
    .catch Ljava/lang/RuntimeException; {:try_start_23 .. :try_end_23} :catch_0
    .catchall {:try_start_23 .. :try_end_23} :catchall_0

    .line 1376
    :goto_18
    :try_start_24
    const-string v3, "ActivityTaskManager"

    .line 1377
    .line 1378
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1379
    .line 1380
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1381
    .line 1382
    .line 1383
    const-string/jumbo v5, "startActivity: reason="

    .line 1384
    .line 1385
    .line 1386
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1387
    .line 1388
    .line 1389
    iget-object v5, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 1390
    .line 1391
    iget-object v5, v5, Lcom/android/server/wm/ActivityStarter$Request;->reason:Ljava/lang/String;

    .line 1392
    .line 1393
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1394
    .line 1395
    .line 1396
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1397
    .line 1398
    .line 1399
    move-result-object v4

    .line 1400
    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1401
    .line 1402
    .line 1403
    throw v2

    .line 1404
    :catchall_9
    move-exception v0

    .line 1405
    move-object v2, v0

    .line 1406
    goto :goto_1a

    .line 1407
    :goto_19
    throw v2
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_9

    .line 1408
    :goto_1a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->onExecutionComplete()V

    .line 1409
    .line 1410
    .line 1411
    throw v2
.end method

.method public final executeRequest(Lcom/android/server/wm/ActivityStarter$Request;)I
    .locals 90

    .line 1
    move-object/from16 v13, p0

    .line 2
    .line 3
    move-object/from16 v14, p1

    .line 4
    .line 5
    const-string v9, "PackageArchiverService"

    .line 6
    .line 7
    const-string/jumbo v1, "unknown"

    .line 8
    .line 9
    .line 10
    iget-object v2, v14, Lcom/android/server/wm/ActivityStarter$Request;->reason:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-nez v2, :cond_7b

    .line 17
    .line 18
    iget-object v2, v14, Lcom/android/server/wm/ActivityStarter$Request;->reason:Ljava/lang/String;

    .line 19
    .line 20
    iput-object v2, v13, Lcom/android/server/wm/ActivityStarter;->mLastStartReason:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 23
    .line 24
    .line 25
    move-result-wide v2

    .line 26
    iput-wide v2, v13, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityTimeMs:J

    .line 27
    .line 28
    iget-object v2, v14, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    .line 29
    .line 30
    iget-object v7, v14, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 31
    .line 32
    iget-object v6, v14, Lcom/android/server/wm/ActivityStarter$Request;->intentGrants:Lcom/android/server/uri/NeededUriGrants;

    .line 33
    .line 34
    iget-object v5, v14, Lcom/android/server/wm/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    .line 35
    .line 36
    iget-object v4, v14, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 37
    .line 38
    iget-object v3, v14, Lcom/android/server/wm/ActivityStarter$Request;->resolveInfo:Landroid/content/pm/ResolveInfo;

    .line 39
    .line 40
    iget-object v10, v14, Lcom/android/server/wm/ActivityStarter$Request;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 41
    .line 42
    iget-object v0, v14, Lcom/android/server/wm/ActivityStarter$Request;->resultTo:Landroid/os/IBinder;

    .line 43
    .line 44
    iget-object v8, v14, Lcom/android/server/wm/ActivityStarter$Request;->resultWho:Ljava/lang/String;

    .line 45
    .line 46
    iget v11, v14, Lcom/android/server/wm/ActivityStarter$Request;->requestCode:I

    .line 47
    .line 48
    iget v12, v14, Lcom/android/server/wm/ActivityStarter$Request;->callingPid:I

    .line 49
    .line 50
    iget v15, v14, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    .line 51
    .line 52
    move-object/from16 v17, v8

    .line 53
    .line 54
    iget-object v8, v14, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    .line 55
    .line 56
    move-object/from16 v18, v8

    .line 57
    .line 58
    iget-object v8, v14, Lcom/android/server/wm/ActivityStarter$Request;->callingFeatureId:Ljava/lang/String;

    .line 59
    .line 60
    move/from16 v19, v15

    .line 61
    .line 62
    iget v15, v14, Lcom/android/server/wm/ActivityStarter$Request;->realCallingPid:I

    .line 63
    .line 64
    move-object/from16 v20, v8

    .line 65
    .line 66
    iget v8, v14, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    .line 67
    .line 68
    move-object/from16 v32, v10

    .line 69
    .line 70
    iget v10, v14, Lcom/android/server/wm/ActivityStarter$Request;->startFlags:I

    .line 71
    .line 72
    move/from16 v33, v10

    .line 73
    .line 74
    iget-object v10, v14, Lcom/android/server/wm/ActivityStarter$Request;->activityOptions:Lcom/android/server/wm/SafeActivityOptions;

    .line 75
    .line 76
    move-object/from16 v21, v9

    .line 77
    .line 78
    iget-object v9, v14, Lcom/android/server/wm/ActivityStarter$Request;->inTask:Lcom/android/server/wm/Task;

    .line 79
    .line 80
    move-object/from16 v44, v9

    .line 81
    .line 82
    iget-object v9, v14, Lcom/android/server/wm/ActivityStarter$Request;->inTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 83
    .line 84
    move-object/from16 v22, v1

    .line 85
    .line 86
    if-eqz v10, :cond_1

    .line 87
    .line 88
    iget-object v1, v10, Lcom/android/server/wm/SafeActivityOptions;->mOriginalOptions:Landroid/app/ActivityOptions;

    .line 89
    .line 90
    if-eqz v1, :cond_0

    .line 91
    .line 92
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->popAppVerificationBundle()Landroid/os/Bundle;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    goto :goto_0

    .line 97
    :cond_0
    const/4 v1, 0x0

    .line 98
    :goto_0
    move-object/from16 v45, v1

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_1
    const/16 v45, 0x0

    .line 102
    .line 103
    :goto_1
    const-string v1, "ActivityTaskManager"

    .line 104
    .line 105
    move-object/from16 v23, v3

    .line 106
    .line 107
    if-eqz v2, :cond_3

    .line 108
    .line 109
    iget-object v3, v13, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 110
    .line 111
    invoke-virtual {v3, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Landroid/app/IApplicationThread;)Lcom/android/server/wm/WindowProcessController;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    if-eqz v3, :cond_2

    .line 116
    .line 117
    iget v12, v3, Lcom/android/server/wm/WindowProcessController;->mPid:I

    .line 118
    .line 119
    iget-object v2, v3, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    .line 120
    .line 121
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 122
    .line 123
    move-object/from16 v25, v5

    .line 124
    .line 125
    move/from16 v46, v12

    .line 126
    .line 127
    move v5, v2

    .line 128
    move-object v12, v3

    .line 129
    const/4 v2, 0x0

    .line 130
    goto :goto_2

    .line 131
    :cond_2
    move-object/from16 v24, v3

    .line 132
    .line 133
    new-instance v3, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    move-object/from16 v25, v5

    .line 136
    .line 137
    const-string v5, "Unable to find app for caller "

    .line 138
    .line 139
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    const-string v2, " (pid="

    .line 146
    .line 147
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string v2, ") when starting: "

    .line 154
    .line 155
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v7}, Landroid/content/Intent;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    .line 171
    .line 172
    move/from16 v46, v12

    .line 173
    .line 174
    move/from16 v5, v19

    .line 175
    .line 176
    move-object/from16 v12, v24

    .line 177
    .line 178
    const/16 v2, -0x5e

    .line 179
    .line 180
    goto :goto_2

    .line 181
    :cond_3
    move-object/from16 v25, v5

    .line 182
    .line 183
    move/from16 v46, v12

    .line 184
    .line 185
    move/from16 v5, v19

    .line 186
    .line 187
    const/4 v2, 0x0

    .line 188
    const/4 v12, 0x0

    .line 189
    :goto_2
    const-string v3, ""

    .line 190
    .line 191
    if-nez v2, :cond_5

    .line 192
    .line 193
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    .line 194
    .line 195
    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 199
    .line 200
    .line 201
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    if-eqz v2, :cond_4

    .line 203
    .line 204
    :try_start_1
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    .line 208
    :cond_4
    move-object/from16 v19, v2

    .line 209
    .line 210
    move-object/from16 v22, v3

    .line 211
    .line 212
    move-object v3, v1

    .line 213
    goto :goto_3

    .line 214
    :catch_0
    const/4 v2, 0x0

    .line 215
    :catch_1
    move-object v3, v1

    .line 216
    move-object/from16 v19, v2

    .line 217
    .line 218
    :goto_3
    move-object/from16 v1, p0

    .line 219
    .line 220
    move-object v2, v7

    .line 221
    move-object/from16 v48, v9

    .line 222
    .line 223
    move-object/from16 v47, v23

    .line 224
    .line 225
    move-object v9, v3

    .line 226
    move-object v3, v4

    .line 227
    move-object/from16 v49, v9

    .line 228
    .line 229
    move-object v9, v4

    .line 230
    move v4, v15

    .line 231
    move/from16 v23, v11

    .line 232
    .line 233
    move-object/from16 v50, v25

    .line 234
    .line 235
    move v11, v5

    .line 236
    move-object v5, v10

    .line 237
    move-object/from16 v51, v6

    .line 238
    .line 239
    move-object/from16 v6, v19

    .line 240
    .line 241
    move-object/from16 v34, v10

    .line 242
    .line 243
    move-object v10, v7

    .line 244
    move-object/from16 v7, v22

    .line 245
    .line 246
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wm/ActivityStarter;->checkStartActivityAllowedByEDM(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;ILcom/android/server/wm/SafeActivityOptions;Landroid/content/ComponentName;Ljava/lang/String;)I

    .line 247
    .line 248
    .line 249
    move-result v2

    .line 250
    move-object/from16 v3, v22

    .line 251
    .line 252
    goto :goto_4

    .line 253
    :cond_5
    move-object/from16 v49, v1

    .line 254
    .line 255
    move-object/from16 v51, v6

    .line 256
    .line 257
    move-object/from16 v48, v9

    .line 258
    .line 259
    move-object/from16 v34, v10

    .line 260
    .line 261
    move-object/from16 v47, v23

    .line 262
    .line 263
    move-object/from16 v50, v25

    .line 264
    .line 265
    move-object v9, v4

    .line 266
    move-object v10, v7

    .line 267
    move/from16 v23, v11

    .line 268
    .line 269
    move v11, v5

    .line 270
    :goto_4
    if-eqz v9, :cond_6

    .line 271
    .line 272
    iget-object v1, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 273
    .line 274
    if-eqz v1, :cond_6

    .line 275
    .line 276
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 277
    .line 278
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 279
    .line 280
    .line 281
    move-result v1

    .line 282
    move v7, v1

    .line 283
    goto :goto_5

    .line 284
    :cond_6
    const/4 v7, 0x0

    .line 285
    :goto_5
    if-eqz v9, :cond_7

    .line 286
    .line 287
    iget v1, v9, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 288
    .line 289
    goto :goto_6

    .line 290
    :cond_7
    const/4 v1, 0x0

    .line 291
    :goto_6
    const-string v4, ")"

    .line 292
    .line 293
    if-nez v2, :cond_e

    .line 294
    .line 295
    iget-object v5, v14, Lcom/android/server/wm/ActivityStarter$Request;->logMessage:Ljava/lang/StringBuilder;

    .line 296
    .line 297
    const-string v6, "START u"

    .line 298
    .line 299
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    const-string v6, " {"

    .line 306
    .line 307
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    move-object/from16 v52, v3

    .line 311
    .line 312
    move/from16 v65, v7

    .line 313
    .line 314
    const/4 v3, 0x1

    .line 315
    const/4 v6, 0x0

    .line 316
    invoke-virtual {v10, v3, v3, v3, v6}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v7

    .line 320
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    const-string/jumbo v3, "} with "

    .line 324
    .line 325
    .line 326
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    invoke-static {v1}, Landroid/content/pm/ActivityInfo;->launchModeToString(I)Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v1

    .line 333
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    const-string v1, " from uid "

    .line 337
    .line 338
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    if-eq v11, v8, :cond_8

    .line 345
    .line 346
    const/4 v1, -0x1

    .line 347
    if-eq v8, v1, :cond_8

    .line 348
    .line 349
    iget-object v1, v14, Lcom/android/server/wm/ActivityStarter$Request;->logMessage:Ljava/lang/StringBuilder;

    .line 350
    .line 351
    const-string v3, " (realCallingUid="

    .line 352
    .line 353
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    .line 361
    .line 362
    :cond_8
    const-string v1, "knoxmtd.analysis.features"

    .line 363
    .line 364
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v1

    .line 368
    if-eqz v1, :cond_f

    .line 369
    .line 370
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 371
    .line 372
    .line 373
    move-result v3

    .line 374
    if-nez v3, :cond_f

    .line 375
    .line 376
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 377
    .line 378
    .line 379
    move-result v1

    .line 380
    const/4 v3, 0x1

    .line 381
    and-int/2addr v1, v3

    .line 382
    if-ne v1, v3, :cond_f

    .line 383
    .line 384
    invoke-virtual {v10}, Landroid/content/Intent;->isWebIntent()Z

    .line 385
    .line 386
    .line 387
    move-result v1

    .line 388
    if-eqz v1, :cond_f

    .line 389
    .line 390
    const-string v1, "SKIP_KFBP_CHECK"

    .line 391
    .line 392
    invoke-virtual {v10, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 393
    .line 394
    .line 395
    move-result v1

    .line 396
    if-eqz v1, :cond_f

    .line 397
    .line 398
    sget-object v1, Lcom/android/server/wm/ActivityStarter;->mtdManager:Lcom/samsung/android/knox/mtd/KMTDManager;

    .line 399
    .line 400
    if-nez v1, :cond_9

    .line 401
    .line 402
    iget-object v1, v13, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 403
    .line 404
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 405
    .line 406
    const-string v3, "knox.mtd"

    .line 407
    .line 408
    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 409
    .line 410
    .line 411
    move-result-object v1

    .line 412
    check-cast v1, Lcom/samsung/android/knox/mtd/KMTDManager;

    .line 413
    .line 414
    sput-object v1, Lcom/android/server/wm/ActivityStarter;->mtdManager:Lcom/samsung/android/knox/mtd/KMTDManager;

    .line 415
    .line 416
    :cond_9
    invoke-virtual {v10}, Landroid/content/Intent;->isWebIntent()Z

    .line 417
    .line 418
    .line 419
    move-result v1

    .line 420
    if-eqz v1, :cond_c

    .line 421
    .line 422
    if-nez v12, :cond_a

    .line 423
    .line 424
    if-lez v15, :cond_a

    .line 425
    .line 426
    iget-object v1, v13, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 427
    .line 428
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    .line 429
    .line 430
    invoke-virtual {v1, v15}, Lcom/android/server/wm/WindowProcessControllerMap;->getProcess(I)Lcom/android/server/wm/WindowProcessController;

    .line 431
    .line 432
    .line 433
    move-result-object v1

    .line 434
    if-eqz v1, :cond_a

    .line 435
    .line 436
    goto :goto_7

    .line 437
    :cond_a
    move-object v1, v12

    .line 438
    :goto_7
    if-eqz v1, :cond_b

    .line 439
    .line 440
    iget-object v1, v1, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    .line 441
    .line 442
    goto :goto_8

    .line 443
    :cond_b
    move-object/from16 v1, v18

    .line 444
    .line 445
    goto :goto_8

    .line 446
    :cond_c
    iget-object v1, v14, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 447
    .line 448
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 449
    .line 450
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 451
    .line 452
    :goto_8
    invoke-virtual {v10}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    .line 453
    .line 454
    .line 455
    move-result-object v3

    .line 456
    const-string v5, "[Reactive] Validating url for "

    .line 457
    .line 458
    const-string v6, "ActivityTaskManager[KnoxAIMTD]"

    .line 459
    .line 460
    invoke-static {v5, v1, v6}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    .line 462
    .line 463
    sget-object v5, Lcom/android/server/wm/ActivityStarter;->prevReactiveUrl:Ljava/lang/String;

    .line 464
    .line 465
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 466
    .line 467
    .line 468
    move-result v5

    .line 469
    if-eqz v5, :cond_d

    .line 470
    .line 471
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 472
    .line 473
    .line 474
    move-result-wide v24

    .line 475
    sget-wide v26, Lcom/android/server/wm/ActivityStarter;->prevReactiveTime:J

    .line 476
    .line 477
    sub-long v24, v24, v26

    .line 478
    .line 479
    sget-wide v26, Lcom/android/server/wm/ActivityStarter;->REACTIVE_COOLDOWN_TIME:J

    .line 480
    .line 481
    cmp-long v5, v24, v26

    .line 482
    .line 483
    if-gez v5, :cond_d

    .line 484
    .line 485
    const-string v1, "Already analyzed the url"

    .line 486
    .line 487
    invoke-static {v6, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    .line 489
    .line 490
    goto :goto_9

    .line 491
    :cond_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 492
    .line 493
    .line 494
    move-result-wide v5

    .line 495
    sput-wide v5, Lcom/android/server/wm/ActivityStarter;->prevReactiveTime:J

    .line 496
    .line 497
    sput-object v3, Lcom/android/server/wm/ActivityStarter;->prevReactiveUrl:Ljava/lang/String;

    .line 498
    .line 499
    sget-object v5, Lcom/android/server/wm/ActivityStarter;->mtdManager:Lcom/samsung/android/knox/mtd/KMTDManager;

    .line 500
    .line 501
    invoke-virtual {v5, v3, v1, v10, v8}, Lcom/samsung/android/knox/mtd/KMTDManager;->analyzeUrl(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V

    .line 502
    .line 503
    .line 504
    goto :goto_9

    .line 505
    :cond_e
    move-object/from16 v52, v3

    .line 506
    .line 507
    move/from16 v65, v7

    .line 508
    .line 509
    :cond_f
    :goto_9
    if-eqz v0, :cond_11

    .line 510
    .line 511
    invoke-static {v0}, Lcom/android/server/wm/ActivityRecord;->isInAnyTask(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    .line 512
    .line 513
    .line 514
    move-result-object v0

    .line 515
    if-eqz v0, :cond_10

    .line 516
    .line 517
    if-ltz v23, :cond_10

    .line 518
    .line 519
    iget-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 520
    .line 521
    if-nez v1, :cond_10

    .line 522
    .line 523
    move-object v7, v0

    .line 524
    goto :goto_a

    .line 525
    :cond_10
    move-object v7, v0

    .line 526
    const/4 v0, 0x0

    .line 527
    goto :goto_a

    .line 528
    :cond_11
    const/4 v0, 0x0

    .line 529
    const/4 v7, 0x0

    .line 530
    :goto_a
    invoke-virtual {v10}, Landroid/content/Intent;->getFlags()I

    .line 531
    .line 532
    .line 533
    move-result v1

    .line 534
    const/high16 v3, 0x2000000

    .line 535
    .line 536
    and-int/2addr v3, v1

    .line 537
    if-eqz v3, :cond_16

    .line 538
    .line 539
    if-eqz v7, :cond_16

    .line 540
    .line 541
    if-ltz v23, :cond_12

    .line 542
    .line 543
    invoke-static/range {v34 .. v34}, Lcom/android/server/wm/SafeActivityOptions;->abort(Lcom/android/server/wm/SafeActivityOptions;)V

    .line 544
    .line 545
    .line 546
    const/16 v0, -0x5d

    .line 547
    .line 548
    return v0

    .line 549
    :cond_12
    iget-object v0, v7, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    .line 550
    .line 551
    if-eqz v0, :cond_13

    .line 552
    .line 553
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked()Z

    .line 554
    .line 555
    .line 556
    move-result v3

    .line 557
    if-nez v3, :cond_13

    .line 558
    .line 559
    const/4 v0, 0x0

    .line 560
    :cond_13
    iget-object v3, v7, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    .line 561
    .line 562
    iget v5, v7, Lcom/android/server/wm/ActivityRecord;->requestCode:I

    .line 563
    .line 564
    const/4 v6, 0x0

    .line 565
    iput-object v6, v7, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    .line 566
    .line 567
    if-eqz v0, :cond_14

    .line 568
    .line 569
    invoke-virtual {v0, v7, v3, v5}, Lcom/android/server/wm/ActivityRecord;->removeResultsLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;I)V

    .line 570
    .line 571
    .line 572
    :cond_14
    iget v6, v7, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    .line 573
    .line 574
    if-ne v6, v11, :cond_15

    .line 575
    .line 576
    iget-object v6, v7, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    .line 577
    .line 578
    move-object/from16 v17, v0

    .line 579
    .line 580
    iget-object v0, v7, Lcom/android/server/wm/ActivityRecord;->launchedFromFeatureId:Ljava/lang/String;

    .line 581
    .line 582
    move-object/from16 v78, v3

    .line 583
    .line 584
    move/from16 v79, v5

    .line 585
    .line 586
    move-object/from16 v77, v17

    .line 587
    .line 588
    move-object v5, v0

    .line 589
    goto :goto_b

    .line 590
    :cond_15
    move-object/from16 v17, v0

    .line 591
    .line 592
    move-object/from16 v78, v3

    .line 593
    .line 594
    move/from16 v79, v5

    .line 595
    .line 596
    move-object/from16 v77, v17

    .line 597
    .line 598
    move-object/from16 v6, v18

    .line 599
    .line 600
    move-object/from16 v5, v20

    .line 601
    .line 602
    goto :goto_b

    .line 603
    :cond_16
    move-object/from16 v77, v0

    .line 604
    .line 605
    move-object/from16 v78, v17

    .line 606
    .line 607
    move-object/from16 v6, v18

    .line 608
    .line 609
    move-object/from16 v5, v20

    .line 610
    .line 611
    move/from16 v79, v23

    .line 612
    .line 613
    :goto_b
    if-nez v2, :cond_17

    .line 614
    .line 615
    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 616
    .line 617
    .line 618
    move-result-object v0

    .line 619
    if-nez v0, :cond_17

    .line 620
    .line 621
    const/16 v2, -0x5b

    .line 622
    .line 623
    :cond_17
    if-nez v2, :cond_2f

    .line 624
    .line 625
    if-nez v9, :cond_2f

    .line 626
    .line 627
    sget-object v0, Lcom/android/server/pm/PackageArchiver;->OPACITY_LAYER_FILTER:Landroid/graphics/PorterDuffColorFilter;

    .line 628
    .line 629
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->archiving()Z

    .line 630
    .line 631
    .line 632
    move-result v0

    .line 633
    if-eqz v0, :cond_2e

    .line 634
    .line 635
    iget-object v0, v13, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 636
    .line 637
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    .line 638
    .line 639
    .line 640
    move-result-object v0

    .line 641
    check-cast v0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 642
    .line 643
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 644
    .line 645
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    .line 646
    .line 647
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerService;->mPackageArchiver:Lcom/android/server/pm/PackageArchiver;

    .line 648
    .line 649
    iget-object v2, v13, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 650
    .line 651
    iget v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    .line 652
    .line 653
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 654
    .line 655
    .line 656
    invoke-virtual {v10}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    .line 657
    .line 658
    .line 659
    move-result-object v3

    .line 660
    if-eqz v3, :cond_18

    .line 661
    .line 662
    invoke-virtual {v10}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    .line 663
    .line 664
    .line 665
    move-result-object v3

    .line 666
    goto :goto_c

    .line 667
    :cond_18
    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 668
    .line 669
    .line 670
    move-result-object v3

    .line 671
    if-eqz v3, :cond_19

    .line 672
    .line 673
    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 674
    .line 675
    .line 676
    move-result-object v3

    .line 677
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 678
    .line 679
    .line 680
    move-result-object v3

    .line 681
    goto :goto_c

    .line 682
    :cond_19
    const/4 v3, 0x0

    .line 683
    :goto_c
    if-eqz v3, :cond_2e

    .line 684
    .line 685
    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 686
    .line 687
    .line 688
    move-result-object v17

    .line 689
    if-nez v17, :cond_1a

    .line 690
    .line 691
    goto/16 :goto_1a

    .line 692
    .line 693
    :cond_1a
    move-object/from16 v35, v4

    .line 694
    .line 695
    iget-object v4, v0, Lcom/android/server/pm/PackageArchiver;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 696
    .line 697
    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 698
    .line 699
    .line 700
    move-result-object v4

    .line 701
    invoke-interface {v4, v3}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 702
    .line 703
    .line 704
    move-result-object v4

    .line 705
    if-nez v4, :cond_1b

    .line 706
    .line 707
    :goto_d
    goto/16 :goto_1b

    .line 708
    .line 709
    :cond_1b
    invoke-interface {v4, v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 710
    .line 711
    .line 712
    move-result-object v2

    .line 713
    invoke-static {v2}, Lcom/android/server/pm/PackageArchiver;->isArchived(Lcom/android/server/pm/pkg/PackageUserState;)Z

    .line 714
    .line 715
    .line 716
    move-result v4

    .line 717
    if-nez v4, :cond_1c

    .line 718
    .line 719
    goto :goto_d

    .line 720
    :cond_1c
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageUserState;->getArchiveState()Lcom/android/server/pm/pkg/ArchiveState;

    .line 721
    .line 722
    .line 723
    move-result-object v2

    .line 724
    iget-object v2, v2, Lcom/android/server/pm/pkg/ArchiveState;->mActivityInfos:Ljava/util/List;

    .line 725
    .line 726
    move/from16 v66, v15

    .line 727
    .line 728
    const/4 v4, 0x0

    .line 729
    :goto_e
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 730
    .line 731
    .line 732
    move-result v15

    .line 733
    if-ge v4, v15, :cond_2d

    .line 734
    .line 735
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 736
    .line 737
    .line 738
    move-result-object v15

    .line 739
    check-cast v15, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;

    .line 740
    .line 741
    iget-object v15, v15, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;->mOriginalComponentName:Landroid/content/ComponentName;

    .line 742
    .line 743
    move-object/from16 v17, v2

    .line 744
    .line 745
    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 746
    .line 747
    .line 748
    move-result-object v2

    .line 749
    invoke-virtual {v15, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 750
    .line 751
    .line 752
    move-result v2

    .line 753
    if-eqz v2, :cond_2c

    .line 754
    .line 755
    iget-object v2, v13, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 756
    .line 757
    iget v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    .line 758
    .line 759
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 760
    .line 761
    .line 762
    if-nez v10, :cond_1e

    .line 763
    .line 764
    :cond_1d
    const/4 v3, 0x0

    .line 765
    goto :goto_f

    .line 766
    :cond_1e
    invoke-virtual {v10}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    .line 767
    .line 768
    .line 769
    move-result-object v3

    .line 770
    if-eqz v3, :cond_1f

    .line 771
    .line 772
    invoke-virtual {v10}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    .line 773
    .line 774
    .line 775
    move-result-object v3

    .line 776
    goto :goto_f

    .line 777
    :cond_1f
    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 778
    .line 779
    .line 780
    move-result-object v3

    .line 781
    if-eqz v3, :cond_1d

    .line 782
    .line 783
    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 784
    .line 785
    .line 786
    move-result-object v3

    .line 787
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 788
    .line 789
    .line 790
    move-result-object v3

    .line 791
    :goto_f
    if-nez v3, :cond_20

    .line 792
    .line 793
    const-string/jumbo v0, "packageName cannot be null for unarchival!"

    .line 794
    .line 795
    .line 796
    move-object/from16 v15, v21

    .line 797
    .line 798
    invoke-static {v15, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    .line 800
    .line 801
    :goto_10
    move-object/from16 v68, v5

    .line 802
    .line 803
    move/from16 v53, v11

    .line 804
    .line 805
    move-object/from16 v67, v12

    .line 806
    .line 807
    const/16 v0, -0x5c

    .line 808
    .line 809
    goto/16 :goto_19

    .line 810
    .line 811
    :cond_20
    move-object/from16 v15, v21

    .line 812
    .line 813
    if-nez v6, :cond_21

    .line 814
    .line 815
    const-string v0, "callerPackageName cannot be null for unarchival!"

    .line 816
    .line 817
    invoke-static {v15, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    .line 819
    .line 820
    goto :goto_10

    .line 821
    :cond_21
    iget-object v4, v0, Lcom/android/server/pm/PackageArchiver;->mUserManager:Landroid/os/UserManager;

    .line 822
    .line 823
    if-nez v4, :cond_22

    .line 824
    .line 825
    iget-object v4, v0, Lcom/android/server/pm/PackageArchiver;->mContext:Landroid/content/Context;

    .line 826
    .line 827
    move-object/from16 v67, v12

    .line 828
    .line 829
    const-class v12, Landroid/os/UserManager;

    .line 830
    .line 831
    invoke-virtual {v4, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 832
    .line 833
    .line 834
    move-result-object v4

    .line 835
    check-cast v4, Landroid/os/UserManager;

    .line 836
    .line 837
    iput-object v4, v0, Lcom/android/server/pm/PackageArchiver;->mUserManager:Landroid/os/UserManager;

    .line 838
    .line 839
    goto :goto_11

    .line 840
    :cond_22
    move-object/from16 v67, v12

    .line 841
    .line 842
    :goto_11
    iget-object v4, v0, Lcom/android/server/pm/PackageArchiver;->mUserManager:Landroid/os/UserManager;

    .line 843
    .line 844
    invoke-virtual {v4, v2}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    .line 845
    .line 846
    .line 847
    move-result-object v4

    .line 848
    if-nez v4, :cond_23

    .line 849
    .line 850
    move v4, v2

    .line 851
    goto :goto_12

    .line 852
    :cond_23
    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    .line 853
    .line 854
    :goto_12
    iget-object v12, v0, Lcom/android/server/pm/PackageArchiver;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 855
    .line 856
    move-object/from16 v68, v5

    .line 857
    .line 858
    invoke-virtual {v12}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 859
    .line 860
    .line 861
    move-result-object v5

    .line 862
    invoke-interface {v5, v4}, Lcom/android/server/pm/Computer;->getDefaultHomeActivity(I)Landroid/content/ComponentName;

    .line 863
    .line 864
    .line 865
    move-result-object v4

    .line 866
    if-eqz v4, :cond_24

    .line 867
    .line 868
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 869
    .line 870
    .line 871
    move-result-object v4

    .line 872
    goto :goto_13

    .line 873
    :cond_24
    const/4 v4, 0x0

    .line 874
    :goto_13
    if-eqz v4, :cond_25

    .line 875
    .line 876
    invoke-static {v6, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 877
    .line 878
    .line 879
    move-result v4

    .line 880
    if-nez v4, :cond_26

    .line 881
    .line 882
    :cond_25
    const/16 v4, 0x7d0

    .line 883
    .line 884
    if-eq v8, v4, :cond_26

    .line 885
    .line 886
    const-string v0, "callerPackageName: %s does not qualify for unarchival of package: %s!"

    .line 887
    .line 888
    filled-new-array {v6, v3}, [Ljava/lang/Object;

    .line 889
    .line 890
    .line 891
    move-result-object v2

    .line 892
    invoke-static {v0, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 893
    .line 894
    .line 895
    move-result-object v0

    .line 896
    invoke-static {v15, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    .line 898
    .line 899
    move/from16 v53, v11

    .line 900
    .line 901
    const/16 v0, -0x5e

    .line 902
    .line 903
    goto/16 :goto_19

    .line 904
    .line 905
    :cond_26
    :try_start_2
    invoke-virtual {v0}, Lcom/android/server/pm/PackageArchiver;->getAppOpsManager()Landroid/app/AppOpsManager;

    .line 906
    .line 907
    .line 908
    move-result-object v4

    .line 909
    const/16 v5, 0x92

    .line 910
    .line 911
    invoke-virtual {v4, v5, v8, v6}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    .line 912
    .line 913
    .line 914
    move-result v4

    .line 915
    if-nez v4, :cond_29

    .line 916
    .line 917
    iget-object v4, v12, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    .line 918
    .line 919
    invoke-virtual {v4, v2}, Lcom/android/server/pm/PackageInstallerService;->getAllSessions(I)Landroid/content/pm/ParceledListSlice;

    .line 920
    .line 921
    .line 922
    move-result-object v4

    .line 923
    invoke-virtual {v4}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    .line 924
    .line 925
    .line 926
    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 927
    move/from16 v53, v11

    .line 928
    .line 929
    const/4 v5, 0x0

    .line 930
    :goto_14
    :try_start_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 931
    .line 932
    .line 933
    move-result v11

    .line 934
    if-ge v5, v11, :cond_28

    .line 935
    .line 936
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 937
    .line 938
    .line 939
    move-result-object v11

    .line 940
    check-cast v11, Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 941
    .line 942
    move-object/from16 v17, v4

    .line 943
    .line 944
    iget-object v4, v11, Landroid/content/pm/PackageInstaller$SessionInfo;->appPackageName:Ljava/lang/String;

    .line 945
    .line 946
    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 947
    .line 948
    .line 949
    move-result v4

    .line 950
    if-eqz v4, :cond_27

    .line 951
    .line 952
    iget v4, v11, Landroid/content/pm/PackageInstaller$SessionInfo;->userId:I

    .line 953
    .line 954
    if-ne v4, v2, :cond_27

    .line 955
    .line 956
    iget-boolean v4, v11, Landroid/content/pm/PackageInstaller$SessionInfo;->active:Z

    .line 957
    .line 958
    if-eqz v4, :cond_27

    .line 959
    .line 960
    invoke-virtual {v11}, Landroid/content/pm/PackageInstaller$SessionInfo;->isUnarchival()Z

    .line 961
    .line 962
    .line 963
    move-result v4

    .line 964
    if-eqz v4, :cond_27

    .line 965
    .line 966
    goto :goto_15

    .line 967
    :cond_27
    const/4 v4, 0x1

    .line 968
    add-int/2addr v5, v4

    .line 969
    move-object/from16 v4, v17

    .line 970
    .line 971
    goto :goto_14

    .line 972
    :cond_28
    const/4 v11, 0x0

    .line 973
    :goto_15
    if-eqz v11, :cond_2a

    .line 974
    .line 975
    iget-object v2, v12, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 976
    .line 977
    new-instance v4, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda10;

    .line 978
    .line 979
    invoke-direct {v4, v0, v3, v11}, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/pm/PackageArchiver;Ljava/lang/String;Landroid/content/pm/PackageInstaller$SessionInfo;)V

    .line 980
    .line 981
    .line 982
    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 983
    .line 984
    .line 985
    :goto_16
    const/16 v0, 0x66

    .line 986
    .line 987
    goto :goto_19

    .line 988
    :catchall_0
    move-exception v0

    .line 989
    goto :goto_18

    .line 990
    :cond_29
    move/from16 v53, v11

    .line 991
    .line 992
    :cond_2a
    const-string v4, "Unarchival is starting for: %s"

    .line 993
    .line 994
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 995
    .line 996
    .line 997
    move-result-object v5

    .line 998
    invoke-static {v4, v5}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 999
    .line 1000
    .line 1001
    move-result-object v4

    .line 1002
    invoke-static {v15, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    .line 1004
    .line 1005
    invoke-virtual {v0, v2, v3}, Lcom/android/server/pm/PackageArchiver;->getOrCreateLauncherListener(ILjava/lang/String;)Landroid/content/IntentSender;

    .line 1006
    .line 1007
    .line 1008
    move-result-object v25

    .line 1009
    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 1010
    .line 1011
    .line 1012
    move-result-object v26

    .line 1013
    invoke-virtual {v0}, Lcom/android/server/pm/PackageArchiver;->getAppOpsManager()Landroid/app/AppOpsManager;

    .line 1014
    .line 1015
    .line 1016
    move-result-object v2

    .line 1017
    const/16 v4, 0x92

    .line 1018
    .line 1019
    invoke-virtual {v2, v4, v8, v6}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    .line 1020
    .line 1021
    .line 1022
    move-result v2

    .line 1023
    if-nez v2, :cond_2b

    .line 1024
    .line 1025
    const/16 v27, 0x1

    .line 1026
    .line 1027
    goto :goto_17

    .line 1028
    :cond_2b
    const/16 v27, 0x0

    .line 1029
    .line 1030
    :goto_17
    move-object/from16 v22, v0

    .line 1031
    .line 1032
    move-object/from16 v23, v3

    .line 1033
    .line 1034
    move-object/from16 v24, v6

    .line 1035
    .line 1036
    invoke-virtual/range {v22 .. v27}, Lcom/android/server/pm/PackageArchiver;->requestUnarchive(Ljava/lang/String;Ljava/lang/String;Landroid/content/IntentSender;Landroid/os/UserHandle;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1037
    .line 1038
    .line 1039
    goto :goto_16

    .line 1040
    :catchall_1
    move-exception v0

    .line 1041
    move/from16 v53, v11

    .line 1042
    .line 1043
    :goto_18
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 1044
    .line 1045
    .line 1046
    move-result-object v0

    .line 1047
    filled-new-array {v3, v0}, [Ljava/lang/Object;

    .line 1048
    .line 1049
    .line 1050
    move-result-object v0

    .line 1051
    const-string v2, "Unexpected error occurred while unarchiving package %s: %s."

    .line 1052
    .line 1053
    invoke-static {v2, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 1054
    .line 1055
    .line 1056
    move-result-object v0

    .line 1057
    invoke-static {v15, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    .line 1059
    .line 1060
    goto :goto_16

    .line 1061
    :goto_19
    move v2, v0

    .line 1062
    goto :goto_1d

    .line 1063
    :cond_2c
    move-object/from16 v68, v5

    .line 1064
    .line 1065
    move/from16 v53, v11

    .line 1066
    .line 1067
    move-object/from16 v67, v12

    .line 1068
    .line 1069
    move-object/from16 v15, v21

    .line 1070
    .line 1071
    const/4 v2, 0x1

    .line 1072
    add-int/2addr v4, v2

    .line 1073
    move-object/from16 v2, v17

    .line 1074
    .line 1075
    goto/16 :goto_e

    .line 1076
    .line 1077
    :cond_2d
    move-object/from16 v68, v5

    .line 1078
    .line 1079
    move/from16 v53, v11

    .line 1080
    .line 1081
    move-object/from16 v67, v12

    .line 1082
    .line 1083
    move-object/from16 v15, v21

    .line 1084
    .line 1085
    const-string v0, "Package: %s is archived but component to start main activity cannot be found!"

    .line 1086
    .line 1087
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 1088
    .line 1089
    .line 1090
    move-result-object v2

    .line 1091
    invoke-static {v0, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 1092
    .line 1093
    .line 1094
    move-result-object v0

    .line 1095
    invoke-static {v15, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    .line 1097
    .line 1098
    goto :goto_1c

    .line 1099
    :cond_2e
    :goto_1a
    move-object/from16 v35, v4

    .line 1100
    .line 1101
    :goto_1b
    move-object/from16 v68, v5

    .line 1102
    .line 1103
    move/from16 v53, v11

    .line 1104
    .line 1105
    move-object/from16 v67, v12

    .line 1106
    .line 1107
    move/from16 v66, v15

    .line 1108
    .line 1109
    :goto_1c
    const/16 v2, -0x5c

    .line 1110
    .line 1111
    goto :goto_1d

    .line 1112
    :cond_2f
    move-object/from16 v35, v4

    .line 1113
    .line 1114
    move-object/from16 v68, v5

    .line 1115
    .line 1116
    move/from16 v53, v11

    .line 1117
    .line 1118
    move-object/from16 v67, v12

    .line 1119
    .line 1120
    move/from16 v66, v15

    .line 1121
    .line 1122
    :goto_1d
    const-string v3, "Failure checking voice capabilities"

    .line 1123
    .line 1124
    const/16 v4, -0x61

    .line 1125
    .line 1126
    if-nez v2, :cond_31

    .line 1127
    .line 1128
    if-eqz v7, :cond_31

    .line 1129
    .line 1130
    iget-object v0, v7, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 1131
    .line 1132
    iget-object v0, v0, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 1133
    .line 1134
    if-eqz v0, :cond_31

    .line 1135
    .line 1136
    const/high16 v0, 0x10000000

    .line 1137
    .line 1138
    and-int/2addr v0, v1

    .line 1139
    if-nez v0, :cond_31

    .line 1140
    .line 1141
    iget-object v0, v7, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 1142
    .line 1143
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1144
    .line 1145
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1146
    .line 1147
    iget-object v1, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1148
    .line 1149
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1150
    .line 1151
    if-eq v0, v1, :cond_31

    .line 1152
    .line 1153
    :try_start_4
    const-string v0, "android.intent.category.VOICE"

    .line 1154
    .line 1155
    invoke-virtual {v10, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1156
    .line 1157
    .line 1158
    iget-object v0, v13, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1159
    .line 1160
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1161
    .line 1162
    .line 1163
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 1164
    .line 1165
    .line 1166
    move-result-object v0

    .line 1167
    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 1168
    .line 1169
    .line 1170
    move-result-object v1
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    .line 1171
    move-object/from16 v5, v50

    .line 1172
    .line 1173
    move/from16 v11, v65

    .line 1174
    .line 1175
    :try_start_5
    invoke-interface {v0, v1, v10, v5, v11}, Landroid/content/pm/IPackageManager;->activitySupportsIntentAsUser(Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;I)Z

    .line 1176
    .line 1177
    .line 1178
    move-result v0

    .line 1179
    if-nez v0, :cond_30

    .line 1180
    .line 1181
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1182
    .line 1183
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1184
    .line 1185
    .line 1186
    const-string v1, "Activity being started in current voice task does not support voice: "

    .line 1187
    .line 1188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1189
    .line 1190
    .line 1191
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1192
    .line 1193
    .line 1194
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1195
    .line 1196
    .line 1197
    move-result-object v0
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1198
    move-object/from16 v12, v49

    .line 1199
    .line 1200
    :try_start_6
    invoke-static {v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2

    .line 1201
    .line 1202
    .line 1203
    goto :goto_1f

    .line 1204
    :catch_2
    move-exception v0

    .line 1205
    goto :goto_1e

    .line 1206
    :catch_3
    move-exception v0

    .line 1207
    move-object/from16 v12, v49

    .line 1208
    .line 1209
    goto :goto_1e

    .line 1210
    :cond_30
    move-object/from16 v12, v49

    .line 1211
    .line 1212
    goto :goto_20

    .line 1213
    :catch_4
    move-exception v0

    .line 1214
    move-object/from16 v12, v49

    .line 1215
    .line 1216
    move-object/from16 v5, v50

    .line 1217
    .line 1218
    move/from16 v11, v65

    .line 1219
    .line 1220
    :goto_1e
    invoke-static {v12, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1221
    .line 1222
    .line 1223
    :goto_1f
    move v2, v4

    .line 1224
    goto :goto_20

    .line 1225
    :cond_31
    move-object/from16 v12, v49

    .line 1226
    .line 1227
    move-object/from16 v5, v50

    .line 1228
    .line 1229
    move/from16 v11, v65

    .line 1230
    .line 1231
    :goto_20
    if-nez v2, :cond_32

    .line 1232
    .line 1233
    if-eqz v32, :cond_32

    .line 1234
    .line 1235
    :try_start_7
    iget-object v0, v13, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1236
    .line 1237
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1238
    .line 1239
    .line 1240
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 1241
    .line 1242
    .line 1243
    move-result-object v0

    .line 1244
    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 1245
    .line 1246
    .line 1247
    move-result-object v1

    .line 1248
    invoke-interface {v0, v1, v10, v5, v11}, Landroid/content/pm/IPackageManager;->activitySupportsIntentAsUser(Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;I)Z

    .line 1249
    .line 1250
    .line 1251
    move-result v0

    .line 1252
    if-nez v0, :cond_32

    .line 1253
    .line 1254
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1255
    .line 1256
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1257
    .line 1258
    .line 1259
    const-string v1, "Activity being started in new voice task does not support: "

    .line 1260
    .line 1261
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1262
    .line 1263
    .line 1264
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1265
    .line 1266
    .line 1267
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1268
    .line 1269
    .line 1270
    move-result-object v0

    .line 1271
    invoke-static {v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_5

    .line 1272
    .line 1273
    .line 1274
    goto :goto_21

    .line 1275
    :catch_5
    move-exception v0

    .line 1276
    invoke-static {v12, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1277
    .line 1278
    .line 1279
    goto :goto_21

    .line 1280
    :cond_32
    move v4, v2

    .line 1281
    :goto_21
    if-nez v77, :cond_33

    .line 1282
    .line 1283
    goto :goto_22

    .line 1284
    :cond_33
    invoke-virtual/range {v77 .. v77}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    .line 1285
    .line 1286
    .line 1287
    :goto_22
    const-string v0, "Start activity "

    .line 1288
    .line 1289
    if-eqz v4, :cond_35

    .line 1290
    .line 1291
    if-eqz v77, :cond_34

    .line 1292
    .line 1293
    const/16 v41, 0x0

    .line 1294
    .line 1295
    const/16 v42, 0x0

    .line 1296
    .line 1297
    const/16 v36, -0x1

    .line 1298
    .line 1299
    const/16 v39, 0x0

    .line 1300
    .line 1301
    const/16 v40, 0x0

    .line 1302
    .line 1303
    const/16 v43, 0x0

    .line 1304
    .line 1305
    move-object/from16 v35, v77

    .line 1306
    .line 1307
    move-object/from16 v37, v78

    .line 1308
    .line 1309
    move/from16 v38, v79

    .line 1310
    .line 1311
    invoke-virtual/range {v35 .. v43}, Lcom/android/server/wm/ActivityRecord;->sendResult(ILjava/lang/String;IILandroid/content/Intent;Landroid/os/IBinder;Lcom/android/server/uri/NeededUriGrants;Z)V

    .line 1312
    .line 1313
    .line 1314
    :cond_34
    invoke-static/range {v34 .. v34}, Lcom/android/server/wm/SafeActivityOptions;->abort(Lcom/android/server/wm/SafeActivityOptions;)V

    .line 1315
    .line 1316
    .line 1317
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 1318
    .line 1319
    .line 1320
    move-result v38

    .line 1321
    const-string v1, " failed"

    .line 1322
    .line 1323
    move-object/from16 v3, v52

    .line 1324
    .line 1325
    invoke-static {v0, v3, v1}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1326
    .line 1327
    .line 1328
    move-result-object v40

    .line 1329
    const/16 v37, 0x0

    .line 1330
    .line 1331
    const-string v39, "ActivityStarter"

    .line 1332
    .line 1333
    const/16 v35, 0x5

    .line 1334
    .line 1335
    const/16 v36, 0x5

    .line 1336
    .line 1337
    const-string v41, ""

    .line 1338
    .line 1339
    move/from16 v42, v11

    .line 1340
    .line 1341
    invoke-static/range {v35 .. v42}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1342
    .line 1343
    .line 1344
    return v4

    .line 1345
    :cond_35
    move-object/from16 v3, v52

    .line 1346
    .line 1347
    :try_start_8
    iget-object v1, v13, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 1348
    .line 1349
    iget-boolean v2, v14, Lcom/android/server/wm/ActivityStarter$Request;->ignoreTargetSecurity:Z

    .line 1350
    .line 1351
    if-eqz v44, :cond_36

    .line 1352
    .line 1353
    const/16 v26, 0x1

    .line 1354
    .line 1355
    goto :goto_23

    .line 1356
    :cond_36
    const/16 v26, 0x0

    .line 1357
    .line 1358
    :goto_23
    move-object/from16 v16, v1

    .line 1359
    .line 1360
    move-object/from16 v17, v10

    .line 1361
    .line 1362
    move-object/from16 v18, v9

    .line 1363
    .line 1364
    move-object/from16 v19, v78

    .line 1365
    .line 1366
    move/from16 v20, v79

    .line 1367
    .line 1368
    move/from16 v21, v46

    .line 1369
    .line 1370
    move/from16 v22, v53

    .line 1371
    .line 1372
    move-object/from16 v23, v6

    .line 1373
    .line 1374
    move-object/from16 v24, v68

    .line 1375
    .line 1376
    move/from16 v25, v2

    .line 1377
    .line 1378
    move-object/from16 v27, v67

    .line 1379
    .line 1380
    move-object/from16 v28, v77

    .line 1381
    .line 1382
    invoke-virtual/range {v16 .. v28}, Lcom/android/server/wm/ActivityTaskSupervisor;->checkStartAnyActivityPermission(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;ZZLcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityRecord;)Z

    .line 1383
    .line 1384
    .line 1385
    move-result v1
    :try_end_8
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_8

    .line 1386
    const/4 v2, 0x1

    .line 1387
    xor-int/2addr v1, v2

    .line 1388
    iget-object v2, v13, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1389
    .line 1390
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mIntentFirewall:Lcom/android/server/firewall/IntentFirewall;

    .line 1391
    .line 1392
    iget-object v4, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1393
    .line 1394
    iget-object v15, v2, Lcom/android/server/firewall/IntentFirewall;->mActivityResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    .line 1395
    .line 1396
    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 1397
    .line 1398
    .line 1399
    move-result-object v18

    .line 1400
    const/16 v19, 0x0

    .line 1401
    .line 1402
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1403
    .line 1404
    move-object/from16 v16, v2

    .line 1405
    .line 1406
    move-object/from16 v17, v15

    .line 1407
    .line 1408
    move-object/from16 v20, v10

    .line 1409
    .line 1410
    move/from16 v21, v53

    .line 1411
    .line 1412
    move/from16 v22, v46

    .line 1413
    .line 1414
    move-object/from16 v23, v5

    .line 1415
    .line 1416
    move/from16 v24, v4

    .line 1417
    .line 1418
    invoke-virtual/range {v16 .. v24}, Lcom/android/server/firewall/IntentFirewall;->checkIntent(Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;Landroid/content/ComponentName;ILandroid/content/Intent;IILjava/lang/String;I)Z

    .line 1419
    .line 1420
    .line 1421
    move-result v2

    .line 1422
    const/4 v4, 0x1

    .line 1423
    xor-int/2addr v2, v4

    .line 1424
    or-int/2addr v1, v2

    .line 1425
    iget-object v2, v13, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1426
    .line 1427
    iget-object v4, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyService$Internal;

    .line 1428
    .line 1429
    if-nez v4, :cond_37

    .line 1430
    .line 1431
    const-class v4, Lcom/android/server/policy/PermissionPolicyService$Internal;

    .line 1432
    .line 1433
    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 1434
    .line 1435
    .line 1436
    move-result-object v4

    .line 1437
    check-cast v4, Lcom/android/server/policy/PermissionPolicyService$Internal;

    .line 1438
    .line 1439
    iput-object v4, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyService$Internal;

    .line 1440
    .line 1441
    :cond_37
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyService$Internal;

    .line 1442
    .line 1443
    move/from16 v4, v53

    .line 1444
    .line 1445
    invoke-virtual {v2, v10, v6, v4}, Lcom/android/server/policy/PermissionPolicyService$Internal;->checkStartActivity(Landroid/content/Intent;Ljava/lang/String;I)Z

    .line 1446
    .line 1447
    .line 1448
    move-result v2

    .line 1449
    const/4 v15, 0x1

    .line 1450
    xor-int/2addr v2, v15

    .line 1451
    or-int/2addr v1, v2

    .line 1452
    if-eqz v34, :cond_38

    .line 1453
    .line 1454
    iget-object v2, v13, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 1455
    .line 1456
    move-object/from16 v49, v12

    .line 1457
    .line 1458
    move-object/from16 v15, v34

    .line 1459
    .line 1460
    move-object/from16 v12, v67

    .line 1461
    .line 1462
    invoke-virtual {v15, v10, v9, v12, v2}, Lcom/android/server/wm/SafeActivityOptions;->getOptions(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityTaskSupervisor;)Landroid/app/ActivityOptions;

    .line 1463
    .line 1464
    .line 1465
    move-result-object v2

    .line 1466
    goto :goto_24

    .line 1467
    :cond_38
    move-object/from16 v49, v12

    .line 1468
    .line 1469
    move-object/from16 v12, v67

    .line 1470
    .line 1471
    const/4 v2, 0x0

    .line 1472
    :goto_24
    if-nez v1, :cond_39

    .line 1473
    .line 1474
    move/from16 v28, v1

    .line 1475
    .line 1476
    move-object v15, v2

    .line 1477
    const-wide/16 v1, 0x20

    .line 1478
    .line 1479
    move-object/from16 v50, v0

    .line 1480
    .line 1481
    :try_start_9
    const-string/jumbo v0, "shouldAbortBackgroundActivityStart"

    .line 1482
    .line 1483
    .line 1484
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1485
    .line 1486
    .line 1487
    iget-object v0, v13, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 1488
    .line 1489
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mBalController:Lcom/android/server/wm/BackgroundActivityStartController;

    .line 1490
    .line 1491
    iget-object v1, v14, Lcom/android/server/wm/ActivityStarter$Request;->originatingPendingIntent:Lcom/android/server/am/PendingIntentRecord;

    .line 1492
    .line 1493
    iget-object v2, v14, Lcom/android/server/wm/ActivityStarter$Request;->forcedBalByPiSender:Landroid/app/BackgroundStartPrivileges;

    .line 1494
    .line 1495
    move-object/from16 v16, v0

    .line 1496
    .line 1497
    move/from16 v17, v4

    .line 1498
    .line 1499
    move/from16 v18, v46

    .line 1500
    .line 1501
    move-object/from16 v19, v6

    .line 1502
    .line 1503
    move/from16 v20, v8

    .line 1504
    .line 1505
    move/from16 v21, v66

    .line 1506
    .line 1507
    move-object/from16 v22, v12

    .line 1508
    .line 1509
    move-object/from16 v23, v1

    .line 1510
    .line 1511
    move-object/from16 v24, v2

    .line 1512
    .line 1513
    move-object/from16 v25, v77

    .line 1514
    .line 1515
    move-object/from16 v26, v10

    .line 1516
    .line 1517
    move-object/from16 v27, v15

    .line 1518
    .line 1519
    invoke-virtual/range {v16 .. v27}, Lcom/android/server/wm/BackgroundActivityStartController;->checkBackgroundActivityStart(IILjava/lang/String;IILcom/android/server/wm/WindowProcessController;Lcom/android/server/am/PendingIntentRecord;Landroid/app/BackgroundStartPrivileges;Lcom/android/server/wm/ActivityRecord;Landroid/content/Intent;Landroid/app/ActivityOptions;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    .line 1520
    .line 1521
    .line 1522
    move-result-object v0

    .line 1523
    iget-object v1, v14, Lcom/android/server/wm/ActivityStarter$Request;->logMessage:Ljava/lang/StringBuilder;

    .line 1524
    .line 1525
    const-string v2, " ("

    .line 1526
    .line 1527
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1528
    .line 1529
    .line 1530
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1531
    .line 1532
    .line 1533
    move-object/from16 v2, v35

    .line 1534
    .line 1535
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 1536
    .line 1537
    .line 1538
    const-wide/16 v1, 0x20

    .line 1539
    .line 1540
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1541
    .line 1542
    .line 1543
    :goto_25
    move-object v2, v0

    .line 1544
    goto :goto_26

    .line 1545
    :catchall_2
    move-exception v0

    .line 1546
    const-wide/16 v1, 0x20

    .line 1547
    .line 1548
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1549
    .line 1550
    .line 1551
    throw v0

    .line 1552
    :cond_39
    move-object/from16 v50, v0

    .line 1553
    .line 1554
    move/from16 v28, v1

    .line 1555
    .line 1556
    move-object v15, v2

    .line 1557
    sget-object v0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->ALLOW_BY_DEFAULT:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    .line 1558
    .line 1559
    goto :goto_25

    .line 1560
    :goto_26
    sget-object v0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    .line 1561
    .line 1562
    if-eq v2, v0, :cond_3b

    .line 1563
    .line 1564
    iget-object v0, v13, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1565
    .line 1566
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 1567
    .line 1568
    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    .line 1569
    .line 1570
    .line 1571
    move-result v0

    .line 1572
    if-eqz v12, :cond_3a

    .line 1573
    .line 1574
    iget-object v1, v12, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    .line 1575
    .line 1576
    if-eqz v1, :cond_3a

    .line 1577
    .line 1578
    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1579
    .line 1580
    iget v1, v12, Lcom/android/server/wm/WindowProcessController;->mUserId:I

    .line 1581
    .line 1582
    move-object/from16 v16, v0

    .line 1583
    .line 1584
    iget v0, v12, Lcom/android/server/wm/WindowProcessController;->mPid:I

    .line 1585
    .line 1586
    move/from16 v26, v0

    .line 1587
    .line 1588
    move/from16 v19, v1

    .line 1589
    .line 1590
    move-object/from16 v18, v16

    .line 1591
    .line 1592
    goto :goto_27

    .line 1593
    :cond_3a
    move/from16 v19, v0

    .line 1594
    .line 1595
    const/16 v18, 0x0

    .line 1596
    .line 1597
    const/16 v26, 0x0

    .line 1598
    .line 1599
    :goto_27
    sget-object v16, Lcom/android/server/am/BaseRestrictionMgr$BaseRestrictionMgrHolder;->INSTANCE:Lcom/android/server/am/BaseRestrictionMgr;

    .line 1600
    .line 1601
    new-instance v0, Landroid/content/ComponentName;

    .line 1602
    .line 1603
    iget-object v1, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1604
    .line 1605
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1606
    .line 1607
    move-object/from16 v29, v2

    .line 1608
    .line 1609
    iget-object v2, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 1610
    .line 1611
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1612
    .line 1613
    .line 1614
    const/16 v25, 0x0

    .line 1615
    .line 1616
    const/16 v27, 0x0

    .line 1617
    .line 1618
    const-string v20, "activity"

    .line 1619
    .line 1620
    const/16 v21, 0x0

    .line 1621
    .line 1622
    const/16 v23, 0x0

    .line 1623
    .line 1624
    move-object/from16 v17, v0

    .line 1625
    .line 1626
    move/from16 v22, v11

    .line 1627
    .line 1628
    move-object/from16 v24, v9

    .line 1629
    .line 1630
    invoke-virtual/range {v16 .. v27}, Lcom/android/server/am/BaseRestrictionMgr;->isRestrictedPackage(Landroid/content/ComponentName;Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;IZLandroid/content/pm/ActivityInfo;Ljava/lang/String;II)Z

    .line 1631
    .line 1632
    .line 1633
    move-result v0

    .line 1634
    const/4 v1, 0x1

    .line 1635
    xor-int/2addr v0, v1

    .line 1636
    if-eqz v0, :cond_3c

    .line 1637
    .line 1638
    iget-object v0, v13, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1639
    .line 1640
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 1641
    .line 1642
    iget-object v1, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1643
    .line 1644
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1645
    .line 1646
    const/4 v2, 0x0

    .line 1647
    invoke-virtual {v0, v1, v11, v2}, Landroid/app/ActivityManagerInternal;->cancelDisablePolicy(Ljava/lang/String;II)Z

    .line 1648
    .line 1649
    .line 1650
    goto :goto_28

    .line 1651
    :cond_3b
    move-object/from16 v29, v2

    .line 1652
    .line 1653
    :cond_3c
    :goto_28
    iget-boolean v0, v14, Lcom/android/server/wm/ActivityStarter$Request;->allowPendingRemoteAnimationRegistryLookup:Z

    .line 1654
    .line 1655
    if-eqz v0, :cond_41

    .line 1656
    .line 1657
    iget-object v0, v13, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1658
    .line 1659
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityStartController:Lcom/android/server/wm/ActivityStartController;

    .line 1660
    .line 1661
    iget-object v0, v0, Lcom/android/server/wm/ActivityStartController;->mPendingRemoteAnimationRegistry:Lcom/android/server/wm/PendingRemoteAnimationRegistry;

    .line 1662
    .line 1663
    iget-object v1, v0, Lcom/android/server/wm/PendingRemoteAnimationRegistry;->mEntries:Landroid/util/ArrayMap;

    .line 1664
    .line 1665
    invoke-virtual {v1, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1666
    .line 1667
    .line 1668
    move-result-object v1

    .line 1669
    check-cast v1, Lcom/android/server/wm/PendingRemoteAnimationRegistry$Entry;

    .line 1670
    .line 1671
    if-nez v1, :cond_3d

    .line 1672
    .line 1673
    goto :goto_2a

    .line 1674
    :cond_3d
    if-nez v15, :cond_3e

    .line 1675
    .line 1676
    iget-object v2, v1, Lcom/android/server/wm/PendingRemoteAnimationRegistry$Entry;->adapter:Landroid/view/RemoteAnimationAdapter;

    .line 1677
    .line 1678
    invoke-static {v2}, Landroid/app/ActivityOptions;->makeRemoteAnimation(Landroid/view/RemoteAnimationAdapter;)Landroid/app/ActivityOptions;

    .line 1679
    .line 1680
    .line 1681
    move-result-object v2

    .line 1682
    goto :goto_29

    .line 1683
    :cond_3e
    iget-object v2, v1, Lcom/android/server/wm/PendingRemoteAnimationRegistry$Entry;->adapter:Landroid/view/RemoteAnimationAdapter;

    .line 1684
    .line 1685
    invoke-virtual {v15, v2}, Landroid/app/ActivityOptions;->setRemoteAnimationAdapter(Landroid/view/RemoteAnimationAdapter;)V

    .line 1686
    .line 1687
    .line 1688
    move-object v2, v15

    .line 1689
    :goto_29
    sget-boolean v15, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_REMOTE:Z

    .line 1690
    .line 1691
    if-eqz v15, :cond_3f

    .line 1692
    .line 1693
    iget-object v15, v1, Lcom/android/server/wm/PendingRemoteAnimationRegistry$Entry;->remoteTransition:Landroid/window/RemoteTransition;

    .line 1694
    .line 1695
    invoke-virtual {v2, v15}, Landroid/app/ActivityOptions;->setRemoteTransition(Landroid/window/RemoteTransition;)Landroid/app/ActivityOptions;

    .line 1696
    .line 1697
    .line 1698
    :cond_3f
    iget-object v1, v1, Lcom/android/server/wm/PendingRemoteAnimationRegistry$Entry;->launchCookie:Landroid/os/IBinder;

    .line 1699
    .line 1700
    if-eqz v1, :cond_40

    .line 1701
    .line 1702
    invoke-virtual {v2, v1}, Landroid/app/ActivityOptions;->setLaunchCookie(Landroid/os/IBinder;)V

    .line 1703
    .line 1704
    .line 1705
    :cond_40
    iget-object v0, v0, Lcom/android/server/wm/PendingRemoteAnimationRegistry;->mEntries:Landroid/util/ArrayMap;

    .line 1706
    .line 1707
    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1708
    .line 1709
    .line 1710
    goto :goto_2b

    .line 1711
    :cond_41
    :goto_2a
    move-object v2, v15

    .line 1712
    :goto_2b
    iget-object v0, v13, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1713
    .line 1714
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    .line 1715
    .line 1716
    if-eqz v0, :cond_42

    .line 1717
    .line 1718
    :try_start_a
    invoke-virtual {v10}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    .line 1719
    .line 1720
    .line 1721
    move-result-object v0

    .line 1722
    iget-object v1, v13, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1723
    .line 1724
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    .line 1725
    .line 1726
    iget-object v15, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1727
    .line 1728
    iget-object v15, v15, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1729
    .line 1730
    invoke-interface {v1, v0, v15}, Landroid/app/IActivityController;->activityStarting(Landroid/content/Intent;Ljava/lang/String;)Z

    .line 1731
    .line 1732
    .line 1733
    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_6

    .line 1734
    const/4 v1, 0x1

    .line 1735
    xor-int/2addr v0, v1

    .line 1736
    or-int v1, v28, v0

    .line 1737
    .line 1738
    goto :goto_2c

    .line 1739
    :catch_6
    iget-object v0, v13, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1740
    .line 1741
    const/4 v1, 0x0

    .line 1742
    iput-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    .line 1743
    .line 1744
    :cond_42
    move/from16 v1, v28

    .line 1745
    .line 1746
    :goto_2c
    iget-object v0, v13, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 1747
    .line 1748
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mLaunchParamsController:Lcom/android/server/wm/LaunchParamsController;

    .line 1749
    .line 1750
    iget-object v15, v13, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 1751
    .line 1752
    move-object/from16 v67, v12

    .line 1753
    .line 1754
    iget-object v12, v13, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 1755
    .line 1756
    const/16 v37, 0x0

    .line 1757
    .line 1758
    const/16 v43, 0x0

    .line 1759
    .line 1760
    const/16 v36, 0x0

    .line 1761
    .line 1762
    const/16 v41, 0x0

    .line 1763
    .line 1764
    move-object/from16 v34, v0

    .line 1765
    .line 1766
    move-object/from16 v35, v44

    .line 1767
    .line 1768
    move-object/from16 v38, v7

    .line 1769
    .line 1770
    move-object/from16 v39, v2

    .line 1771
    .line 1772
    move-object/from16 v40, v15

    .line 1773
    .line 1774
    move-object/from16 v42, v12

    .line 1775
    .line 1776
    invoke-virtual/range {v34 .. v43}, Lcom/android/server/wm/LaunchParamsController;->calculate(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityStarter$Request;ILcom/android/server/wm/LaunchParamsController$LaunchParams;Lcom/android/server/wm/TaskDisplayArea;)V

    .line 1777
    .line 1778
    .line 1779
    iget-object v0, v13, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 1780
    .line 1781
    iget-object v0, v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 1782
    .line 1783
    if-eqz v0, :cond_43

    .line 1784
    .line 1785
    :goto_2d
    move-object/from16 v26, v0

    .line 1786
    .line 1787
    goto :goto_2e

    .line 1788
    :cond_43
    iget-object v0, v13, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 1789
    .line 1790
    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 1791
    .line 1792
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 1793
    .line 1794
    .line 1795
    move-result-object v0

    .line 1796
    goto :goto_2d

    .line 1797
    :goto_2e
    iget-object v0, v13, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    .line 1798
    .line 1799
    move/from16 v12, v66

    .line 1800
    .line 1801
    iput v12, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingPid:I

    .line 1802
    .line 1803
    iput v8, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingUid:I

    .line 1804
    .line 1805
    iput v11, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    .line 1806
    .line 1807
    move/from16 v15, v33

    .line 1808
    .line 1809
    iput v15, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mStartFlags:I

    .line 1810
    .line 1811
    iput-object v6, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingPackage:Ljava/lang/String;

    .line 1812
    .line 1813
    move-object/from16 v15, v68

    .line 1814
    .line 1815
    iput-object v15, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingFeatureId:Ljava/lang/String;

    .line 1816
    .line 1817
    iput-object v7, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 1818
    .line 1819
    move-object/from16 v27, v7

    .line 1820
    .line 1821
    const/4 v7, 0x0

    .line 1822
    iput-boolean v7, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIsInterceptedForAliasActivity:Z

    .line 1823
    .line 1824
    iget-object v0, v13, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    .line 1825
    .line 1826
    move-object/from16 v16, v0

    .line 1827
    .line 1828
    move-object/from16 v17, v10

    .line 1829
    .line 1830
    move-object/from16 v18, v47

    .line 1831
    .line 1832
    move-object/from16 v19, v9

    .line 1833
    .line 1834
    move-object/from16 v20, v5

    .line 1835
    .line 1836
    move-object/from16 v21, v44

    .line 1837
    .line 1838
    move-object/from16 v22, v48

    .line 1839
    .line 1840
    move/from16 v23, v46

    .line 1841
    .line 1842
    move/from16 v24, v4

    .line 1843
    .line 1844
    move-object/from16 v25, v2

    .line 1845
    .line 1846
    invoke-virtual/range {v16 .. v26}, Lcom/android/server/wm/ActivityStartInterceptor;->intercept(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Landroid/content/pm/ActivityInfo;Ljava/lang/String;Lcom/android/server/wm/Task;Lcom/android/server/wm/TaskFragment;IILandroid/app/ActivityOptions;Lcom/android/server/wm/TaskDisplayArea;)Z

    .line 1847
    .line 1848
    .line 1849
    move-result v0

    .line 1850
    if-eqz v0, :cond_44

    .line 1851
    .line 1852
    iget-object v0, v13, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    .line 1853
    .line 1854
    iget-object v7, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 1855
    .line 1856
    iget-object v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    .line 1857
    .line 1858
    iget-object v4, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    .line 1859
    .line 1860
    iget-object v5, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    .line 1861
    .line 1862
    iget-object v9, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mInTask:Lcom/android/server/wm/Task;

    .line 1863
    .line 1864
    iget v10, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingPid:I

    .line 1865
    .line 1866
    move-object/from16 v16, v2

    .line 1867
    .line 1868
    iget v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingUid:I

    .line 1869
    .line 1870
    iget-object v0, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    .line 1871
    .line 1872
    move/from16 v54, v2

    .line 1873
    .line 1874
    move-object/from16 v44, v9

    .line 1875
    .line 1876
    move/from16 v46, v10

    .line 1877
    .line 1878
    const/16 v51, 0x0

    .line 1879
    .line 1880
    move-object v2, v0

    .line 1881
    goto :goto_2f

    .line 1882
    :cond_44
    move/from16 v54, v4

    .line 1883
    .line 1884
    move-object v4, v9

    .line 1885
    move-object v7, v10

    .line 1886
    move-object/from16 v16, v47

    .line 1887
    .line 1888
    :goto_2f
    if-eqz v1, :cond_46

    .line 1889
    .line 1890
    if-eqz v77, :cond_45

    .line 1891
    .line 1892
    const/16 v41, 0x0

    .line 1893
    .line 1894
    const/16 v42, 0x0

    .line 1895
    .line 1896
    const/16 v36, -0x1

    .line 1897
    .line 1898
    const/16 v39, 0x0

    .line 1899
    .line 1900
    const/16 v40, 0x0

    .line 1901
    .line 1902
    const/16 v43, 0x0

    .line 1903
    .line 1904
    move-object/from16 v35, v77

    .line 1905
    .line 1906
    move-object/from16 v37, v78

    .line 1907
    .line 1908
    move/from16 v38, v79

    .line 1909
    .line 1910
    invoke-virtual/range {v35 .. v43}, Lcom/android/server/wm/ActivityRecord;->sendResult(ILjava/lang/String;IILandroid/content/Intent;Landroid/os/IBinder;Lcom/android/server/uri/NeededUriGrants;Z)V

    .line 1911
    .line 1912
    .line 1913
    :cond_45
    invoke-static {v2}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 1914
    .line 1915
    .line 1916
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 1917
    .line 1918
    .line 1919
    move-result v38

    .line 1920
    const-string v0, " succeeded"

    .line 1921
    .line 1922
    move-object/from16 v1, v50

    .line 1923
    .line 1924
    invoke-static {v1, v3, v0}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1925
    .line 1926
    .line 1927
    move-result-object v40

    .line 1928
    const/16 v37, 0x1

    .line 1929
    .line 1930
    const-string v39, "ActivityStarter"

    .line 1931
    .line 1932
    const/16 v35, 0x5

    .line 1933
    .line 1934
    const/16 v36, 0x5

    .line 1935
    .line 1936
    const-string v41, ""

    .line 1937
    .line 1938
    move/from16 v42, v11

    .line 1939
    .line 1940
    invoke-static/range {v35 .. v42}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1941
    .line 1942
    .line 1943
    const/16 v1, 0x66

    .line 1944
    .line 1945
    return v1

    .line 1946
    :cond_46
    const-string v0, "android.intent.extra.RESULT_NEEDED"

    .line 1947
    .line 1948
    const-string v1, "android.intent.extra.INTENT"

    .line 1949
    .line 1950
    const-string v3, "android.intent.extra.PACKAGE_NAME"

    .line 1951
    .line 1952
    if-eqz v4, :cond_49

    .line 1953
    .line 1954
    iget-object v10, v13, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1955
    .line 1956
    invoke-virtual {v10}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    .line 1957
    .line 1958
    .line 1959
    move-result-object v10

    .line 1960
    iget-object v9, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1961
    .line 1962
    invoke-virtual {v10, v11, v9}, Landroid/content/pm/PackageManagerInternal;->isPermissionsReviewRequired(ILjava/lang/String;)Z

    .line 1963
    .line 1964
    .line 1965
    move-result v9

    .line 1966
    if-eqz v9, :cond_49

    .line 1967
    .line 1968
    iget-object v9, v13, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1969
    .line 1970
    move-object/from16 v18, v2

    .line 1971
    .line 1972
    const/4 v10, 0x1

    .line 1973
    new-array v2, v10, [Landroid/content/Intent;

    .line 1974
    .line 1975
    const/4 v10, 0x0

    .line 1976
    aput-object v7, v2, v10

    .line 1977
    .line 1978
    filled-new-array {v5}, [Ljava/lang/String;

    .line 1979
    .line 1980
    .line 1981
    move-result-object v64

    .line 1982
    const/16 v62, 0x0

    .line 1983
    .line 1984
    const/16 v56, 0x0

    .line 1985
    .line 1986
    const/16 v53, 0x2

    .line 1987
    .line 1988
    const/16 v59, 0x0

    .line 1989
    .line 1990
    const/high16 v57, 0x50000000

    .line 1991
    .line 1992
    const/16 v58, 0x0

    .line 1993
    .line 1994
    move-object/from16 v52, v9

    .line 1995
    .line 1996
    move/from16 v55, v11

    .line 1997
    .line 1998
    move-object/from16 v60, v6

    .line 1999
    .line 2000
    move-object/from16 v61, v15

    .line 2001
    .line 2002
    move-object/from16 v63, v2

    .line 2003
    .line 2004
    invoke-virtual/range {v52 .. v64}, Lcom/android/server/wm/ActivityTaskManagerService;->getIntentSenderLocked(IIIIILandroid/os/Bundle;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;)Lcom/android/server/am/PendingIntentRecord;

    .line 2005
    .line 2006
    .line 2007
    move-result-object v2

    .line 2008
    new-instance v5, Landroid/content/Intent;

    .line 2009
    .line 2010
    const-string v9, "android.intent.action.REVIEW_PERMISSIONS"

    .line 2011
    .line 2012
    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2013
    .line 2014
    .line 2015
    invoke-virtual {v7}, Landroid/content/Intent;->getFlags()I

    .line 2016
    .line 2017
    .line 2018
    move-result v7

    .line 2019
    const/high16 v9, 0x800000

    .line 2020
    .line 2021
    or-int/2addr v9, v7

    .line 2022
    const/high16 v10, 0x10080000

    .line 2023
    .line 2024
    and-int/2addr v10, v9

    .line 2025
    if-eqz v10, :cond_47

    .line 2026
    .line 2027
    const/high16 v10, 0x8800000

    .line 2028
    .line 2029
    or-int v9, v7, v10

    .line 2030
    .line 2031
    :cond_47
    invoke-virtual {v5, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2032
    .line 2033
    .line 2034
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2035
    .line 2036
    invoke-virtual {v5, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2037
    .line 2038
    .line 2039
    new-instance v4, Landroid/content/IntentSender;

    .line 2040
    .line 2041
    invoke-direct {v4, v2}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    .line 2042
    .line 2043
    .line 2044
    invoke-virtual {v5, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2045
    .line 2046
    .line 2047
    if-eqz v77, :cond_48

    .line 2048
    .line 2049
    const/4 v2, 0x1

    .line 2050
    invoke-virtual {v5, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2051
    .line 2052
    .line 2053
    :cond_48
    iget-object v2, v13, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 2054
    .line 2055
    iget v4, v14, Lcom/android/server/wm/ActivityStarter$Request;->filterCallingUid:I

    .line 2056
    .line 2057
    invoke-static {v8, v8, v4}, Lcom/android/server/wm/ActivityStarter;->computeResolveFilterUid(III)I

    .line 2058
    .line 2059
    .line 2060
    move-result v24

    .line 2061
    const/16 v23, 0x0

    .line 2062
    .line 2063
    const/4 v4, 0x0

    .line 2064
    move-object/from16 v19, v2

    .line 2065
    .line 2066
    move-object/from16 v20, v5

    .line 2067
    .line 2068
    move-object/from16 v21, v4

    .line 2069
    .line 2070
    move/from16 v22, v11

    .line 2071
    .line 2072
    move/from16 v25, v12

    .line 2073
    .line 2074
    invoke-virtual/range {v19 .. v25}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;IIII)Landroid/content/pm/ResolveInfo;

    .line 2075
    .line 2076
    .line 2077
    move-result-object v2

    .line 2078
    iget-object v7, v13, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 2079
    .line 2080
    move/from16 v9, v33

    .line 2081
    .line 2082
    const/4 v10, 0x0

    .line 2083
    invoke-virtual {v7, v5, v2, v9, v10}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    .line 2084
    .line 2085
    .line 2086
    move-result-object v7

    .line 2087
    move-object/from16 v16, v2

    .line 2088
    .line 2089
    move/from16 v54, v8

    .line 2090
    .line 2091
    move/from16 v46, v12

    .line 2092
    .line 2093
    const/16 v51, 0x0

    .line 2094
    .line 2095
    move-object/from16 v89, v5

    .line 2096
    .line 2097
    move-object v5, v4

    .line 2098
    move-object v4, v7

    .line 2099
    move-object/from16 v7, v89

    .line 2100
    .line 2101
    goto :goto_30

    .line 2102
    :cond_49
    move-object/from16 v18, v2

    .line 2103
    .line 2104
    move/from16 v9, v33

    .line 2105
    .line 2106
    :goto_30
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->SUPPORT_SMARTMANAGER_CN:Z

    .line 2107
    .line 2108
    const-string v10, " className:"

    .line 2109
    .line 2110
    const/high16 v26, 0x100000

    .line 2111
    .line 2112
    if-eqz v2, :cond_54

    .line 2113
    .line 2114
    invoke-virtual {v7}, Landroid/content/Intent;->getFlags()I

    .line 2115
    .line 2116
    .line 2117
    move-result v2

    .line 2118
    and-int v2, v2, v26

    .line 2119
    .line 2120
    if-eqz v2, :cond_4a

    .line 2121
    .line 2122
    const/4 v2, 0x1

    .line 2123
    goto :goto_31

    .line 2124
    :cond_4a
    const/4 v2, 0x0

    .line 2125
    :goto_31
    iget-object v14, v13, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 2126
    .line 2127
    invoke-virtual {v14, v11}, Lcom/android/server/wm/ActivityTaskSupervisor;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 2128
    .line 2129
    .line 2130
    move-result-object v14

    .line 2131
    if-eqz v4, :cond_54

    .line 2132
    .line 2133
    move-object/from16 v28, v0

    .line 2134
    .line 2135
    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2136
    .line 2137
    if-eqz v0, :cond_53

    .line 2138
    .line 2139
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2140
    .line 2141
    .line 2142
    move-result v0

    .line 2143
    if-nez v0, :cond_53

    .line 2144
    .line 2145
    iget-object v0, v13, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2146
    .line 2147
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    .line 2148
    .line 2149
    move/from16 v33, v9

    .line 2150
    .line 2151
    iget-object v9, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2152
    .line 2153
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mSmRccPolicy:Lcom/android/internal/app/SmRccPolicy;

    .line 2154
    .line 2155
    if-eqz v0, :cond_4b

    .line 2156
    .line 2157
    invoke-virtual {v0, v9}, Lcom/android/internal/app/SmRccPolicy;->isSmRccPkg(Ljava/lang/String;)Z

    .line 2158
    .line 2159
    .line 2160
    move-result v0

    .line 2161
    goto :goto_32

    .line 2162
    :cond_4b
    const/4 v0, 0x0

    .line 2163
    :goto_32
    if-eqz v0, :cond_4c

    .line 2164
    .line 2165
    if-nez v2, :cond_4c

    .line 2166
    .line 2167
    invoke-static {v11}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 2168
    .line 2169
    .line 2170
    move-result v0

    .line 2171
    if-nez v0, :cond_4c

    .line 2172
    .line 2173
    if-eqz v14, :cond_4d

    .line 2174
    .line 2175
    invoke-virtual {v14}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    .line 2176
    .line 2177
    .line 2178
    move-result v0

    .line 2179
    if-nez v0, :cond_4c

    .line 2180
    .line 2181
    goto :goto_34

    .line 2182
    :cond_4c
    move-object/from16 v19, v7

    .line 2183
    .line 2184
    move-object/from16 v30, v10

    .line 2185
    .line 2186
    move/from16 v7, v33

    .line 2187
    .line 2188
    :goto_33
    move-object/from16 v9, v49

    .line 2189
    .line 2190
    goto/16 :goto_39

    .line 2191
    .line 2192
    :cond_4d
    :goto_34
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2193
    .line 2194
    const-string v2, "SmRcc pkgName:"

    .line 2195
    .line 2196
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2197
    .line 2198
    .line 2199
    iget-object v2, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2200
    .line 2201
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2202
    .line 2203
    .line 2204
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2205
    .line 2206
    .line 2207
    iget-object v2, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 2208
    .line 2209
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2210
    .line 2211
    .line 2212
    const-string v2, " callingPackage:"

    .line 2213
    .line 2214
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2215
    .line 2216
    .line 2217
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2218
    .line 2219
    .line 2220
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2221
    .line 2222
    .line 2223
    move-result-object v0

    .line 2224
    move-object/from16 v9, v49

    .line 2225
    .line 2226
    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2227
    .line 2228
    .line 2229
    iget-object v0, v13, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2230
    .line 2231
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    .line 2232
    .line 2233
    iget-object v2, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2234
    .line 2235
    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->isSmRccOpen(Ljava/lang/String;)Z

    .line 2236
    .line 2237
    .line 2238
    move-result v0

    .line 2239
    if-eqz v0, :cond_4e

    .line 2240
    .line 2241
    iget-object v0, v13, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2242
    .line 2243
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    .line 2244
    .line 2245
    iget-object v2, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2246
    .line 2247
    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->resetSmRccOpen(Ljava/lang/String;)V

    .line 2248
    .line 2249
    .line 2250
    move-object/from16 v19, v7

    .line 2251
    .line 2252
    move-object/from16 v30, v10

    .line 2253
    .line 2254
    move/from16 v7, v33

    .line 2255
    .line 2256
    goto/16 :goto_39

    .line 2257
    .line 2258
    :cond_4e
    new-instance v0, Landroid/content/Intent;

    .line 2259
    .line 2260
    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2261
    .line 2262
    .line 2263
    move-result-object v2

    .line 2264
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2265
    .line 2266
    .line 2267
    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 2268
    .line 2269
    .line 2270
    move-result-object v2

    .line 2271
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2272
    .line 2273
    .line 2274
    iget-object v2, v13, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2275
    .line 2276
    move-object/from16 v30, v10

    .line 2277
    .line 2278
    const/4 v14, 0x1

    .line 2279
    new-array v10, v14, [Landroid/content/Intent;

    .line 2280
    .line 2281
    const/4 v14, 0x0

    .line 2282
    aput-object v7, v10, v14

    .line 2283
    .line 2284
    filled-new-array {v5}, [Ljava/lang/String;

    .line 2285
    .line 2286
    .line 2287
    move-result-object v64

    .line 2288
    const/16 v62, 0x0

    .line 2289
    .line 2290
    const/16 v56, 0x0

    .line 2291
    .line 2292
    const/16 v53, 0x2

    .line 2293
    .line 2294
    const/16 v59, 0x0

    .line 2295
    .line 2296
    const/high16 v57, 0x50000000

    .line 2297
    .line 2298
    const/16 v58, 0x0

    .line 2299
    .line 2300
    move-object/from16 v52, v2

    .line 2301
    .line 2302
    move/from16 v55, v11

    .line 2303
    .line 2304
    move-object/from16 v60, v6

    .line 2305
    .line 2306
    move-object/from16 v61, v15

    .line 2307
    .line 2308
    move-object/from16 v63, v10

    .line 2309
    .line 2310
    invoke-virtual/range {v52 .. v64}, Lcom/android/server/wm/ActivityTaskManagerService;->getIntentSenderLocked(IIIIILandroid/os/Bundle;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;)Lcom/android/server/am/PendingIntentRecord;

    .line 2311
    .line 2312
    .line 2313
    move-result-object v2

    .line 2314
    invoke-virtual {v7}, Landroid/content/Intent;->getFlags()I

    .line 2315
    .line 2316
    .line 2317
    move-result v5

    .line 2318
    iget-object v10, v13, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2319
    .line 2320
    iget-object v10, v10, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    .line 2321
    .line 2322
    invoke-virtual {v10}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->getSmRccAction()Ljava/lang/String;

    .line 2323
    .line 2324
    .line 2325
    move-result-object v10

    .line 2326
    new-instance v14, Landroid/content/Intent;

    .line 2327
    .line 2328
    invoke-direct {v14, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2329
    .line 2330
    .line 2331
    const/high16 v17, 0x8800000

    .line 2332
    .line 2333
    or-int v5, v5, v17

    .line 2334
    .line 2335
    invoke-virtual {v14, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2336
    .line 2337
    .line 2338
    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2339
    .line 2340
    invoke-virtual {v14, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2341
    .line 2342
    .line 2343
    new-instance v5, Landroid/content/IntentSender;

    .line 2344
    .line 2345
    invoke-direct {v5, v2}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    .line 2346
    .line 2347
    .line 2348
    invoke-virtual {v14, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2349
    .line 2350
    .line 2351
    if-eqz v77, :cond_4f

    .line 2352
    .line 2353
    const-string v2, "SM_RCC_EXTRA_RESULT_NEEDED"

    .line 2354
    .line 2355
    const/4 v5, 0x1

    .line 2356
    invoke-virtual {v14, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2357
    .line 2358
    .line 2359
    :cond_4f
    const-string v2, "SM_RCC_PACKAGE_INTENT"

    .line 2360
    .line 2361
    invoke-virtual {v14, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2362
    .line 2363
    .line 2364
    const-string v0, "SM_RCC_PACKAGE_USERID"

    .line 2365
    .line 2366
    invoke-virtual {v14, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2367
    .line 2368
    .line 2369
    if-nez v18, :cond_50

    .line 2370
    .line 2371
    const/4 v0, 0x0

    .line 2372
    goto :goto_35

    .line 2373
    :cond_50
    invoke-virtual/range {v18 .. v18}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 2374
    .line 2375
    .line 2376
    move-result-object v0

    .line 2377
    :goto_35
    const-string v2, "SM_RCC_PACKAGE_OPTIONS"

    .line 2378
    .line 2379
    invoke-virtual {v14, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2380
    .line 2381
    .line 2382
    invoke-static {v11}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    .line 2383
    .line 2384
    .line 2385
    move-result v0

    .line 2386
    const/4 v5, 0x0

    .line 2387
    if-eqz v0, :cond_51

    .line 2388
    .line 2389
    iget-object v0, v13, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 2390
    .line 2391
    iget-object v2, v13, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 2392
    .line 2393
    iget v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->filterCallingUid:I

    .line 2394
    .line 2395
    invoke-static {v8, v8, v2}, Lcom/android/server/wm/ActivityStarter;->computeResolveFilterUid(III)I

    .line 2396
    .line 2397
    .line 2398
    move-result v24

    .line 2399
    const/16 v22, 0x0

    .line 2400
    .line 2401
    const/16 v23, 0x0

    .line 2402
    .line 2403
    move-object/from16 v19, v0

    .line 2404
    .line 2405
    move-object/from16 v20, v14

    .line 2406
    .line 2407
    move-object/from16 v21, v5

    .line 2408
    .line 2409
    move/from16 v25, v12

    .line 2410
    .line 2411
    invoke-virtual/range {v19 .. v25}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;IIII)Landroid/content/pm/ResolveInfo;

    .line 2412
    .line 2413
    .line 2414
    move-result-object v0

    .line 2415
    goto :goto_36

    .line 2416
    :cond_51
    iget-object v0, v13, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 2417
    .line 2418
    iget-object v2, v13, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 2419
    .line 2420
    iget v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->filterCallingUid:I

    .line 2421
    .line 2422
    invoke-static {v8, v8, v2}, Lcom/android/server/wm/ActivityStarter;->computeResolveFilterUid(III)I

    .line 2423
    .line 2424
    .line 2425
    move-result v24

    .line 2426
    const/16 v23, 0x0

    .line 2427
    .line 2428
    move-object/from16 v19, v0

    .line 2429
    .line 2430
    move-object/from16 v20, v14

    .line 2431
    .line 2432
    move-object/from16 v21, v5

    .line 2433
    .line 2434
    move/from16 v22, v11

    .line 2435
    .line 2436
    move/from16 v25, v12

    .line 2437
    .line 2438
    invoke-virtual/range {v19 .. v25}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;IIII)Landroid/content/pm/ResolveInfo;

    .line 2439
    .line 2440
    .line 2441
    move-result-object v0

    .line 2442
    :goto_36
    iget-object v2, v13, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 2443
    .line 2444
    move-object/from16 v19, v7

    .line 2445
    .line 2446
    move/from16 v7, v33

    .line 2447
    .line 2448
    const/4 v5, 0x0

    .line 2449
    invoke-virtual {v2, v14, v0, v7, v5}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    .line 2450
    .line 2451
    .line 2452
    move-result-object v2

    .line 2453
    if-eqz v2, :cond_52

    .line 2454
    .line 2455
    iget-object v4, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2456
    .line 2457
    iget-object v5, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 2458
    .line 2459
    invoke-virtual {v14, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2460
    .line 2461
    .line 2462
    move-object/from16 v16, v0

    .line 2463
    .line 2464
    move-object v4, v2

    .line 2465
    move/from16 v54, v8

    .line 2466
    .line 2467
    move/from16 v46, v12

    .line 2468
    .line 2469
    :goto_37
    const/4 v5, 0x0

    .line 2470
    goto :goto_3a

    .line 2471
    :cond_52
    const-string v0, "SmRcc can not resolve Activity , should never happen. Check Action "

    .line 2472
    .line 2473
    invoke-static {v0, v10, v9}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2474
    .line 2475
    .line 2476
    move/from16 v54, v8

    .line 2477
    .line 2478
    move/from16 v46, v12

    .line 2479
    .line 2480
    move-object/from16 v14, v19

    .line 2481
    .line 2482
    goto :goto_37

    .line 2483
    :cond_53
    :goto_38
    move-object/from16 v19, v7

    .line 2484
    .line 2485
    move v7, v9

    .line 2486
    move-object/from16 v30, v10

    .line 2487
    .line 2488
    goto/16 :goto_33

    .line 2489
    .line 2490
    :cond_54
    move-object/from16 v28, v0

    .line 2491
    .line 2492
    goto :goto_38

    .line 2493
    :goto_39
    move-object/from16 v14, v19

    .line 2494
    .line 2495
    :goto_3a
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_APPLOCK:Z

    .line 2496
    .line 2497
    const-string v10, "LAUNCH_FROM_NOTIFICATION"

    .line 2498
    .line 2499
    if-eqz v0, :cond_68

    .line 2500
    .line 2501
    invoke-virtual {v14}, Landroid/content/Intent;->getFlags()I

    .line 2502
    .line 2503
    .line 2504
    move-result v2

    .line 2505
    and-int v2, v2, v26

    .line 2506
    .line 2507
    move/from16 v26, v0

    .line 2508
    .line 2509
    move/from16 v33, v7

    .line 2510
    .line 2511
    if-eqz v2, :cond_55

    .line 2512
    .line 2513
    const/4 v2, 0x1

    .line 2514
    :goto_3b
    const/4 v7, -0x1

    .line 2515
    goto :goto_3c

    .line 2516
    :cond_55
    const/4 v2, 0x0

    .line 2517
    goto :goto_3b

    .line 2518
    :goto_3c
    invoke-virtual {v14, v10, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 2519
    .line 2520
    .line 2521
    move-result v0

    .line 2522
    const/4 v7, 0x1

    .line 2523
    if-ne v0, v7, :cond_56

    .line 2524
    .line 2525
    const/4 v0, 0x1

    .line 2526
    goto :goto_3d

    .line 2527
    :cond_56
    const/4 v0, 0x0

    .line 2528
    :goto_3d
    iget-object v7, v13, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2529
    .line 2530
    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    .line 2531
    .line 2532
    if-eqz v7, :cond_57

    .line 2533
    .line 2534
    if-eqz v4, :cond_57

    .line 2535
    .line 2536
    move-object/from16 v34, v10

    .line 2537
    .line 2538
    iget-object v10, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2539
    .line 2540
    if-eqz v10, :cond_58

    .line 2541
    .line 2542
    iget-object v10, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 2543
    .line 2544
    invoke-virtual {v7, v10}, Lcom/android/internal/app/AppLockPolicy;->isActivityInExceptionList(Ljava/lang/String;)Z

    .line 2545
    .line 2546
    .line 2547
    move-result v7

    .line 2548
    if-eqz v7, :cond_58

    .line 2549
    .line 2550
    iget-object v7, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2551
    .line 2552
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2553
    .line 2554
    .line 2555
    move-result v7

    .line 2556
    if-eqz v7, :cond_58

    .line 2557
    .line 2558
    const/4 v7, 0x0

    .line 2559
    goto :goto_3e

    .line 2560
    :cond_57
    move-object/from16 v34, v10

    .line 2561
    .line 2562
    :cond_58
    const/4 v7, 0x1

    .line 2563
    :goto_3e
    iget-object v10, v13, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2564
    .line 2565
    iget-object v10, v10, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    .line 2566
    .line 2567
    if-eqz v10, :cond_59

    .line 2568
    .line 2569
    if-eqz v4, :cond_59

    .line 2570
    .line 2571
    move/from16 v66, v12

    .line 2572
    .line 2573
    iget-object v12, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2574
    .line 2575
    if-eqz v12, :cond_5a

    .line 2576
    .line 2577
    iget-object v12, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 2578
    .line 2579
    invoke-virtual {v10, v12}, Lcom/android/internal/app/AppLockPolicy;->isAppLockBypassList(Ljava/lang/String;)Z

    .line 2580
    .line 2581
    .line 2582
    move-result v10

    .line 2583
    if-eqz v10, :cond_5a

    .line 2584
    .line 2585
    const/4 v10, 0x0

    .line 2586
    goto :goto_3f

    .line 2587
    :cond_59
    move/from16 v66, v12

    .line 2588
    .line 2589
    :cond_5a
    const/4 v10, 0x1

    .line 2590
    :goto_3f
    iget-object v12, v13, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 2591
    .line 2592
    invoke-virtual {v12, v11}, Lcom/android/server/wm/ActivityTaskSupervisor;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 2593
    .line 2594
    .line 2595
    move-result-object v12

    .line 2596
    if-eqz v4, :cond_67

    .line 2597
    .line 2598
    move/from16 v35, v8

    .line 2599
    .line 2600
    iget-object v8, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2601
    .line 2602
    if-eqz v8, :cond_66

    .line 2603
    .line 2604
    if-nez v0, :cond_66

    .line 2605
    .line 2606
    iget-object v0, v13, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2607
    .line 2608
    invoke-virtual {v0, v8}, Lcom/android/server/wm/ActivityTaskManagerService;->isAppLockedPackage(Ljava/lang/String;)Z

    .line 2609
    .line 2610
    .line 2611
    move-result v0

    .line 2612
    if-eqz v0, :cond_66

    .line 2613
    .line 2614
    iget-object v0, v13, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2615
    .line 2616
    iget-object v8, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2617
    .line 2618
    invoke-virtual {v0, v8}, Lcom/android/server/wm/ActivityTaskManagerService;->isAppLockedVerifying(Ljava/lang/String;)Z

    .line 2619
    .line 2620
    .line 2621
    move-result v0

    .line 2622
    if-nez v0, :cond_66

    .line 2623
    .line 2624
    if-nez v2, :cond_66

    .line 2625
    .line 2626
    invoke-static {v11}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 2627
    .line 2628
    .line 2629
    move-result v0

    .line 2630
    if-nez v0, :cond_5b

    .line 2631
    .line 2632
    if-eqz v12, :cond_5c

    .line 2633
    .line 2634
    invoke-virtual {v12}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    .line 2635
    .line 2636
    .line 2637
    move-result v0

    .line 2638
    if-eqz v0, :cond_5c

    .line 2639
    .line 2640
    :cond_5b
    invoke-static {v11}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    .line 2641
    .line 2642
    .line 2643
    move-result v0

    .line 2644
    if-eqz v0, :cond_66

    .line 2645
    .line 2646
    invoke-static {}, Lcom/android/internal/app/AppLockPolicy;->isSupportSSecure()Z

    .line 2647
    .line 2648
    .line 2649
    move-result v0

    .line 2650
    if-nez v0, :cond_66

    .line 2651
    .line 2652
    :cond_5c
    if-eqz v7, :cond_66

    .line 2653
    .line 2654
    if-eqz v10, :cond_66

    .line 2655
    .line 2656
    move-object/from16 v10, v48

    .line 2657
    .line 2658
    if-eqz v48, :cond_5f

    .line 2659
    .line 2660
    iget-boolean v0, v10, Lcom/android/server/wm/TaskFragment;->mIsEmbedded:Z

    .line 2661
    .line 2662
    if-nez v0, :cond_5d

    .line 2663
    .line 2664
    goto :goto_40

    .line 2665
    :cond_5d
    move-object/from16 v7, v18

    .line 2666
    .line 2667
    :cond_5e
    move/from16 v8, v33

    .line 2668
    .line 2669
    move/from16 v3, v35

    .line 2670
    .line 2671
    goto/16 :goto_47

    .line 2672
    .line 2673
    :cond_5f
    :goto_40
    iget-object v0, v13, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2674
    .line 2675
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 2676
    .line 2677
    iget-object v2, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2678
    .line 2679
    move-object/from16 v7, v18

    .line 2680
    .line 2681
    invoke-static {v0, v2, v14, v7, v6}, Lcom/android/internal/app/AppLockPolicy;->skipLockWhenStart(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Landroid/app/ActivityOptions;Ljava/lang/String;)Z

    .line 2682
    .line 2683
    .line 2684
    move-result v0

    .line 2685
    new-instance v2, Ljava/lang/StringBuilder;

    .line 2686
    .line 2687
    const-string v8, "AppLocked pkgName:"

    .line 2688
    .line 2689
    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2690
    .line 2691
    .line 2692
    iget-object v8, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2693
    .line 2694
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2695
    .line 2696
    .line 2697
    move-object/from16 v8, v30

    .line 2698
    .line 2699
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2700
    .line 2701
    .line 2702
    iget-object v8, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 2703
    .line 2704
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2705
    .line 2706
    .line 2707
    const-string v8, " skipLockWhenStart:"

    .line 2708
    .line 2709
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2710
    .line 2711
    .line 2712
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2713
    .line 2714
    .line 2715
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2716
    .line 2717
    .line 2718
    move-result-object v2

    .line 2719
    invoke-static {v9, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2720
    .line 2721
    .line 2722
    if-nez v0, :cond_5e

    .line 2723
    .line 2724
    new-instance v0, Landroid/content/Intent;

    .line 2725
    .line 2726
    invoke-virtual {v14}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2727
    .line 2728
    .line 2729
    move-result-object v2

    .line 2730
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2731
    .line 2732
    .line 2733
    invoke-virtual {v14}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 2734
    .line 2735
    .line 2736
    move-result-object v2

    .line 2737
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2738
    .line 2739
    .line 2740
    if-eqz v7, :cond_60

    .line 2741
    .line 2742
    const/4 v2, 0x1

    .line 2743
    invoke-virtual {v7, v2}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    .line 2744
    .line 2745
    .line 2746
    goto :goto_41

    .line 2747
    :cond_60
    const/4 v2, 0x1

    .line 2748
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 2749
    .line 2750
    .line 2751
    move-result-object v7

    .line 2752
    invoke-virtual {v7, v2}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    .line 2753
    .line 2754
    .line 2755
    move-result-object v7

    .line 2756
    :goto_41
    iget-object v8, v13, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2757
    .line 2758
    new-array v12, v2, [Landroid/content/Intent;

    .line 2759
    .line 2760
    const/4 v2, 0x0

    .line 2761
    aput-object v14, v12, v2

    .line 2762
    .line 2763
    filled-new-array {v5}, [Ljava/lang/String;

    .line 2764
    .line 2765
    .line 2766
    move-result-object v64

    .line 2767
    const/16 v62, 0x0

    .line 2768
    .line 2769
    const/16 v56, 0x0

    .line 2770
    .line 2771
    const/16 v53, 0x2

    .line 2772
    .line 2773
    const/16 v59, 0x0

    .line 2774
    .line 2775
    const/high16 v57, 0x50000000

    .line 2776
    .line 2777
    const/16 v58, 0x0

    .line 2778
    .line 2779
    move-object/from16 v52, v8

    .line 2780
    .line 2781
    move/from16 v55, v11

    .line 2782
    .line 2783
    move-object/from16 v60, v6

    .line 2784
    .line 2785
    move-object/from16 v61, v15

    .line 2786
    .line 2787
    move-object/from16 v63, v12

    .line 2788
    .line 2789
    invoke-virtual/range {v52 .. v64}, Lcom/android/server/wm/ActivityTaskManagerService;->getIntentSenderLocked(IIIIILandroid/os/Bundle;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;)Lcom/android/server/am/PendingIntentRecord;

    .line 2790
    .line 2791
    .line 2792
    move-result-object v2

    .line 2793
    invoke-virtual {v14}, Landroid/content/Intent;->getFlags()I

    .line 2794
    .line 2795
    .line 2796
    move-result v5

    .line 2797
    iget-object v8, v13, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2798
    .line 2799
    invoke-virtual {v8}, Lcom/android/server/wm/ActivityTaskManagerService;->getAppLockedCheckAction()Ljava/lang/String;

    .line 2800
    .line 2801
    .line 2802
    move-result-object v8

    .line 2803
    new-instance v12, Landroid/content/Intent;

    .line 2804
    .line 2805
    invoke-direct {v12, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2806
    .line 2807
    .line 2808
    const/high16 v17, 0x8800000

    .line 2809
    .line 2810
    or-int v5, v5, v17

    .line 2811
    .line 2812
    invoke-virtual {v12, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2813
    .line 2814
    .line 2815
    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2816
    .line 2817
    invoke-virtual {v12, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2818
    .line 2819
    .line 2820
    new-instance v3, Landroid/content/IntentSender;

    .line 2821
    .line 2822
    invoke-direct {v3, v2}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    .line 2823
    .line 2824
    .line 2825
    invoke-virtual {v12, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2826
    .line 2827
    .line 2828
    if-eqz v77, :cond_61

    .line 2829
    .line 2830
    move-object/from16 v1, v28

    .line 2831
    .line 2832
    const/4 v2, 0x1

    .line 2833
    invoke-virtual {v12, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2834
    .line 2835
    .line 2836
    :cond_61
    const-string v1, "LOCKED_PACKAGE_INTENT"

    .line 2837
    .line 2838
    invoke-virtual {v12, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2839
    .line 2840
    .line 2841
    const-string v0, "LOCKED_PACKAGE_NAME"

    .line 2842
    .line 2843
    iget-object v1, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2844
    .line 2845
    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2846
    .line 2847
    .line 2848
    const-string v0, "LOCKED_PACKAGE_USERID"

    .line 2849
    .line 2850
    invoke-virtual {v12, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2851
    .line 2852
    .line 2853
    if-nez v27, :cond_62

    .line 2854
    .line 2855
    const/4 v0, 0x0

    .line 2856
    goto :goto_42

    .line 2857
    :cond_62
    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/ActivityRecord;->canShowWhenLocked()Z

    .line 2858
    .line 2859
    .line 2860
    move-result v0

    .line 2861
    :goto_42
    const-string v1, "LOCKED_APP_CAN_SHOW_WHEN_LOCKED"

    .line 2862
    .line 2863
    invoke-virtual {v12, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2864
    .line 2865
    .line 2866
    if-nez v7, :cond_63

    .line 2867
    .line 2868
    const/4 v0, 0x0

    .line 2869
    goto :goto_43

    .line 2870
    :cond_63
    invoke-virtual {v7}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 2871
    .line 2872
    .line 2873
    move-result-object v0

    .line 2874
    :goto_43
    const-string v1, "LOCKED_PACKAGE_ACTIVITY_OPTIONS"

    .line 2875
    .line 2876
    invoke-virtual {v12, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2877
    .line 2878
    .line 2879
    const-string v0, "com.samsung.android.applock"

    .line 2880
    .line 2881
    invoke-virtual {v12, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2882
    .line 2883
    .line 2884
    invoke-static {v11}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    .line 2885
    .line 2886
    .line 2887
    move-result v0

    .line 2888
    const/4 v1, 0x0

    .line 2889
    if-eqz v0, :cond_64

    .line 2890
    .line 2891
    iget-object v0, v13, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 2892
    .line 2893
    iget-object v2, v13, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 2894
    .line 2895
    iget v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->filterCallingUid:I

    .line 2896
    .line 2897
    move/from16 v3, v35

    .line 2898
    .line 2899
    invoke-static {v3, v3, v2}, Lcom/android/server/wm/ActivityStarter;->computeResolveFilterUid(III)I

    .line 2900
    .line 2901
    .line 2902
    move-result v24

    .line 2903
    const/16 v22, 0x0

    .line 2904
    .line 2905
    const/16 v23, 0x0

    .line 2906
    .line 2907
    move-object/from16 v19, v0

    .line 2908
    .line 2909
    move-object/from16 v20, v12

    .line 2910
    .line 2911
    move-object/from16 v21, v1

    .line 2912
    .line 2913
    move/from16 v25, v66

    .line 2914
    .line 2915
    invoke-virtual/range {v19 .. v25}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;IIII)Landroid/content/pm/ResolveInfo;

    .line 2916
    .line 2917
    .line 2918
    move-result-object v0

    .line 2919
    goto :goto_44

    .line 2920
    :cond_64
    move/from16 v3, v35

    .line 2921
    .line 2922
    iget-object v0, v13, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 2923
    .line 2924
    iget-object v2, v13, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 2925
    .line 2926
    iget v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->filterCallingUid:I

    .line 2927
    .line 2928
    invoke-static {v3, v3, v2}, Lcom/android/server/wm/ActivityStarter;->computeResolveFilterUid(III)I

    .line 2929
    .line 2930
    .line 2931
    move-result v24

    .line 2932
    const/16 v23, 0x0

    .line 2933
    .line 2934
    move-object/from16 v19, v0

    .line 2935
    .line 2936
    move-object/from16 v20, v12

    .line 2937
    .line 2938
    move-object/from16 v21, v1

    .line 2939
    .line 2940
    move/from16 v22, v11

    .line 2941
    .line 2942
    move/from16 v25, v66

    .line 2943
    .line 2944
    invoke-virtual/range {v19 .. v25}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;IIII)Landroid/content/pm/ResolveInfo;

    .line 2945
    .line 2946
    .line 2947
    move-result-object v0

    .line 2948
    :goto_44
    iget-object v2, v13, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 2949
    .line 2950
    move/from16 v5, v33

    .line 2951
    .line 2952
    const/4 v1, 0x0

    .line 2953
    invoke-virtual {v2, v12, v0, v5, v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    .line 2954
    .line 2955
    .line 2956
    move-result-object v2

    .line 2957
    if-eqz v2, :cond_65

    .line 2958
    .line 2959
    iget-object v1, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2960
    .line 2961
    iget-object v4, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 2962
    .line 2963
    invoke-virtual {v12, v1, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2964
    .line 2965
    .line 2966
    move-object v4, v2

    .line 2967
    move/from16 v54, v3

    .line 2968
    .line 2969
    move v8, v5

    .line 2970
    move-object v14, v12

    .line 2971
    move/from16 v46, v66

    .line 2972
    .line 2973
    move-object v12, v7

    .line 2974
    :goto_45
    const/4 v7, 0x0

    .line 2975
    goto :goto_48

    .line 2976
    :cond_65
    const-string v0, "AppLock can not resolve Activity, should never happen. Check Action "

    .line 2977
    .line 2978
    invoke-static {v0, v8, v9}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2979
    .line 2980
    .line 2981
    move/from16 v54, v3

    .line 2982
    .line 2983
    move v8, v5

    .line 2984
    move-object v12, v7

    .line 2985
    move-object/from16 v0, v16

    .line 2986
    .line 2987
    move/from16 v46, v66

    .line 2988
    .line 2989
    goto :goto_45

    .line 2990
    :cond_66
    move-object/from16 v7, v18

    .line 2991
    .line 2992
    move/from16 v8, v33

    .line 2993
    .line 2994
    move/from16 v3, v35

    .line 2995
    .line 2996
    :goto_46
    move-object/from16 v10, v48

    .line 2997
    .line 2998
    goto :goto_47

    .line 2999
    :cond_67
    move v3, v8

    .line 3000
    move-object/from16 v7, v18

    .line 3001
    .line 3002
    move/from16 v8, v33

    .line 3003
    .line 3004
    goto :goto_46

    .line 3005
    :cond_68
    move/from16 v26, v0

    .line 3006
    .line 3007
    move v3, v8

    .line 3008
    move-object/from16 v34, v10

    .line 3009
    .line 3010
    move/from16 v66, v12

    .line 3011
    .line 3012
    move-object/from16 v10, v48

    .line 3013
    .line 3014
    move v8, v7

    .line 3015
    move-object/from16 v7, v18

    .line 3016
    .line 3017
    :goto_47
    move-object v12, v7

    .line 3018
    move-object/from16 v0, v16

    .line 3019
    .line 3020
    move-object v7, v5

    .line 3021
    :goto_48
    if-eqz v0, :cond_69

    .line 3022
    .line 3023
    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->auxiliaryInfo:Landroid/content/pm/AuxiliaryResolveInfo;

    .line 3024
    .line 3025
    if-eqz v2, :cond_69

    .line 3026
    .line 3027
    move-object/from16 v5, p1

    .line 3028
    .line 3029
    iget-object v4, v5, Lcom/android/server/wm/ActivityStarter$Request;->ephemeralIntent:Landroid/content/Intent;

    .line 3030
    .line 3031
    move-object/from16 v1, p0

    .line 3032
    .line 3033
    move-object/from16 v16, v29

    .line 3034
    .line 3035
    move v14, v3

    .line 3036
    move-object v3, v4

    .line 3037
    move-object v4, v6

    .line 3038
    move-object/from16 v20, v15

    .line 3039
    .line 3040
    move-object v15, v5

    .line 3041
    move-object/from16 v5, v20

    .line 3042
    .line 3043
    move-object/from16 v18, v6

    .line 3044
    .line 3045
    move/from16 v65, v11

    .line 3046
    .line 3047
    const/4 v11, -0x1

    .line 3048
    move-object/from16 v6, v45

    .line 3049
    .line 3050
    move/from16 v17, v14

    .line 3051
    .line 3052
    move v14, v8

    .line 3053
    move/from16 v8, v65

    .line 3054
    .line 3055
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/wm/ActivityStarter;->createLaunchIntent(Landroid/content/pm/AuxiliaryResolveInfo;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;I)Landroid/content/Intent;

    .line 3056
    .line 3057
    .line 3058
    move-result-object v1

    .line 3059
    iget-object v2, v13, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 3060
    .line 3061
    const/4 v3, 0x0

    .line 3062
    invoke-virtual {v2, v1, v0, v14, v3}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    .line 3063
    .line 3064
    .line 3065
    move-result-object v4

    .line 3066
    move-object/from16 v73, v1

    .line 3067
    .line 3068
    move-object/from16 v51, v3

    .line 3069
    .line 3070
    move-object/from16 v74, v51

    .line 3071
    .line 3072
    move v6, v14

    .line 3073
    move/from16 v70, v17

    .line 3074
    .line 3075
    move/from16 v69, v66

    .line 3076
    .line 3077
    goto :goto_49

    .line 3078
    :cond_69
    move/from16 v17, v3

    .line 3079
    .line 3080
    move-object/from16 v18, v6

    .line 3081
    .line 3082
    move v6, v8

    .line 3083
    move/from16 v65, v11

    .line 3084
    .line 3085
    move-object/from16 v20, v15

    .line 3086
    .line 3087
    move-object/from16 v16, v29

    .line 3088
    .line 3089
    const/4 v3, 0x0

    .line 3090
    const/4 v11, -0x1

    .line 3091
    move-object/from16 v15, p1

    .line 3092
    .line 3093
    move-object/from16 v74, v7

    .line 3094
    .line 3095
    move-object/from16 v73, v14

    .line 3096
    .line 3097
    move/from16 v69, v46

    .line 3098
    .line 3099
    move/from16 v70, v54

    .line 3100
    .line 3101
    :goto_49
    if-nez v67, :cond_6a

    .line 3102
    .line 3103
    if-lez v66, :cond_6a

    .line 3104
    .line 3105
    iget-object v0, v13, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 3106
    .line 3107
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    .line 3108
    .line 3109
    move/from16 v1, v66

    .line 3110
    .line 3111
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowProcessControllerMap;->getProcess(I)Lcom/android/server/wm/WindowProcessController;

    .line 3112
    .line 3113
    .line 3114
    move-result-object v0

    .line 3115
    if-eqz v0, :cond_6a

    .line 3116
    .line 3117
    goto :goto_4a

    .line 3118
    :cond_6a
    move-object/from16 v0, v67

    .line 3119
    .line 3120
    :goto_4a
    iget-object v1, v13, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 3121
    .line 3122
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    .line 3123
    .line 3124
    .line 3125
    move-result-object v2

    .line 3126
    iget-boolean v5, v15, Lcom/android/server/wm/ActivityStarter$Request;->componentSpecified:Z

    .line 3127
    .line 3128
    if-eqz v32, :cond_6b

    .line 3129
    .line 3130
    const/16 v81, 0x1

    .line 3131
    .line 3132
    goto :goto_4b

    .line 3133
    :cond_6b
    const/16 v81, 0x0

    .line 3134
    .line 3135
    :goto_4b
    if-nez v2, :cond_6c

    .line 3136
    .line 3137
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getConfiguration()Landroid/content/res/Configuration;

    .line 3138
    .line 3139
    .line 3140
    move-result-object v2

    .line 3141
    :cond_6c
    move-object/from16 v76, v2

    .line 3142
    .line 3143
    new-instance v2, Lcom/android/server/wm/ActivityRecord;

    .line 3144
    .line 3145
    move-object/from16 v66, v2

    .line 3146
    .line 3147
    iget-object v7, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 3148
    .line 3149
    move-object/from16 v82, v7

    .line 3150
    .line 3151
    const/16 v86, 0x0

    .line 3152
    .line 3153
    const-wide/16 v87, 0x0

    .line 3154
    .line 3155
    const/16 v85, 0x0

    .line 3156
    .line 3157
    move-object/from16 v67, v1

    .line 3158
    .line 3159
    move-object/from16 v68, v0

    .line 3160
    .line 3161
    move-object/from16 v71, v18

    .line 3162
    .line 3163
    move-object/from16 v72, v20

    .line 3164
    .line 3165
    move-object/from16 v75, v4

    .line 3166
    .line 3167
    move/from16 v80, v5

    .line 3168
    .line 3169
    move-object/from16 v83, v12

    .line 3170
    .line 3171
    move-object/from16 v84, v27

    .line 3172
    .line 3173
    invoke-direct/range {v66 .. v88}, Lcom/android/server/wm/ActivityRecord;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/WindowProcessController;IILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;IZZLcom/android/server/wm/ActivityTaskSupervisor;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;Landroid/os/PersistableBundle;Landroid/app/ActivityManager$TaskDescription;J)V

    .line 3174
    .line 3175
    .line 3176
    iput-object v2, v13, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 3177
    .line 3178
    iget-object v1, v13, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    .line 3179
    .line 3180
    iget-object v5, v2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 3181
    .line 3182
    invoke-virtual {v1, v5}, Lcom/android/server/wm/ActivityStartInterceptor;->hasAliasActivity(Landroid/content/Intent;)Z

    .line 3183
    .line 3184
    .line 3185
    move-result v1

    .line 3186
    if-eqz v1, :cond_6d

    .line 3187
    .line 3188
    const/4 v1, 0x1

    .line 3189
    iput-boolean v1, v2, Lcom/android/server/wm/ActivityRecord;->mIsAliasActivity:Z

    .line 3190
    .line 3191
    :cond_6d
    iget-object v1, v2, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    .line 3192
    .line 3193
    move-object/from16 v5, v27

    .line 3194
    .line 3195
    if-nez v1, :cond_6e

    .line 3196
    .line 3197
    if-eqz v5, :cond_6e

    .line 3198
    .line 3199
    iget-object v1, v5, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    .line 3200
    .line 3201
    iput-object v1, v2, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    .line 3202
    .line 3203
    :cond_6e
    iget-object v1, v13, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 3204
    .line 3205
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 3206
    .line 3207
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    .line 3208
    .line 3209
    .line 3210
    move-result v1

    .line 3211
    if-eqz v0, :cond_6f

    .line 3212
    .line 3213
    iget-object v7, v0, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    .line 3214
    .line 3215
    if-eqz v7, :cond_6f

    .line 3216
    .line 3217
    iget-object v1, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 3218
    .line 3219
    iget v3, v0, Lcom/android/server/wm/WindowProcessController;->mUserId:I

    .line 3220
    .line 3221
    iget v0, v0, Lcom/android/server/wm/WindowProcessController;->mPid:I

    .line 3222
    .line 3223
    move/from16 v62, v0

    .line 3224
    .line 3225
    move-object/from16 v54, v1

    .line 3226
    .line 3227
    move/from16 v55, v3

    .line 3228
    .line 3229
    goto :goto_4c

    .line 3230
    :cond_6f
    move/from16 v55, v1

    .line 3231
    .line 3232
    move-object/from16 v54, v3

    .line 3233
    .line 3234
    const/16 v62, 0x0

    .line 3235
    .line 3236
    :goto_4c
    sget-object v52, Lcom/android/server/am/BaseRestrictionMgr$BaseRestrictionMgrHolder;->INSTANCE:Lcom/android/server/am/BaseRestrictionMgr;

    .line 3237
    .line 3238
    new-instance v0, Landroid/content/ComponentName;

    .line 3239
    .line 3240
    iget-object v1, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 3241
    .line 3242
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 3243
    .line 3244
    iget-object v3, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 3245
    .line 3246
    invoke-direct {v0, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3247
    .line 3248
    .line 3249
    const/16 v57, 0x0

    .line 3250
    .line 3251
    const/16 v61, 0x0

    .line 3252
    .line 3253
    const-string v56, "activity"

    .line 3254
    .line 3255
    const/16 v59, 0x0

    .line 3256
    .line 3257
    const/16 v63, 0x0

    .line 3258
    .line 3259
    move-object/from16 v53, v0

    .line 3260
    .line 3261
    move/from16 v58, v65

    .line 3262
    .line 3263
    move-object/from16 v60, v4

    .line 3264
    .line 3265
    invoke-virtual/range {v52 .. v63}, Lcom/android/server/am/BaseRestrictionMgr;->isRestrictedPackage(Landroid/content/ComponentName;Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;IZLandroid/content/pm/ActivityInfo;Ljava/lang/String;II)Z

    .line 3266
    .line 3267
    .line 3268
    move-result v0

    .line 3269
    if-eqz v0, :cond_70

    .line 3270
    .line 3271
    const/16 v0, -0xc8

    .line 3272
    .line 3273
    return v0

    .line 3274
    :cond_70
    if-eqz v26, :cond_72

    .line 3275
    .line 3276
    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 3277
    .line 3278
    if-eqz v0, :cond_72

    .line 3279
    .line 3280
    :try_start_b
    new-instance v0, Landroid/content/Intent;

    .line 3281
    .line 3282
    iget-object v1, v2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 3283
    .line 3284
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 3285
    .line 3286
    .line 3287
    move-object/from16 v1, v34

    .line 3288
    .line 3289
    invoke-virtual {v0, v1, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 3290
    .line 3291
    .line 3292
    move-result v0

    .line 3293
    const/4 v1, 0x1

    .line 3294
    if-eq v0, v1, :cond_71

    .line 3295
    .line 3296
    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 3297
    .line 3298
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    .line 3299
    .line 3300
    .line 3301
    move-result v0

    .line 3302
    const/high16 v1, 0x4000000

    .line 3303
    .line 3304
    and-int/2addr v0, v1

    .line 3305
    if-eqz v0, :cond_72

    .line 3306
    .line 3307
    const/4 v1, 0x1

    .line 3308
    goto :goto_4d

    .line 3309
    :catch_7
    move-exception v0

    .line 3310
    goto :goto_4e

    .line 3311
    :cond_71
    :goto_4d
    iput-boolean v1, v2, Lcom/android/server/wm/ActivityRecord;->mLaunchingRequestedFromNotification:Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    .line 3312
    .line 3313
    goto :goto_4f

    .line 3314
    :goto_4e
    const-string v1, "Exception while parsing intent but ignorable, was : "

    .line 3315
    .line 3316
    invoke-static {v0, v1, v9}, Lcom/android/server/KnoxCaptureInputFilter$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 3317
    .line 3318
    .line 3319
    :cond_72
    :goto_4f
    iget-object v0, v13, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 3320
    .line 3321
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    .line 3322
    .line 3323
    if-eqz v0, :cond_73

    .line 3324
    .line 3325
    iget-object v1, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 3326
    .line 3327
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 3328
    .line 3329
    iget v0, v0, Lcom/android/server/wm/WindowProcessController;->mUid:I

    .line 3330
    .line 3331
    if-ne v1, v0, :cond_73

    .line 3332
    .line 3333
    const/16 v31, 0x1

    .line 3334
    .line 3335
    goto :goto_50

    .line 3336
    :cond_73
    const/16 v31, 0x0

    .line 3337
    .line 3338
    :goto_50
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_WORKAROUND_RESPONSE_SPEED:Z

    .line 3339
    .line 3340
    if-eqz v0, :cond_74

    .line 3341
    .line 3342
    iget-object v0, v13, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 3343
    .line 3344
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 3345
    .line 3346
    iget-object v0, v0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 3347
    .line 3348
    iget-object v1, v13, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 3349
    .line 3350
    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getTopFocusedDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 3351
    .line 3352
    .line 3353
    move-result-object v1

    .line 3354
    invoke-virtual {v0, v1}, Lcom/android/server/wm/TransitionController;->hasTransientLaunch(Lcom/android/server/wm/DisplayContent;)Z

    .line 3355
    .line 3356
    .line 3357
    move-result v0

    .line 3358
    if-eqz v0, :cond_74

    .line 3359
    .line 3360
    iget-object v0, v13, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 3361
    .line 3362
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->stopAppSwitches()V

    .line 3363
    .line 3364
    .line 3365
    goto :goto_51

    .line 3366
    :cond_74
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allows()Z

    .line 3367
    .line 3368
    .line 3369
    move-result v0

    .line 3370
    if-eqz v0, :cond_75

    .line 3371
    .line 3372
    if-nez v31, :cond_75

    .line 3373
    .line 3374
    iget-object v0, v13, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 3375
    .line 3376
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->resumeAppSwitches()V

    .line 3377
    .line 3378
    .line 3379
    :cond_75
    :goto_51
    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter$Request;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 3380
    .line 3381
    move-object/from16 v1, p0

    .line 3382
    .line 3383
    move-object v3, v5

    .line 3384
    move-object/from16 v4, v32

    .line 3385
    .line 3386
    move-object v5, v0

    .line 3387
    move-object v7, v12

    .line 3388
    move-object/from16 v8, v44

    .line 3389
    .line 3390
    move-object v9, v10

    .line 3391
    move-object/from16 v10, v16

    .line 3392
    .line 3393
    move-object/from16 v11, v51

    .line 3394
    .line 3395
    move/from16 v12, v17

    .line 3396
    .line 3397
    invoke-virtual/range {v1 .. v12}, Lcom/android/server/wm/ActivityStarter;->startActivityUnchecked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ILandroid/app/ActivityOptions;Lcom/android/server/wm/Task;Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;Lcom/android/server/uri/NeededUriGrants;I)I

    .line 3398
    .line 3399
    .line 3400
    move-result v0

    .line 3401
    iput v0, v13, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityResult:I

    .line 3402
    .line 3403
    iget-object v1, v15, Lcom/android/server/wm/ActivityStarter$Request;->outActivity:[Lcom/android/server/wm/ActivityRecord;

    .line 3404
    .line 3405
    if-eqz v1, :cond_76

    .line 3406
    .line 3407
    iget-object v2, v13, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 3408
    .line 3409
    const/4 v3, 0x0

    .line 3410
    aput-object v2, v1, v3

    .line 3411
    .line 3412
    :cond_76
    return v0

    .line 3413
    :catch_8
    move-exception v0

    .line 3414
    move/from16 v65, v11

    .line 3415
    .line 3416
    move-object v1, v14

    .line 3417
    move-object/from16 v15, v34

    .line 3418
    .line 3419
    move/from16 v4, v53

    .line 3420
    .line 3421
    iget-object v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->ephemeralIntent:Landroid/content/Intent;

    .line 3422
    .line 3423
    if-eqz v1, :cond_7a

    .line 3424
    .line 3425
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 3426
    .line 3427
    .line 3428
    move-result-object v2

    .line 3429
    if-nez v2, :cond_77

    .line 3430
    .line 3431
    invoke-virtual {v1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    .line 3432
    .line 3433
    .line 3434
    move-result-object v2

    .line 3435
    if-eqz v2, :cond_7a

    .line 3436
    .line 3437
    :cond_77
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 3438
    .line 3439
    .line 3440
    move-result-object v2

    .line 3441
    if-eqz v2, :cond_78

    .line 3442
    .line 3443
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 3444
    .line 3445
    .line 3446
    move-result-object v1

    .line 3447
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 3448
    .line 3449
    .line 3450
    move-result-object v1

    .line 3451
    goto :goto_52

    .line 3452
    :cond_78
    invoke-virtual {v1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    .line 3453
    .line 3454
    .line 3455
    move-result-object v1

    .line 3456
    :goto_52
    iget-object v2, v13, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 3457
    .line 3458
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    .line 3459
    .line 3460
    .line 3461
    move-result-object v2

    .line 3462
    move/from16 v3, v65

    .line 3463
    .line 3464
    const/4 v5, 0x1

    .line 3465
    invoke-virtual {v2, v4, v3, v1, v5}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(IILjava/lang/String;Z)Z

    .line 3466
    .line 3467
    .line 3468
    move-result v1

    .line 3469
    if-eqz v1, :cond_7a

    .line 3470
    .line 3471
    if-eqz v77, :cond_79

    .line 3472
    .line 3473
    const/16 v40, 0x0

    .line 3474
    .line 3475
    const/16 v41, 0x0

    .line 3476
    .line 3477
    const/16 v36, -0x1

    .line 3478
    .line 3479
    const/16 v39, 0x0

    .line 3480
    .line 3481
    const/16 v42, 0x0

    .line 3482
    .line 3483
    const/16 v43, 0x0

    .line 3484
    .line 3485
    move-object/from16 v35, v77

    .line 3486
    .line 3487
    move-object/from16 v37, v78

    .line 3488
    .line 3489
    move/from16 v38, v79

    .line 3490
    .line 3491
    invoke-virtual/range {v35 .. v43}, Lcom/android/server/wm/ActivityRecord;->sendResult(ILjava/lang/String;IILandroid/content/Intent;Landroid/os/IBinder;Lcom/android/server/uri/NeededUriGrants;Z)V

    .line 3492
    .line 3493
    .line 3494
    :cond_79
    invoke-static {v15}, Lcom/android/server/wm/SafeActivityOptions;->abort(Lcom/android/server/wm/SafeActivityOptions;)V

    .line 3495
    .line 3496
    .line 3497
    const/16 v1, -0x5c

    .line 3498
    .line 3499
    return v1

    .line 3500
    :cond_7a
    throw v0

    .line 3501
    :cond_7b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 3502
    .line 3503
    const-string v1, "Need to specify a reason."

    .line 3504
    .line 3505
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 3506
    .line 3507
    .line 3508
    throw v0
.end method

.method public final getOrCreateRootTask(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/Task;Landroid/app/ActivityOptions;)Lcom/android/server/wm/Task;
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v10, p1

    .line 3
    .line 4
    move-object/from16 v11, p3

    .line 5
    .line 6
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 7
    .line 8
    const/4 v12, 0x1

    .line 9
    const/4 v13, 0x0

    .line 10
    const/4 v14, 0x0

    .line 11
    if-eqz v1, :cond_d

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/content/Intent;->getLaunchOverTargetTaskId()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, -0x1

    .line 18
    if-eq v1, v2, :cond_d

    .line 19
    .line 20
    if-eqz v10, :cond_0

    .line 21
    .line 22
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeStandardOrUndefined()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->isResizeable()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    if-eqz v11, :cond_1

    .line 35
    .line 36
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    :cond_0
    move-object v1, v14

    .line 43
    goto/16 :goto_4

    .line 44
    .line 45
    :cond_1
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 46
    .line 47
    invoke-virtual {v1}, Landroid/content/Intent;->getLaunchOverTargetTaskId()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    invoke-virtual {p0, v1, v11}, Lcom/android/server/wm/ActivityStarter;->canMoveTaskToBottomTask(ILcom/android/server/wm/Task;)Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-eqz v11, :cond_2

    .line 56
    .line 57
    if-nez v3, :cond_2

    .line 58
    .line 59
    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 60
    .line 61
    invoke-virtual {v3}, Landroid/content/Intent;->getForceLaunchOverTargetTask()Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-eqz v3, :cond_0

    .line 66
    .line 67
    :cond_2
    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 68
    .line 69
    if-eq v1, v2, :cond_3

    .line 70
    .line 71
    const/16 v2, -0x2710

    .line 72
    .line 73
    if-eq v1, v2, :cond_3

    .line 74
    .line 75
    invoke-virtual {v3, v1, v13, v14, v13}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(IILandroid/app/ActivityOptions;Z)Lcom/android/server/wm/Task;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    goto :goto_0

    .line 80
    :cond_3
    move-object v1, v14

    .line 81
    :goto_0
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 82
    .line 83
    if-eqz v2, :cond_4

    .line 84
    .line 85
    invoke-virtual {v2}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedActivity()Lcom/android/server/wm/ActivityRecord;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    goto :goto_1

    .line 90
    :cond_4
    move-object v2, v14

    .line 91
    :goto_1
    const/4 v4, 0x5

    .line 92
    if-eqz v1, :cond_5

    .line 93
    .line 94
    invoke-virtual {v1, v12, v13}, Lcom/android/server/wm/Task;->getTopVisibleActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    if-eqz v5, :cond_5

    .line 99
    .line 100
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 101
    .line 102
    .line 103
    move-result v5

    .line 104
    if-nez v5, :cond_8

    .line 105
    .line 106
    iget v5, v1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 107
    .line 108
    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mSavedFrontTaskIds:Landroid/util/SparseBooleanArray;

    .line 109
    .line 110
    invoke-virtual {v6, v5, v13}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    .line 111
    .line 112
    .line 113
    move-result v5

    .line 114
    if-eqz v5, :cond_5

    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_5
    if-eqz v2, :cond_7

    .line 118
    .line 119
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    if-eq v1, v12, :cond_6

    .line 124
    .line 125
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    if-eq v1, v4, :cond_6

    .line 130
    .line 131
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-static {v1}, Landroid/app/WindowConfiguration;->isSplitScreenWindowingMode(Landroid/app/WindowConfiguration;)Z

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    if-eqz v1, :cond_7

    .line 140
    .line 141
    :cond_6
    iget-object v1, v2, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_7
    move-object v1, v14

    .line 145
    :cond_8
    :goto_2
    if-eqz v1, :cond_0

    .line 146
    .line 147
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getStageType()I

    .line 152
    .line 153
    .line 154
    move-result v2

    .line 155
    if-eqz v2, :cond_9

    .line 156
    .line 157
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    goto :goto_4

    .line 166
    :cond_9
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 167
    .line 168
    .line 169
    move-result v2

    .line 170
    if-eq v2, v12, :cond_a

    .line 171
    .line 172
    if-ne v2, v4, :cond_0

    .line 173
    .line 174
    :cond_a
    if-nez p4, :cond_b

    .line 175
    .line 176
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 177
    .line 178
    .line 179
    move-result-object v4

    .line 180
    iput-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 181
    .line 182
    goto :goto_3

    .line 183
    :cond_b
    move-object/from16 v4, p4

    .line 184
    .line 185
    :goto_3
    invoke-virtual {v4, v2}, Landroid/app/ActivityOptions;->setForceLaunchWindowingMode(I)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 189
    .line 190
    .line 191
    invoke-static {v4, v10, v11}, Lcom/android/server/wm/RootWindowContainer;->resolveActivityType(Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)I

    .line 192
    .line 193
    .line 194
    move-result v8

    .line 195
    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    if-eqz v1, :cond_0

    .line 200
    .line 201
    const/4 v5, 0x0

    .line 202
    const/4 v6, 0x0

    .line 203
    const/4 v9, 0x1

    .line 204
    move-object/from16 v2, p1

    .line 205
    .line 206
    move-object v3, v4

    .line 207
    move-object/from16 v4, p3

    .line 208
    .line 209
    move/from16 v7, p2

    .line 210
    .line 211
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateRootTask(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;Lcom/android/server/wm/LaunchParamsController$LaunchParams;IIZ)Lcom/android/server/wm/Task;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    if-eqz v1, :cond_0

    .line 216
    .line 217
    :goto_4
    if-eqz v1, :cond_d

    .line 218
    .line 219
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 220
    .line 221
    .line 222
    move-result-object v2

    .line 223
    if-eqz v2, :cond_d

    .line 224
    .line 225
    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    .line 226
    .line 227
    .line 228
    move-result v2

    .line 229
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    .line 230
    .line 231
    .line 232
    move-result v3

    .line 233
    if-eqz v3, :cond_c

    .line 234
    .line 235
    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 236
    .line 237
    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    .line 238
    .line 239
    invoke-virtual {v3, v2}, Lcom/android/server/wm/KeyguardController;->isKeyguardLocked(I)Z

    .line 240
    .line 241
    .line 242
    move-result v2

    .line 243
    if-eqz v2, :cond_c

    .line 244
    .line 245
    goto :goto_5

    .line 246
    :cond_c
    return-object v1

    .line 247
    :cond_d
    :goto_5
    if-eqz p4, :cond_e

    .line 248
    .line 249
    invoke-virtual/range {p4 .. p4}, Landroid/app/ActivityOptions;->getAvoidMoveToFront()Z

    .line 250
    .line 251
    .line 252
    move-result v1

    .line 253
    if-nez v1, :cond_f

    .line 254
    .line 255
    :cond_e
    iget-boolean v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    .line 256
    .line 257
    if-nez v1, :cond_f

    .line 258
    .line 259
    move v6, v12

    .line 260
    goto :goto_6

    .line 261
    :cond_f
    move v6, v13

    .line 262
    :goto_6
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 263
    .line 264
    if-eqz v1, :cond_10

    .line 265
    .line 266
    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 267
    .line 268
    move-object v5, v1

    .line 269
    goto :goto_7

    .line 270
    :cond_10
    move-object v5, v14

    .line 271
    :goto_7
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 272
    .line 273
    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 274
    .line 275
    move-object/from16 v2, p1

    .line 276
    .line 277
    move-object/from16 v3, p4

    .line 278
    .line 279
    move-object/from16 v4, p3

    .line 280
    .line 281
    move/from16 v8, p2

    .line 282
    .line 283
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/wm/RootWindowContainer;->getOrCreateRootTask(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;ZLcom/android/server/wm/LaunchParamsController$LaunchParams;I)Lcom/android/server/wm/Task;

    .line 284
    .line 285
    .line 286
    move-result-object v1

    .line 287
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 288
    .line 289
    .line 290
    move-result v2

    .line 291
    if-eqz v2, :cond_11

    .line 292
    .line 293
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->hasChild()Z

    .line 294
    .line 295
    .line 296
    move-result v2

    .line 297
    if-nez v2, :cond_11

    .line 298
    .line 299
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    .line 300
    .line 301
    if-ne v1, v2, :cond_11

    .line 302
    .line 303
    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 304
    .line 305
    iget-object v2, v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    .line 306
    .line 307
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    .line 308
    .line 309
    .line 310
    move-result v2

    .line 311
    if-nez v2, :cond_11

    .line 312
    .line 313
    iget-object v0, v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    .line 314
    .line 315
    invoke-virtual {v1, v0}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    .line 316
    .line 317
    .line 318
    :cond_11
    return-object v1
.end method

.method public final getStartInfo()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->reason:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ":"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 19
    .line 20
    iget-object v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 29
    .line 30
    iget p0, p0, Lcom/android/server/wm/ActivityStarter$Request;->callingPid:I

    .line 31
    .line 32
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0
.end method

.method public final handleStartResult(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;ILcom/android/server/wm/Transition;Landroid/window/RemoteTransition;)Lcom/android/server/wm/Task;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    move/from16 v8, p3

    .line 6
    .line 7
    move-object/from16 v9, p4

    .line 8
    .line 9
    move-object/from16 v10, p5

    .line 10
    .line 11
    const/4 v11, 0x1

    .line 12
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 13
    .line 14
    iget-boolean v12, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z

    .line 15
    .line 16
    const/4 v13, 0x0

    .line 17
    iput-boolean v13, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z

    .line 18
    .line 19
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    :goto_0
    move-object v14, v1

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :goto_1
    invoke-static/range {p3 .. p3}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_27

    .line 35
    .line 36
    if-nez v14, :cond_1

    .line 37
    .line 38
    goto/16 :goto_10

    .line 39
    .line 40
    :cond_1
    iget-object v1, v7, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 41
    .line 42
    const/4 v6, 0x2

    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    invoke-virtual {v1}, Landroid/content/Intent;->isAiKeyAppLaunch()Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-nez v1, :cond_3

    .line 50
    .line 51
    :cond_2
    iget-boolean v1, v7, Lcom/android/server/wm/ActivityRecord;->mIsAiKeyAppTarget:Z

    .line 52
    .line 53
    if-eqz v1, :cond_5

    .line 54
    .line 55
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_5

    .line 60
    .line 61
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 62
    .line 63
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    .line 64
    .line 65
    iget-object v2, v1, Lcom/android/server/wm/ChangeTransitionController;->mSyncDeferredTrampolineApps:Landroid/util/ArraySet;

    .line 66
    .line 67
    invoke-virtual {v2, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-eqz v2, :cond_4

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_4
    iget-object v2, v1, Lcom/android/server/wm/ChangeTransitionController;->mSyncDeferredTrampolineApps:Landroid/util/ArraySet;

    .line 75
    .line 76
    invoke-virtual {v2, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    const-string v3, "addToSyncDeferredForTrampolineApp: r="

    .line 82
    .line 83
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string v3, ", reason=ai_source_launch, num_remain="

    .line 90
    .line 91
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    iget-object v3, v1, Lcom/android/server/wm/ChangeTransitionController;->mSyncDeferredTrampolineApps:Landroid/util/ArraySet;

    .line 95
    .line 96
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    const-string v3, "ChangeTransitionController"

    .line 108
    .line 109
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    iget-object v2, v1, Lcom/android/server/wm/ChangeTransitionController;->mSyncDeferredTrampolineApps:Landroid/util/ArraySet;

    .line 113
    .line 114
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    if-ne v2, v11, :cond_5

    .line 119
    .line 120
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 121
    .line 122
    .line 123
    move-result-wide v2

    .line 124
    iput-wide v2, v1, Lcom/android/server/wm/ChangeTransitionController;->mSyncStartedTime:J

    .line 125
    .line 126
    iget-object v2, v1, Lcom/android/server/wm/ChangeTransitionController;->mH:Lcom/android/server/wm/ChangeTransitionController$H;

    .line 127
    .line 128
    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 129
    .line 130
    .line 131
    iget-object v1, v1, Lcom/android/server/wm/ChangeTransitionController;->mH:Lcom/android/server/wm/ChangeTransitionController$H;

    .line 132
    .line 133
    const-wide/16 v2, 0x320

    .line 134
    .line 135
    invoke-virtual {v1, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 136
    .line 137
    .line 138
    :cond_5
    :goto_2
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    .line 139
    .line 140
    const/4 v5, 0x4

    .line 141
    if-eqz v1, :cond_7

    .line 142
    .line 143
    iget-object v1, v7, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 144
    .line 145
    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController;->getCollectingTransition()Lcom/android/server/wm/Transition;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 150
    .line 151
    iget-object v2, v2, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 152
    .line 153
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    invoke-virtual {v7, v13}, Lcom/android/server/wm/ActivityRecord;->occludesParent(Z)Z

    .line 158
    .line 159
    .line 160
    move-result v3

    .line 161
    if-eqz v3, :cond_7

    .line 162
    .line 163
    if-eqz v1, :cond_7

    .line 164
    .line 165
    iget v3, v1, Lcom/android/server/wm/Transition;->mType:I

    .line 166
    .line 167
    if-eq v3, v5, :cond_6

    .line 168
    .line 169
    if-ne v3, v11, :cond_7

    .line 170
    .line 171
    :cond_6
    iget v3, v1, Lcom/android/server/wm/Transition;->mFlags:I

    .line 172
    .line 173
    and-int/lit16 v3, v3, 0x100

    .line 174
    .line 175
    if-eqz v3, :cond_7

    .line 176
    .line 177
    invoke-virtual {v2, v11, v13}, Lcom/android/server/wm/TaskDisplayArea;->getRootTask(II)Lcom/android/server/wm/Task;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    if-eqz v2, :cond_7

    .line 182
    .line 183
    if-ne v2, v14, :cond_7

    .line 184
    .line 185
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->isFullscreenRootForStageTask()Z

    .line 186
    .line 187
    .line 188
    move-result v2

    .line 189
    if-nez v2, :cond_7

    .line 190
    .line 191
    const/high16 v2, 0x20000

    .line 192
    .line 193
    invoke-virtual {v1, v2}, Lcom/android/server/wm/Transition;->addFlag(I)V

    .line 194
    .line 195
    .line 196
    :cond_7
    invoke-static {}, Landroid/security/Flags;->contentUriPermissionApis()Z

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    if-eqz v1, :cond_8

    .line 201
    .line 202
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    .line 203
    .line 204
    .line 205
    move-result v1

    .line 206
    if-eqz v1, :cond_8

    .line 207
    .line 208
    iget-object v2, v7, Lcom/android/server/wm/ActivityRecord;->initialCallerInfoAccessToken:Landroid/os/IBinder;

    .line 209
    .line 210
    iget-object v3, v7, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 211
    .line 212
    iget v4, v7, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    .line 213
    .line 214
    iget-object v1, v7, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    .line 215
    .line 216
    iget-boolean v6, v7, Lcom/android/server/wm/ActivityRecord;->mShareIdentity:Z

    .line 217
    .line 218
    move-object/from16 v16, v1

    .line 219
    .line 220
    move-object/from16 v1, p1

    .line 221
    .line 222
    move v15, v5

    .line 223
    move-object/from16 v5, v16

    .line 224
    .line 225
    const/4 v15, 0x2

    .line 226
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/ActivityRecord;->computeCallerInfo(Landroid/os/IBinder;Landroid/content/Intent;ILjava/lang/String;Z)V

    .line 227
    .line 228
    .line 229
    goto :goto_3

    .line 230
    :cond_8
    move v15, v6

    .line 231
    :goto_3
    if-eqz p2, :cond_9

    .line 232
    .line 233
    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityOptions;->getTaskAlwaysOnTop()Z

    .line 234
    .line 235
    .line 236
    move-result v1

    .line 237
    if-eqz v1, :cond_9

    .line 238
    .line 239
    invoke-virtual {v14, v11}, Lcom/android/server/wm/Task;->setAlwaysOnTop(Z)V

    .line 240
    .line 241
    .line 242
    :cond_9
    invoke-virtual {v14, v13}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    if-eqz v1, :cond_a

    .line 247
    .line 248
    iget v2, v1, Lcom/android/server/wm/ActivityRecord;->mLastReportedDisplayId:I

    .line 249
    .line 250
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    .line 251
    .line 252
    .line 253
    move-result v3

    .line 254
    if-eq v2, v3, :cond_a

    .line 255
    .line 256
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 257
    .line 258
    iget-object v3, v1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 259
    .line 260
    invoke-virtual {v2, v1, v3, v13}, Lcom/android/server/wm/RootWindowContainer;->ensureVisibilityAndConfig(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/DisplayContent;Z)V

    .line 261
    .line 262
    .line 263
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->avoidMoveToFront()Z

    .line 264
    .line 265
    .line 266
    move-result v2

    .line 267
    if-nez v2, :cond_c

    .line 268
    .line 269
    iget-boolean v2, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    .line 270
    .line 271
    if-eqz v2, :cond_c

    .line 272
    .line 273
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 274
    .line 275
    iget v3, v7, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    .line 276
    .line 277
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 278
    .line 279
    .line 280
    new-array v4, v11, [Z

    .line 281
    .line 282
    aput-boolean v13, v4, v13

    .line 283
    .line 284
    new-instance v5, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda23;

    .line 285
    .line 286
    invoke-direct {v5, v3, v4}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda23;-><init>(I[Z)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v2, v5, v11}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    .line 290
    .line 291
    .line 292
    move-result v2

    .line 293
    if-eqz v2, :cond_c

    .line 294
    .line 295
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 296
    .line 297
    iget-object v2, v2, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 298
    .line 299
    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 300
    .line 301
    iget-boolean v2, v2, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    .line 302
    .line 303
    if-eqz v2, :cond_c

    .line 304
    .line 305
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 306
    .line 307
    iget-object v3, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 308
    .line 309
    if-nez v3, :cond_b

    .line 310
    .line 311
    const-class v3, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 312
    .line 313
    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    move-result-object v3

    .line 317
    check-cast v3, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 318
    .line 319
    iput-object v3, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 320
    .line 321
    :cond_b
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 322
    .line 323
    if-eqz v2, :cond_c

    .line 324
    .line 325
    check-cast v2, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 326
    .line 327
    iget-object v2, v2, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 328
    .line 329
    iget-object v2, v2, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 330
    .line 331
    if-eqz v2, :cond_c

    .line 332
    .line 333
    :try_start_0
    invoke-interface {v2}, Lcom/android/internal/statusbar/IStatusBar;->animateCollapsePanels()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    .line 335
    .line 336
    :catch_0
    :cond_c
    iget-object v2, v7, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 337
    .line 338
    const/4 v3, 0x3

    .line 339
    if-eqz v8, :cond_10

    .line 340
    .line 341
    if-eq v8, v15, :cond_10

    .line 342
    .line 343
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_CHANGE_TRANSITION:Z

    .line 344
    .line 345
    if-eqz v4, :cond_e

    .line 346
    .line 347
    if-ne v8, v3, :cond_e

    .line 348
    .line 349
    if-eqz v9, :cond_e

    .line 350
    .line 351
    if-eqz v1, :cond_e

    .line 352
    .line 353
    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 354
    .line 355
    if-eqz v1, :cond_e

    .line 356
    .line 357
    iget-object v4, v9, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    .line 358
    .line 359
    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    .line 361
    .line 362
    move-result-object v1

    .line 363
    check-cast v1, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 364
    .line 365
    if-eqz v1, :cond_d

    .line 366
    .line 367
    iget-object v4, v1, Lcom/android/server/wm/Transition$ChangeInfo;->mChangeLeash:Landroid/view/SurfaceControl;

    .line 368
    .line 369
    if-eqz v4, :cond_d

    .line 370
    .line 371
    goto :goto_4

    .line 372
    :cond_d
    if-eqz v1, :cond_e

    .line 373
    .line 374
    iget v1, v1, Lcom/android/server/wm/Transition$ChangeInfo;->mForceHidingTransit:I

    .line 375
    .line 376
    if-eq v1, v15, :cond_10

    .line 377
    .line 378
    const/4 v4, 0x4

    .line 379
    if-ne v1, v4, :cond_e

    .line 380
    .line 381
    goto :goto_4

    .line 382
    :cond_e
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_RESUMED_AFFORDANCE:Z

    .line 383
    .line 384
    if-eqz v1, :cond_f

    .line 385
    .line 386
    if-ne v8, v3, :cond_f

    .line 387
    .line 388
    if-eqz p2, :cond_f

    .line 389
    .line 390
    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityOptions;->isResumedAffordanceAnimationRequested()Z

    .line 391
    .line 392
    .line 393
    move-result v1

    .line 394
    if-eqz v1, :cond_f

    .line 395
    .line 396
    goto :goto_4

    .line 397
    :cond_f
    move v1, v13

    .line 398
    goto :goto_5

    .line 399
    :cond_10
    :goto_4
    move v1, v11

    .line 400
    :goto_5
    if-eqz p2, :cond_11

    .line 401
    .line 402
    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityOptions;->getTransientLaunch()Z

    .line 403
    .line 404
    .line 405
    move-result v4

    .line 406
    if-eqz v4, :cond_11

    .line 407
    .line 408
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mPriorAboveTask:Lcom/android/server/wm/Task;

    .line 409
    .line 410
    if-eqz v4, :cond_11

    .line 411
    .line 412
    iget-boolean v4, v0, Lcom/android/server/wm/ActivityStarter;->mDisplayLockAndOccluded:Z

    .line 413
    .line 414
    if-eqz v4, :cond_11

    .line 415
    .line 416
    move v4, v11

    .line 417
    goto :goto_6

    .line 418
    :cond_11
    move v4, v13

    .line 419
    :goto_6
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_RESUMED_AFFORDANCE:Z

    .line 420
    .line 421
    if-eqz v5, :cond_12

    .line 422
    .line 423
    if-eqz p2, :cond_12

    .line 424
    .line 425
    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityOptions;->isResumedAffordanceAnimationRequested()Z

    .line 426
    .line 427
    .line 428
    move-result v6

    .line 429
    if-eqz v6, :cond_12

    .line 430
    .line 431
    move v6, v11

    .line 432
    goto :goto_7

    .line 433
    :cond_12
    move v6, v13

    .line 434
    :goto_7
    sget-boolean v15, Lcom/samsung/android/rune/CoreRune;->BAIDU_CARLIFE:Z

    .line 435
    .line 436
    if-eqz v15, :cond_13

    .line 437
    .line 438
    if-eqz v9, :cond_13

    .line 439
    .line 440
    iget-object v15, v0, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    .line 441
    .line 442
    iget-boolean v11, v15, Lcom/android/server/wm/ActivityStartInterceptor;->mIsInterceptedForCarLife:Z

    .line 443
    .line 444
    if-eqz v11, :cond_13

    .line 445
    .line 446
    invoke-virtual {v15}, Lcom/android/server/wm/ActivityStartInterceptor;->hasCarLifeDisplay()Z

    .line 447
    .line 448
    .line 449
    move-result v11

    .line 450
    if-eqz v11, :cond_13

    .line 451
    .line 452
    iget-object v11, v0, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    .line 453
    .line 454
    iput-boolean v13, v11, Lcom/android/server/wm/ActivityStartInterceptor;->mIsInterceptedForCarLife:Z

    .line 455
    .line 456
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/Transition;->abort()V

    .line 457
    .line 458
    .line 459
    const/4 v9, 0x0

    .line 460
    const/4 v11, 0x1

    .line 461
    goto :goto_8

    .line 462
    :cond_13
    move v11, v13

    .line 463
    :goto_8
    sget-boolean v15, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_BUG_FIX:Z

    .line 464
    .line 465
    if-eqz v15, :cond_15

    .line 466
    .line 467
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->avoidMoveToFront()Z

    .line 468
    .line 469
    .line 470
    move-result v15

    .line 471
    if-eqz v15, :cond_15

    .line 472
    .line 473
    iget-boolean v15, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    .line 474
    .line 475
    if-nez v15, :cond_15

    .line 476
    .line 477
    if-nez v4, :cond_15

    .line 478
    .line 479
    if-eqz v9, :cond_15

    .line 480
    .line 481
    if-eqz v1, :cond_14

    .line 482
    .line 483
    invoke-virtual {v14}, Lcom/android/server/wm/WindowContainer;->isOnTop()Z

    .line 484
    .line 485
    .line 486
    move-result v15

    .line 487
    if-nez v15, :cond_15

    .line 488
    .line 489
    :cond_14
    invoke-virtual {v9}, Lcom/android/server/wm/Transition;->abort()V

    .line 490
    .line 491
    .line 492
    :goto_9
    const/4 v9, 0x0

    .line 493
    goto/16 :goto_d

    .line 494
    .line 495
    :cond_15
    if-eqz v1, :cond_18

    .line 496
    .line 497
    if-nez v11, :cond_18

    .line 498
    .line 499
    if-eqz v5, :cond_16

    .line 500
    .line 501
    if-ne v8, v3, :cond_16

    .line 502
    .line 503
    if-eqz v9, :cond_16

    .line 504
    .line 505
    if-eqz v6, :cond_16

    .line 506
    .line 507
    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 508
    .line 509
    invoke-virtual {v2, v3}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 510
    .line 511
    .line 512
    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 513
    .line 514
    invoke-virtual {v2, v3}, Lcom/android/server/wm/TransitionController;->setResumedAffordance(Lcom/android/server/wm/WindowContainer;)V

    .line 515
    .line 516
    .line 517
    :cond_16
    iget-object v3, v2, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 518
    .line 519
    if-nez v3, :cond_17

    .line 520
    .line 521
    goto/16 :goto_d

    .line 522
    .line 523
    :cond_17
    invoke-virtual {v3, v7}, Lcom/android/server/wm/Transition;->collectExistenceChange(Lcom/android/server/wm/WindowContainer;)V

    .line 524
    .line 525
    .line 526
    goto :goto_d

    .line 527
    :cond_18
    if-ne v8, v3, :cond_1e

    .line 528
    .line 529
    if-eqz v9, :cond_1e

    .line 530
    .line 531
    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mMovedToTopActivity:Lcom/android/server/wm/ActivityRecord;

    .line 532
    .line 533
    if-nez v3, :cond_1e

    .line 534
    .line 535
    iget-object v3, v2, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 536
    .line 537
    if-nez v3, :cond_19

    .line 538
    .line 539
    goto :goto_b

    .line 540
    :cond_19
    new-instance v5, Ljava/util/ArrayList;

    .line 541
    .line 542
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 543
    .line 544
    .line 545
    iget-object v6, v3, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    .line 546
    .line 547
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 548
    .line 549
    .line 550
    move-result-object v6

    .line 551
    :goto_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 552
    .line 553
    .line 554
    move-result v11

    .line 555
    if-eqz v11, :cond_1a

    .line 556
    .line 557
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 558
    .line 559
    .line 560
    move-result-object v11

    .line 561
    check-cast v11, Lcom/android/server/wm/DisplayContent;

    .line 562
    .line 563
    invoke-static {v11, v5}, Lcom/android/server/wm/Transition;->addOnTopTasks(Lcom/android/server/wm/DisplayContent;Ljava/util/ArrayList;)V

    .line 564
    .line 565
    .line 566
    goto :goto_a

    .line 567
    :cond_1a
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 568
    .line 569
    .line 570
    move-result-object v5

    .line 571
    :cond_1b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 572
    .line 573
    .line 574
    move-result v6

    .line 575
    if-eqz v6, :cond_1c

    .line 576
    .line 577
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 578
    .line 579
    .line 580
    move-result-object v6

    .line 581
    check-cast v6, Lcom/android/server/wm/Task;

    .line 582
    .line 583
    iget-object v11, v3, Lcom/android/server/wm/Transition;->mOnTopTasksStart:Ljava/util/ArrayList;

    .line 584
    .line 585
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 586
    .line 587
    .line 588
    move-result v6

    .line 589
    if-nez v6, :cond_1b

    .line 590
    .line 591
    goto :goto_d

    .line 592
    :cond_1c
    :goto_b
    invoke-virtual {v2, v14}, Lcom/android/server/wm/TransitionController;->isTransientHide(Lcom/android/server/wm/Task;)Z

    .line 593
    .line 594
    .line 595
    move-result v3

    .line 596
    if-nez v3, :cond_1e

    .line 597
    .line 598
    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 599
    .line 600
    iget-object v5, v9, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    .line 601
    .line 602
    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    .line 604
    .line 605
    move-result-object v3

    .line 606
    check-cast v3, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 607
    .line 608
    if-nez v3, :cond_1d

    .line 609
    .line 610
    move v3, v13

    .line 611
    goto :goto_c

    .line 612
    :cond_1d
    invoke-virtual {v3}, Lcom/android/server/wm/Transition$ChangeInfo;->hasChanged()Z

    .line 613
    .line 614
    .line 615
    move-result v3

    .line 616
    :goto_c
    if-nez v3, :cond_1e

    .line 617
    .line 618
    if-nez v4, :cond_1e

    .line 619
    .line 620
    invoke-virtual {v9}, Lcom/android/server/wm/Transition;->abort()V

    .line 621
    .line 622
    .line 623
    goto/16 :goto_9

    .line 624
    .line 625
    :cond_1e
    :goto_d
    if-eqz v4, :cond_1f

    .line 626
    .line 627
    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 628
    .line 629
    invoke-virtual {v2, v3}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 630
    .line 631
    .line 632
    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mPriorAboveTask:Lcom/android/server/wm/Task;

    .line 633
    .line 634
    invoke-virtual {v2, v3}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 635
    .line 636
    .line 637
    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 638
    .line 639
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mPriorAboveTask:Lcom/android/server/wm/Task;

    .line 640
    .line 641
    invoke-virtual {v2, v4, v3}, Lcom/android/server/wm/TransitionController;->setTransientLaunch(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V

    .line 642
    .line 643
    .line 644
    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 645
    .line 646
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 647
    .line 648
    .line 649
    move-result-object v3

    .line 650
    iget-object v4, v3, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 651
    .line 652
    invoke-virtual {v4}, Lcom/android/server/wm/WallpaperController;->adjustWallpaperWindows()V

    .line 653
    .line 654
    .line 655
    const/4 v4, 0x1

    .line 656
    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/TransitionController;->setReady(Lcom/android/server/wm/WindowContainer;Z)V

    .line 657
    .line 658
    .line 659
    :cond_1f
    if-nez v12, :cond_21

    .line 660
    .line 661
    iget-object v3, v2, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 662
    .line 663
    if-nez v3, :cond_20

    .line 664
    .line 665
    goto :goto_e

    .line 666
    :cond_20
    iput-boolean v13, v3, Lcom/android/server/wm/Transition;->mCanPipOnFinish:Z

    .line 667
    .line 668
    :cond_21
    :goto_e
    if-eqz v9, :cond_23

    .line 669
    .line 670
    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter;->mTargetTask:Lcom/android/server/wm/Task;

    .line 671
    .line 672
    if-nez v0, :cond_22

    .line 673
    .line 674
    iget-object v0, v7, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 675
    .line 676
    :cond_22
    const/4 v1, 0x0

    .line 677
    invoke-virtual {v2, v9, v0, v10, v1}, Lcom/android/server/wm/TransitionController;->requestStartTransition(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)Lcom/android/server/wm/Transition;

    .line 678
    .line 679
    .line 680
    goto :goto_f

    .line 681
    :cond_23
    if-nez v8, :cond_24

    .line 682
    .line 683
    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 684
    .line 685
    sget-object v4, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    .line 686
    .line 687
    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    .line 688
    .line 689
    .line 690
    move-result v3

    .line 691
    if-eqz v3, :cond_24

    .line 692
    .line 693
    goto :goto_f

    .line 694
    :cond_24
    if-eqz v1, :cond_26

    .line 695
    .line 696
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_BUG_FIX:Z

    .line 697
    .line 698
    if-eqz v1, :cond_25

    .line 699
    .line 700
    iget-boolean v1, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    .line 701
    .line 702
    if-eqz v1, :cond_26

    .line 703
    .line 704
    :cond_25
    invoke-virtual {v2, v7, v13}, Lcom/android/server/wm/TransitionController;->setReady(Lcom/android/server/wm/WindowContainer;Z)V

    .line 705
    .line 706
    .line 707
    invoke-virtual {v2}, Lcom/android/server/wm/TransitionController;->getCollectingTransition()Lcom/android/server/wm/Transition;

    .line 708
    .line 709
    .line 710
    move-result-object v1

    .line 711
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_PIP_REMOTE_TRANSITION:Z

    .line 712
    .line 713
    if-eqz v2, :cond_26

    .line 714
    .line 715
    if-eqz v10, :cond_26

    .line 716
    .line 717
    if-eqz v1, :cond_26

    .line 718
    .line 719
    iget v2, v1, Lcom/android/server/wm/Transition;->mType:I

    .line 720
    .line 721
    const/16 v3, 0xa

    .line 722
    .line 723
    if-ne v2, v3, :cond_26

    .line 724
    .line 725
    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 726
    .line 727
    invoke-virtual {v1, v0}, Lcom/android/server/wm/Transition;->isInTransition(Lcom/android/server/wm/WindowContainer;)Z

    .line 728
    .line 729
    .line 730
    move-result v0

    .line 731
    if-eqz v0, :cond_26

    .line 732
    .line 733
    iput-object v10, v1, Lcom/android/server/wm/Transition;->mRemoteTransition:Landroid/window/RemoteTransition;

    .line 734
    .line 735
    :cond_26
    :goto_f
    return-object v14

    .line 736
    :cond_27
    :goto_10
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 737
    .line 738
    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 739
    .line 740
    if-eqz v2, :cond_28

    .line 741
    .line 742
    const-string/jumbo v0, "startActivity"

    .line 743
    .line 744
    .line 745
    const/4 v2, 0x1

    .line 746
    invoke-virtual {v1, v0, v2}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    .line 747
    .line 748
    .line 749
    goto :goto_11

    .line 750
    :cond_28
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 751
    .line 752
    .line 753
    move-result-object v1

    .line 754
    if-eqz v1, :cond_29

    .line 755
    .line 756
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 757
    .line 758
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 759
    .line 760
    .line 761
    move-result-object v1

    .line 762
    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 763
    .line 764
    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowContainer;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    .line 765
    .line 766
    .line 767
    :cond_29
    :goto_11
    if-eqz v14, :cond_2a

    .line 768
    .line 769
    invoke-virtual {v14}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    .line 770
    .line 771
    .line 772
    move-result v0

    .line 773
    if-eqz v0, :cond_2a

    .line 774
    .line 775
    invoke-virtual {v14}, Lcom/android/server/wm/WindowContainer;->hasActivity()Z

    .line 776
    .line 777
    .line 778
    move-result v0

    .line 779
    if-nez v0, :cond_2a

    .line 780
    .line 781
    invoke-virtual {v14}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    .line 782
    .line 783
    .line 784
    move-result v0

    .line 785
    if-nez v0, :cond_2a

    .line 786
    .line 787
    iget-boolean v0, v14, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    .line 788
    .line 789
    if-nez v0, :cond_2a

    .line 790
    .line 791
    const-string v0, "handleStartResult"

    .line 792
    .line 793
    invoke-virtual {v14, v0}, Lcom/android/server/wm/Task;->removeIfPossible(Ljava/lang/String;)V

    .line 794
    .line 795
    .line 796
    :cond_2a
    if-eqz v9, :cond_2b

    .line 797
    .line 798
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/Transition;->abort()V

    .line 799
    .line 800
    .line 801
    :cond_2b
    const/4 v0, 0x0

    .line 802
    return-object v0
.end method

.method public isAllowedToStart(Lcom/android/server/wm/ActivityRecord;ZLcom/android/server/wm/Task;)I
    .locals 39

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v13, p1

    .line 4
    .line 5
    move/from16 v14, p2

    .line 6
    .line 7
    move-object/from16 v15, p3

    .line 8
    .line 9
    iget-object v1, v13, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 14
    .line 15
    invoke-static {v0}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 16
    .line 17
    .line 18
    const/16 v0, -0x5c

    .line 19
    .line 20
    return v0

    .line 21
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const/4 v12, 0x1

    .line 26
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 27
    .line 28
    const-string v11, "ActivityTaskManager"

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    iget-object v1, v13, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 33
    .line 34
    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 35
    .line 36
    invoke-virtual {v2, v1, v3, v12}, Lcom/android/server/wm/RootWindowContainer;->canStartHomeOnDisplayArea(Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/TaskDisplayArea;Z)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-nez v1, :cond_1

    .line 41
    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string v2, "Cannot launch home on display area "

    .line 45
    .line 46
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 50
    .line 51
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-static {v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    const/16 v0, -0x60

    .line 62
    .line 63
    return v0

    .line 64
    :cond_1
    const/4 v10, 0x0

    .line 65
    const/4 v7, 0x3

    .line 66
    if-nez v14, :cond_4

    .line 67
    .line 68
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    .line 69
    .line 70
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    new-instance v3, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda55;

    .line 74
    .line 75
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 76
    .line 77
    .line 78
    const-class v4, Lcom/android/server/wm/ActivityRecord;

    .line 79
    .line 80
    invoke-static {v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-static {v3, v4, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Ljava/util/function/BiPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v15, v1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    if-eqz v3, :cond_2

    .line 97
    .line 98
    move v3, v12

    .line 99
    goto :goto_0

    .line 100
    :cond_2
    move v3, v10

    .line 101
    :goto_0
    invoke-interface {v1}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    .line 102
    .line 103
    .line 104
    if-eqz v3, :cond_4

    .line 105
    .line 106
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    .line 107
    .line 108
    if-ne v7, v1, :cond_3

    .line 109
    .line 110
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    if-eqz v1, :cond_3

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_3
    move v1, v10

    .line 118
    goto :goto_2

    .line 119
    :cond_4
    :goto_1
    move v1, v12

    .line 120
    :goto_2
    iget v3, v0, Lcom/android/server/wm/ActivityStarter;->mBalCode:I

    .line 121
    .line 122
    const/16 v16, 0x66

    .line 123
    .line 124
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 125
    .line 126
    if-nez v3, :cond_7

    .line 127
    .line 128
    if-eqz v1, :cond_7

    .line 129
    .line 130
    iget-object v1, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 131
    .line 132
    invoke-virtual {v1}, Landroid/app/ActivityManagerInternal;->isBackgroundActivityStartsEnabled()Z

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    xor-int/2addr v1, v12

    .line 137
    if-nez v1, :cond_5

    .line 138
    .line 139
    goto :goto_3

    .line 140
    :cond_5
    iget-object v1, v13, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    .line 141
    .line 142
    iget-object v2, v13, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    .line 143
    .line 144
    iget v3, v13, Lcom/android/server/wm/ActivityRecord;->requestCode:I

    .line 145
    .line 146
    if-eqz v1, :cond_6

    .line 147
    .line 148
    const/16 v22, 0x0

    .line 149
    .line 150
    const/16 v25, 0x0

    .line 151
    .line 152
    const/16 v18, -0x1

    .line 153
    .line 154
    const/16 v21, 0x0

    .line 155
    .line 156
    const/16 v23, 0x0

    .line 157
    .line 158
    const/16 v24, 0x0

    .line 159
    .line 160
    move-object/from16 v17, v1

    .line 161
    .line 162
    move-object/from16 v19, v2

    .line 163
    .line 164
    move/from16 v20, v3

    .line 165
    .line 166
    invoke-virtual/range {v17 .. v25}, Lcom/android/server/wm/ActivityRecord;->sendResult(ILjava/lang/String;IILandroid/content/Intent;Landroid/os/IBinder;Lcom/android/server/uri/NeededUriGrants;Z)V

    .line 167
    .line 168
    .line 169
    :cond_6
    iget-object v1, v13, Lcom/android/server/wm/ActivityRecord;->mPendingOptions:Landroid/app/ActivityOptions;

    .line 170
    .line 171
    invoke-static {v1}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 172
    .line 173
    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    .line 175
    .line 176
    const-string v2, "Abort background activity starts from "

    .line 177
    .line 178
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    iget v0, v0, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    .line 182
    .line 183
    invoke-static {v1, v0, v11}, Lcom/android/server/VaultKeeperService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 184
    .line 185
    .line 186
    return v16

    .line 187
    :cond_7
    :goto_3
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 188
    .line 189
    const v3, 0x10008000

    .line 190
    .line 191
    .line 192
    and-int/2addr v1, v3

    .line 193
    if-ne v1, v3, :cond_8

    .line 194
    .line 195
    move v1, v12

    .line 196
    goto :goto_4

    .line 197
    :cond_8
    move v1, v10

    .line 198
    :goto_4
    const/4 v9, 0x0

    .line 199
    const/16 v3, 0x65

    .line 200
    .line 201
    const-string v5, "Attempted Lock Task Mode violation r="

    .line 202
    .line 203
    if-nez v14, :cond_9

    .line 204
    .line 205
    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mLockTaskController:Lcom/android/server/wm/LockTaskController;

    .line 206
    .line 207
    invoke-virtual {v4, v15, v1}, Lcom/android/server/wm/LockTaskController;->isLockTaskModeViolation(Lcom/android/server/wm/Task;Z)Z

    .line 208
    .line 209
    .line 210
    move-result v1

    .line 211
    if-eqz v1, :cond_c

    .line 212
    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    .line 214
    .line 215
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    invoke-static {v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    .line 227
    .line 228
    return v3

    .line 229
    :cond_9
    iget-object v1, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mLockTaskController:Lcom/android/server/wm/LockTaskController;

    .line 230
    .line 231
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 232
    .line 233
    .line 234
    iget-object v4, v13, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 235
    .line 236
    if-eqz v4, :cond_a

    .line 237
    .line 238
    invoke-virtual {v1, v4, v10}, Lcom/android/server/wm/LockTaskController;->isLockTaskModeViolation(Lcom/android/server/wm/Task;Z)Z

    .line 239
    .line 240
    .line 241
    move-result v1

    .line 242
    goto :goto_5

    .line 243
    :cond_a
    invoke-virtual {v1, v9, v13}, Lcom/android/server/wm/LockTaskController;->getLockTaskAuth(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)I

    .line 244
    .line 245
    .line 246
    move-result v4

    .line 247
    iget v6, v13, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 248
    .line 249
    iget-object v8, v13, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 250
    .line 251
    invoke-virtual {v1, v13, v6, v8, v4}, Lcom/android/server/wm/LockTaskController;->isLockTaskModeViolationInternal(Lcom/android/server/wm/WindowContainer;ILandroid/content/Intent;I)Z

    .line 252
    .line 253
    .line 254
    move-result v4

    .line 255
    if-eqz v4, :cond_b

    .line 256
    .line 257
    invoke-virtual {v1}, Lcom/android/server/wm/LockTaskController;->showLockTaskToast()V

    .line 258
    .line 259
    .line 260
    move v1, v12

    .line 261
    goto :goto_5

    .line 262
    :cond_b
    move v1, v10

    .line 263
    :goto_5
    if-eqz v1, :cond_c

    .line 264
    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    .line 266
    .line 267
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    invoke-static {v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    .line 279
    .line 280
    return v3

    .line 281
    :cond_c
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 282
    .line 283
    if-eqz v1, :cond_11

    .line 284
    .line 285
    iget-object v1, v1, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 286
    .line 287
    iget v1, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 288
    .line 289
    invoke-virtual {v2, v1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContentOrCreate(I)Lcom/android/server/wm/DisplayContent;

    .line 290
    .line 291
    .line 292
    move-result-object v1

    .line 293
    if-eqz v1, :cond_11

    .line 294
    .line 295
    if-eqz v15, :cond_d

    .line 296
    .line 297
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 298
    .line 299
    .line 300
    move-result v2

    .line 301
    :goto_6
    move v4, v2

    .line 302
    goto :goto_7

    .line 303
    :cond_d
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 304
    .line 305
    .line 306
    move-result v2

    .line 307
    goto :goto_6

    .line 308
    :goto_7
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 309
    .line 310
    if-eqz v2, :cond_e

    .line 311
    .line 312
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    .line 313
    .line 314
    .line 315
    move-result v2

    .line 316
    move v5, v2

    .line 317
    goto :goto_8

    .line 318
    :cond_e
    move v5, v10

    .line 319
    :goto_8
    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mDwpcHelper:Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;

    .line 320
    .line 321
    iget-object v2, v13, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 322
    .line 323
    iget-object v3, v13, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 324
    .line 325
    iget-object v6, v1, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->mDisplayWindowPolicyController:Landroid/window/DisplayWindowPolicyController;

    .line 326
    .line 327
    if-nez v6, :cond_10

    .line 328
    .line 329
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->requiredDisplayCategory:Ljava/lang/String;

    .line 330
    .line 331
    if-eqz v2, :cond_f

    .line 332
    .line 333
    iget-object v1, v1, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 334
    .line 335
    iget v1, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 336
    .line 337
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 338
    .line 339
    .line 340
    move-result-object v1

    .line 341
    filled-new-array {v2, v1}, [Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    move-result-object v1

    .line 345
    const-string v2, "Checking activity launch with requiredDisplayCategory=\'%s\' on display %d, which doesn\'t have a matching category."

    .line 346
    .line 347
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v1

    .line 351
    const-string v2, "DisplayWindowPolicyControllerHelper"

    .line 352
    .line 353
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    .line 355
    .line 356
    move v1, v12

    .line 357
    goto :goto_9

    .line 358
    :cond_f
    move v1, v10

    .line 359
    :goto_9
    xor-int/2addr v1, v12

    .line 360
    goto :goto_a

    .line 361
    :cond_10
    move-object v1, v6

    .line 362
    move/from16 v6, p2

    .line 363
    .line 364
    invoke-virtual/range {v1 .. v6}, Landroid/window/DisplayWindowPolicyController;->canActivityBeLaunched(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;IIZ)Z

    .line 365
    .line 366
    .line 367
    move-result v1

    .line 368
    :goto_a
    if-nez v1, :cond_11

    .line 369
    .line 370
    new-instance v1, Ljava/lang/StringBuilder;

    .line 371
    .line 372
    const-string v2, "Abort to launch "

    .line 373
    .line 374
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 375
    .line 376
    .line 377
    iget-object v2, v13, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 378
    .line 379
    invoke-virtual {v2}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    .line 380
    .line 381
    .line 382
    move-result-object v2

    .line 383
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 384
    .line 385
    .line 386
    const-string v2, " on display area "

    .line 387
    .line 388
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 392
    .line 393
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object v0

    .line 400
    invoke-static {v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    .line 402
    .line 403
    return v16

    .line 404
    :cond_11
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 405
    .line 406
    iget-object v8, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mBalController:Lcom/android/server/wm/BackgroundActivityStartController;

    .line 407
    .line 408
    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 409
    .line 410
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->avoidMoveToFront()Z

    .line 411
    .line 412
    .line 413
    move-result v17

    .line 414
    iget v5, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 415
    .line 416
    iget v4, v0, Lcom/android/server/wm/ActivityStarter;->mBalCode:I

    .line 417
    .line 418
    iget v3, v0, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    .line 419
    .line 420
    iget v2, v0, Lcom/android/server/wm/ActivityStarter;->mRealCallingUid:I

    .line 421
    .line 422
    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 423
    .line 424
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 425
    .line 426
    .line 427
    const/4 v1, 0x2

    .line 428
    if-ne v4, v1, :cond_12

    .line 429
    .line 430
    move/from16 v37, v10

    .line 431
    .line 432
    goto/16 :goto_26

    .line 433
    .line 434
    :cond_12
    if-nez v14, :cond_14

    .line 435
    .line 436
    const/high16 v1, 0x10000000

    .line 437
    .line 438
    and-int v10, v5, v1

    .line 439
    .line 440
    if-ne v10, v1, :cond_13

    .line 441
    .line 442
    goto :goto_b

    .line 443
    :cond_13
    const/4 v10, 0x0

    .line 444
    goto :goto_c

    .line 445
    :cond_14
    :goto_b
    move v10, v12

    .line 446
    :goto_c
    if-eqz v10, :cond_16

    .line 447
    .line 448
    if-eq v4, v7, :cond_15

    .line 449
    .line 450
    const/4 v1, 0x6

    .line 451
    if-eq v4, v1, :cond_15

    .line 452
    .line 453
    const/4 v1, 0x5

    .line 454
    if-eq v4, v1, :cond_15

    .line 455
    .line 456
    const/4 v1, 0x7

    .line 457
    if-eq v4, v1, :cond_15

    .line 458
    .line 459
    const/4 v1, 0x4

    .line 460
    if-eq v4, v1, :cond_15

    .line 461
    .line 462
    const/16 v1, 0xb

    .line 463
    .line 464
    if-ne v4, v1, :cond_16

    .line 465
    .line 466
    :cond_15
    :goto_d
    const/16 v37, 0x0

    .line 467
    .line 468
    goto/16 :goto_26

    .line 469
    .line 470
    :cond_16
    new-instance v1, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;

    .line 471
    .line 472
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 473
    .line 474
    .line 475
    if-eqz v6, :cond_1b

    .line 476
    .line 477
    iget-object v0, v6, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 478
    .line 479
    if-eqz v10, :cond_17

    .line 480
    .line 481
    move-object v7, v0

    .line 482
    goto :goto_e

    .line 483
    :cond_17
    move-object v7, v15

    .line 484
    :goto_e
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    .line 485
    .line 486
    .line 487
    move-result v12

    .line 488
    invoke-virtual {v8, v7, v12, v6, v1}, Lcom/android/server/wm/BackgroundActivityStartController;->checkTopActivityForAsm(Lcom/android/server/wm/Task;ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;)Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;

    .line 489
    .line 490
    .line 491
    move-result-object v1

    .line 492
    if-eqz v10, :cond_1a

    .line 493
    .line 494
    iget-boolean v7, v1, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->mTopActivityMatchesSource:Z

    .line 495
    .line 496
    if-eqz v7, :cond_1a

    .line 497
    .line 498
    if-eqz v0, :cond_19

    .line 499
    .line 500
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    .line 501
    .line 502
    .line 503
    move-result v7

    .line 504
    if-nez v7, :cond_18

    .line 505
    .line 506
    if-ne v0, v15, :cond_19

    .line 507
    .line 508
    :cond_18
    const/4 v0, 0x1

    .line 509
    goto :goto_f

    .line 510
    :cond_19
    const/4 v0, 0x0

    .line 511
    :goto_f
    iput-boolean v0, v1, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->mTopActivityMatchesSource:Z

    .line 512
    .line 513
    :cond_1a
    :goto_10
    move-object v12, v9

    .line 514
    :goto_11
    const/4 v13, 0x1

    .line 515
    goto :goto_14

    .line 516
    :cond_1b
    if-eqz v15, :cond_1d

    .line 517
    .line 518
    if-eqz v10, :cond_1c

    .line 519
    .line 520
    if-eqz v17, :cond_1d

    .line 521
    .line 522
    :cond_1c
    invoke-virtual {v8, v15, v3, v9, v1}, Lcom/android/server/wm/BackgroundActivityStartController;->checkTopActivityForAsm(Lcom/android/server/wm/Task;ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;)Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;

    .line 523
    .line 524
    .line 525
    move-result-object v1

    .line 526
    goto :goto_10

    .line 527
    :cond_1d
    if-eqz v15, :cond_1e

    .line 528
    .line 529
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 530
    .line 531
    .line 532
    move-result-object v7

    .line 533
    if-eqz v7, :cond_1e

    .line 534
    .line 535
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 536
    .line 537
    .line 538
    move-result-object v0

    .line 539
    :cond_1e
    if-eqz v0, :cond_1a

    .line 540
    .line 541
    new-instance v7, Ljava/util/ArrayList;

    .line 542
    .line 543
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 544
    .line 545
    .line 546
    new-instance v12, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda0;

    .line 547
    .line 548
    const/4 v9, 0x0

    .line 549
    invoke-direct {v12, v9, v7}, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 550
    .line 551
    .line 552
    invoke-virtual {v0, v12}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Consumer;)V

    .line 553
    .line 554
    .line 555
    const/4 v0, 0x0

    .line 556
    :goto_12
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 557
    .line 558
    .line 559
    move-result v9

    .line 560
    if-ge v0, v9, :cond_20

    .line 561
    .line 562
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 563
    .line 564
    .line 565
    move-result-object v9

    .line 566
    check-cast v9, Lcom/android/server/wm/Task;

    .line 567
    .line 568
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 569
    .line 570
    .line 571
    move-result v12

    .line 572
    const/4 v13, 0x1

    .line 573
    if-ne v12, v13, :cond_1f

    .line 574
    .line 575
    invoke-virtual {v9}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHomeOrRecents()Z

    .line 576
    .line 577
    .line 578
    move-result v12

    .line 579
    if-eqz v12, :cond_1f

    .line 580
    .line 581
    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    .line 582
    .line 583
    .line 584
    move-result-object v9

    .line 585
    invoke-virtual {v1, v9}, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->optedIn(Lcom/android/server/wm/ActivityRecord;)V

    .line 586
    .line 587
    .line 588
    const/4 v12, 0x0

    .line 589
    goto :goto_13

    .line 590
    :cond_1f
    const/4 v12, 0x0

    .line 591
    invoke-virtual {v8, v9, v3, v12, v1}, Lcom/android/server/wm/BackgroundActivityStartController;->checkTopActivityForAsm(Lcom/android/server/wm/Task;ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;)Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;

    .line 592
    .line 593
    .line 594
    move-result-object v1

    .line 595
    :goto_13
    add-int/lit8 v0, v0, 0x1

    .line 596
    .line 597
    move-object/from16 v13, p1

    .line 598
    .line 599
    goto :goto_12

    .line 600
    :cond_20
    const/4 v12, 0x0

    .line 601
    goto :goto_11

    .line 602
    :goto_14
    iget-boolean v0, v1, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->mTopActivityMatchesSource:Z

    .line 603
    .line 604
    if-eqz v0, :cond_21

    .line 605
    .line 606
    move v12, v13

    .line 607
    goto/16 :goto_d

    .line 608
    .line 609
    :cond_21
    if-nez v15, :cond_22

    .line 610
    .line 611
    move-object v9, v12

    .line 612
    goto :goto_15

    .line 613
    :cond_22
    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda0;

    .line 614
    .line 615
    const/4 v7, 0x1

    .line 616
    invoke-direct {v0, v7}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda0;-><init>(I)V

    .line 617
    .line 618
    .line 619
    invoke-virtual {v15, v0}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    .line 620
    .line 621
    .line 622
    move-result-object v0

    .line 623
    move-object v9, v0

    .line 624
    :goto_15
    if-nez v14, :cond_25

    .line 625
    .line 626
    if-nez v6, :cond_23

    .line 627
    .line 628
    goto :goto_16

    .line 629
    :cond_23
    iget-object v0, v6, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 630
    .line 631
    invoke-virtual {v0, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 632
    .line 633
    .line 634
    move-result v0

    .line 635
    if-eqz v0, :cond_24

    .line 636
    .line 637
    move/from16 v28, v13

    .line 638
    .line 639
    goto :goto_17

    .line 640
    :cond_24
    const/16 v28, 0x2

    .line 641
    .line 642
    goto :goto_17

    .line 643
    :cond_25
    :goto_16
    const/16 v28, 0x3

    .line 644
    .line 645
    :goto_17
    iget-boolean v0, v1, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->mTopActivityOptedIn:Z

    .line 646
    .line 647
    if-eqz v0, :cond_26

    .line 648
    .line 649
    invoke-static {v3}, Lcom/android/server/wm/ActivitySecurityModelFeatureFlags;->shouldRestrictActivitySwitch(I)Z

    .line 650
    .line 651
    .line 652
    move-result v0

    .line 653
    if-eqz v0, :cond_26

    .line 654
    .line 655
    move/from16 v33, v13

    .line 656
    .line 657
    goto :goto_18

    .line 658
    :cond_26
    const/16 v33, 0x0

    .line 659
    .line 660
    :goto_18
    const/16 v0, 0x8

    .line 661
    .line 662
    if-ne v4, v0, :cond_2b

    .line 663
    .line 664
    if-eqz v10, :cond_27

    .line 665
    .line 666
    iget-object v0, v8, Lcom/android/server/wm/BackgroundActivityStartController;->mTopFinishedActivity:Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;

    .line 667
    .line 668
    if-eqz v0, :cond_27

    .line 669
    .line 670
    iget v0, v0, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;->mUid:I

    .line 671
    .line 672
    if-ne v0, v3, :cond_27

    .line 673
    .line 674
    :goto_19
    move/from16 v19, v13

    .line 675
    .line 676
    goto :goto_1b

    .line 677
    :cond_27
    if-eqz v10, :cond_28

    .line 678
    .line 679
    if-eqz v17, :cond_2b

    .line 680
    .line 681
    :cond_28
    if-eqz v15, :cond_29

    .line 682
    .line 683
    iget-object v0, v8, Lcom/android/server/wm/BackgroundActivityStartController;->mTaskIdToFinishedActivity:Ljava/util/HashMap;

    .line 684
    .line 685
    iget v7, v15, Lcom/android/server/wm/Task;->mTaskId:I

    .line 686
    .line 687
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 688
    .line 689
    .line 690
    move-result-object v7

    .line 691
    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    .line 693
    .line 694
    move-result-object v0

    .line 695
    check-cast v0, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;

    .line 696
    .line 697
    if-eqz v0, :cond_29

    .line 698
    .line 699
    iget v0, v0, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;->mUid:I

    .line 700
    .line 701
    if-ne v0, v3, :cond_29

    .line 702
    .line 703
    goto :goto_19

    .line 704
    :cond_29
    if-eqz v6, :cond_2b

    .line 705
    .line 706
    iget-object v0, v8, Lcom/android/server/wm/BackgroundActivityStartController;->mTaskIdToFinishedActivity:Ljava/util/HashMap;

    .line 707
    .line 708
    iget-object v7, v6, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 709
    .line 710
    iget v7, v7, Lcom/android/server/wm/Task;->mTaskId:I

    .line 711
    .line 712
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 713
    .line 714
    .line 715
    move-result-object v7

    .line 716
    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    .line 718
    .line 719
    move-result-object v0

    .line 720
    check-cast v0, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;

    .line 721
    .line 722
    if-eqz v0, :cond_2a

    .line 723
    .line 724
    iget v0, v0, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;->mUid:I

    .line 725
    .line 726
    if-ne v0, v3, :cond_2a

    .line 727
    .line 728
    move v0, v13

    .line 729
    goto :goto_1a

    .line 730
    :cond_2a
    const/4 v0, 0x0

    .line 731
    :goto_1a
    move/from16 v19, v0

    .line 732
    .line 733
    goto :goto_1b

    .line 734
    :cond_2b
    const/16 v19, 0x0

    .line 735
    .line 736
    :goto_1b
    iget-object v7, v1, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->mActivityOptedIn:Lcom/android/server/wm/ActivityRecord;

    .line 737
    .line 738
    const-string v1, "Launch"

    .line 739
    .line 740
    move-object v0, v8

    .line 741
    move/from16 v20, v2

    .line 742
    .line 743
    move-object v2, v6

    .line 744
    move/from16 v34, v3

    .line 745
    .line 746
    move-object/from16 v3, p1

    .line 747
    .line 748
    move/from16 v35, v4

    .line 749
    .line 750
    move-object/from16 v4, p3

    .line 751
    .line 752
    move/from16 v27, v5

    .line 753
    .line 754
    move-object v5, v9

    .line 755
    move-object v13, v6

    .line 756
    move/from16 v6, v20

    .line 757
    .line 758
    move-object/from16 v20, v7

    .line 759
    .line 760
    move/from16 v7, v35

    .line 761
    .line 762
    move-object/from16 v36, v8

    .line 763
    .line 764
    move/from16 v8, v33

    .line 765
    .line 766
    move-object/from16 v22, v12

    .line 767
    .line 768
    move-object v12, v9

    .line 769
    move v9, v10

    .line 770
    const/16 v37, 0x0

    .line 771
    .line 772
    move/from16 v10, v17

    .line 773
    .line 774
    move-object/from16 v38, v11

    .line 775
    .line 776
    move/from16 v11, v19

    .line 777
    .line 778
    move-object v15, v12

    .line 779
    const/16 v17, 0x1

    .line 780
    .line 781
    move-object/from16 v12, v20

    .line 782
    .line 783
    invoke-virtual/range {v0 .. v12}, Lcom/android/server/wm/BackgroundActivityStartController;->getDebugInfoForActivitySecurity(Ljava/lang/String;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;IIZZZZLcom/android/server/wm/ActivityRecord;)Ljava/lang/String;

    .line 784
    .line 785
    .line 786
    move-result-object v0

    .line 787
    if-eqz v13, :cond_2c

    .line 788
    .line 789
    invoke-virtual {v13}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    .line 790
    .line 791
    .line 792
    move-result v1

    .line 793
    move/from16 v19, v1

    .line 794
    .line 795
    goto :goto_1c

    .line 796
    :cond_2c
    move/from16 v19, v34

    .line 797
    .line 798
    :goto_1c
    if-eqz v13, :cond_2d

    .line 799
    .line 800
    iget-object v1, v13, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 801
    .line 802
    iget-object v9, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 803
    .line 804
    move-object/from16 v20, v9

    .line 805
    .line 806
    goto :goto_1d

    .line 807
    :cond_2d
    move-object/from16 v20, v22

    .line 808
    .line 809
    :goto_1d
    if-eqz v15, :cond_2e

    .line 810
    .line 811
    invoke-virtual {v15}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    .line 812
    .line 813
    .line 814
    move-result v1

    .line 815
    :goto_1e
    move/from16 v21, v1

    .line 816
    .line 817
    goto :goto_1f

    .line 818
    :cond_2e
    const/4 v1, -0x1

    .line 819
    goto :goto_1e

    .line 820
    :goto_1f
    if-eqz v15, :cond_2f

    .line 821
    .line 822
    iget-object v1, v15, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 823
    .line 824
    iget-object v9, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 825
    .line 826
    move-object/from16 v22, v9

    .line 827
    .line 828
    :cond_2f
    if-nez v14, :cond_31

    .line 829
    .line 830
    if-eqz v13, :cond_31

    .line 831
    .line 832
    move-object/from16 v1, p3

    .line 833
    .line 834
    move-object v12, v15

    .line 835
    if-eqz v1, :cond_32

    .line 836
    .line 837
    iget-object v2, v13, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 838
    .line 839
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 840
    .line 841
    .line 842
    move-result v2

    .line 843
    if-nez v2, :cond_30

    .line 844
    .line 845
    goto :goto_20

    .line 846
    :cond_30
    move/from16 v23, v37

    .line 847
    .line 848
    goto :goto_21

    .line 849
    :cond_31
    move-object/from16 v1, p3

    .line 850
    .line 851
    move-object v12, v15

    .line 852
    :cond_32
    :goto_20
    move/from16 v23, v17

    .line 853
    .line 854
    :goto_21
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    .line 855
    .line 856
    .line 857
    move-result v24

    .line 858
    move-object/from16 v2, p1

    .line 859
    .line 860
    iget-object v3, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 861
    .line 862
    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 863
    .line 864
    iget-object v4, v2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 865
    .line 866
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 867
    .line 868
    .line 869
    move-result-object v26

    .line 870
    if-eqz v1, :cond_33

    .line 871
    .line 872
    if-eqz v13, :cond_33

    .line 873
    .line 874
    iget-object v4, v13, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 875
    .line 876
    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 877
    .line 878
    .line 879
    move-result v4

    .line 880
    if-nez v4, :cond_33

    .line 881
    .line 882
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    .line 883
    .line 884
    .line 885
    move-result v1

    .line 886
    if-eqz v1, :cond_33

    .line 887
    .line 888
    move/from16 v30, v17

    .line 889
    .line 890
    goto :goto_22

    .line 891
    :cond_33
    move/from16 v30, v37

    .line 892
    .line 893
    :goto_22
    const/16 v18, 0x1ef

    .line 894
    .line 895
    const/16 v29, 0xb

    .line 896
    .line 897
    move-object/from16 v25, v3

    .line 898
    .line 899
    move/from16 v31, v35

    .line 900
    .line 901
    move-object/from16 v32, v0

    .line 902
    .line 903
    invoke-static/range {v18 .. v32}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;ILjava/lang/String;ZILjava/lang/String;Ljava/lang/String;IIIZILjava/lang/String;)V

    .line 904
    .line 905
    .line 906
    iget-object v6, v2, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    .line 907
    .line 908
    invoke-static/range {v34 .. v34}, Lcom/android/server/wm/ActivitySecurityModelFeatureFlags;->shouldShowToast(I)Z

    .line 909
    .line 910
    .line 911
    move-result v1

    .line 912
    if-eqz v1, :cond_35

    .line 913
    .line 914
    new-instance v1, Ljava/lang/StringBuilder;

    .line 915
    .line 916
    const-string v3, "go/android-asm"

    .line 917
    .line 918
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 919
    .line 920
    .line 921
    if-eqz v33, :cond_34

    .line 922
    .line 923
    const-string v3, " blocked "

    .line 924
    .line 925
    goto :goto_23

    .line 926
    :cond_34
    const-string v3, " would block "

    .line 927
    .line 928
    :goto_23
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 929
    .line 930
    .line 931
    move-object/from16 v3, v36

    .line 932
    .line 933
    iget-object v4, v3, Lcom/android/server/wm/BackgroundActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 934
    .line 935
    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 936
    .line 937
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 938
    .line 939
    .line 940
    move-result-object v4

    .line 941
    const-wide/16 v7, 0x0

    .line 942
    .line 943
    :try_start_0
    invoke-static {v7, v8}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    .line 944
    .line 945
    .line 946
    move-result-object v5

    .line 947
    invoke-virtual {v4, v6, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;)Landroid/content/pm/ApplicationInfo;

    .line 948
    .line 949
    .line 950
    move-result-object v5

    .line 951
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    .line 952
    .line 953
    .line 954
    move-result-object v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 955
    goto :goto_24

    .line 956
    :catch_0
    move-object v4, v6

    .line 957
    :goto_24
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 958
    .line 959
    .line 960
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 961
    .line 962
    .line 963
    move-result-object v1

    .line 964
    invoke-virtual {v3, v1}, Lcom/android/server/wm/BackgroundActivityStartController;->showToast(Ljava/lang/String;)V

    .line 965
    .line 966
    .line 967
    move-object/from16 v1, v38

    .line 968
    .line 969
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    .line 971
    .line 972
    goto :goto_25

    .line 973
    :cond_35
    move-object/from16 v1, v38

    .line 974
    .line 975
    :goto_25
    if-eqz v33, :cond_37

    .line 976
    .line 977
    new-instance v0, Ljava/lang/StringBuilder;

    .line 978
    .line 979
    const-string v3, "[ASM] Abort Launching r: "

    .line 980
    .line 981
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 982
    .line 983
    .line 984
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 985
    .line 986
    .line 987
    const-string v2, " as source: "

    .line 988
    .line 989
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 990
    .line 991
    .line 992
    if-eqz v13, :cond_36

    .line 993
    .line 994
    move-object v6, v13

    .line 995
    :cond_36
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 996
    .line 997
    .line 998
    const-string v2, " is in background. New task: "

    .line 999
    .line 1000
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1001
    .line 1002
    .line 1003
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1004
    .line 1005
    .line 1006
    const-string v2, ". Top activity: "

    .line 1007
    .line 1008
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1009
    .line 1010
    .line 1011
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1012
    .line 1013
    .line 1014
    const-string v2, ". BAL Code: "

    .line 1015
    .line 1016
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1017
    .line 1018
    .line 1019
    invoke-static/range {v35 .. v35}, Lcom/android/server/wm/BackgroundActivityStartController;->balCodeToString(I)Ljava/lang/String;

    .line 1020
    .line 1021
    .line 1022
    move-result-object v2

    .line 1023
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1024
    .line 1025
    .line 1026
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1027
    .line 1028
    .line 1029
    move-result-object v0

    .line 1030
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    .line 1032
    .line 1033
    move/from16 v12, v37

    .line 1034
    .line 1035
    goto :goto_26

    .line 1036
    :cond_37
    move/from16 v12, v17

    .line 1037
    .line 1038
    :goto_26
    if-nez v12, :cond_38

    .line 1039
    .line 1040
    return v16

    .line 1041
    :cond_38
    return v37
.end method

.method public final isExternalStartForSpeg()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSpeg:Lcom/android/server/pm/SpegService;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return v2

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 10
    .line 11
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 12
    .line 13
    if-eqz v3, :cond_7

    .line 14
    .line 15
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    .line 16
    .line 17
    if-nez v3, :cond_1

    .line 18
    .line 19
    goto/16 :goto_2

    .line 20
    .line 21
    :cond_1
    iget v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    .line 22
    .line 23
    const/4 v3, -0x1

    .line 24
    if-ne v1, v3, :cond_2

    .line 25
    .line 26
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    :cond_2
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSpeg:Lcom/android/server/pm/SpegService;

    .line 31
    .line 32
    iget-boolean v3, v0, Lcom/android/server/pm/SpegService;->mIsSpegInOpeartion:Z

    .line 33
    .line 34
    const/4 v4, 0x1

    .line 35
    if-eqz v3, :cond_3

    .line 36
    .line 37
    iget v3, v0, Lcom/android/server/pm/SpegService;->mSpegUid:I

    .line 38
    .line 39
    if-ne v1, v3, :cond_3

    .line 40
    .line 41
    move v3, v4

    .line 42
    goto :goto_0

    .line 43
    :cond_3
    move v3, v2

    .line 44
    :goto_0
    const-string v5, "App with uid "

    .line 45
    .line 46
    const-string v6, "SPEG"

    .line 47
    .line 48
    if-eqz v3, :cond_6

    .line 49
    .line 50
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 51
    .line 52
    iget-object v3, v3, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {v0, v3}, Lcom/android/server/pm/SpegService;->isSpegInOpeartion(Ljava/lang/String;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-nez v0, :cond_4

    .line 59
    .line 60
    const-string v0, " is trying to start an external app "

    .line 61
    .line 62
    invoke-static {v1, v5, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 67
    .line 68
    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    .line 69
    .line 70
    invoke-static {v0, p0, v6}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    return v4

    .line 74
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 75
    .line 76
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    .line 77
    .line 78
    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 79
    .line 80
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    if-nez v3, :cond_5

    .line 85
    .line 86
    move v0, v4

    .line 87
    goto :goto_1

    .line 88
    :cond_5
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    xor-int/2addr v0, v4

    .line 101
    :goto_1
    if-eqz v0, :cond_7

    .line 102
    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    const-string v1, "App "

    .line 106
    .line 107
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 111
    .line 112
    iget-object v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    .line 113
    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    const-string v1, " is trying to start an external intent: "

    .line 118
    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 123
    .line 124
    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 125
    .line 126
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    invoke-static {v6, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    .line 135
    .line 136
    return v4

    .line 137
    :cond_6
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 138
    .line 139
    iget-object v3, v3, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    .line 140
    .line 141
    invoke-virtual {v0, v3}, Lcom/android/server/pm/SpegService;->isSpegInOpeartion(Ljava/lang/String;)Z

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    if-eqz v0, :cond_7

    .line 146
    .line 147
    const-string v0, " is trying to launch SPEG app "

    .line 148
    .line 149
    invoke-static {v1, v5, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 154
    .line 155
    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    .line 156
    .line 157
    invoke-static {v0, p0, v6}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    return v4

    .line 161
    :cond_7
    :goto_2
    return v2
.end method

.method public final logPIOnlyCreatorAllowsBAL()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mCanMoveToFrontCode:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget v2, p0, Lcom/android/server/wm/ActivityStarter;->mRealCallingUid:I

    .line 15
    .line 16
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string/jumbo v2, "uid="

    .line 25
    .line 26
    .line 27
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget v2, p0, Lcom/android/server/wm/ActivityStarter;->mRealCallingUid:I

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    :cond_0
    const-string v2, "Without Android 15 BAL hardening this activity would be moved to the foreground. The activity is started by a PendingIntent. However, only the creator of the PendingIntent allows BAL while the sender does not allow BAL. realCallingPackage: "

    .line 40
    .line 41
    const-string v3, "; callingPackage: "

    .line 42
    .line 43
    invoke-static {v2, v0, v3}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 48
    .line 49
    iget-object v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v2, "; mTargetRootTask:"

    .line 55
    .line 56
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 60
    .line 61
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v2, "; mIntent: "

    .line 65
    .line 66
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 70
    .line 71
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v2, "; mTargetRootTask.getTopNonFinishingActivity: "

    .line 75
    .line 76
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 80
    .line 81
    invoke-virtual {v2, v1, v1}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v2, "; mTargetRootTask.getRootActivity: "

    .line 89
    .line 90
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 94
    .line 95
    const/4 v2, 0x0

    .line 96
    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    const-string v0, "ActivityTaskManager"

    .line 108
    .line 109
    invoke-static {v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    :cond_1
    return-void
.end method

.method public final onExecutionComplete()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mController:Lcom/android/server/wm/ActivityStartController;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-boolean v1, v0, Lcom/android/server/wm/ActivityStartController;->mInExecution:Z

    .line 5
    .line 6
    iget-object v1, v0, Lcom/android/server/wm/ActivityStartController;->mLastStarter:Lcom/android/server/wm/ActivityStarter;

    .line 7
    .line 8
    iget-object v2, v0, Lcom/android/server/wm/ActivityStartController;->mFactory:Lcom/android/server/wm/ActivityStarter$Factory;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    invoke-interface {v2}, Lcom/android/server/wm/ActivityStarter$Factory;->obtain()Lcom/android/server/wm/ActivityStarter;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iput-object v1, v0, Lcom/android/server/wm/ActivityStartController;->mLastStarter:Lcom/android/server/wm/ActivityStarter;

    .line 17
    .line 18
    :cond_0
    iget-object v0, v0, Lcom/android/server/wm/ActivityStartController;->mLastStarter:Lcom/android/server/wm/ActivityStarter;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 24
    .line 25
    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 28
    .line 29
    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 30
    .line 31
    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    .line 32
    .line 33
    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    .line 34
    .line 35
    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mRealCallingUid:I

    .line 36
    .line 37
    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mRealCallingUid:I

    .line 38
    .line 39
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 40
    .line 41
    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 42
    .line 43
    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mBalCode:I

    .line 44
    .line 45
    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mBalCode:I

    .line 46
    .line 47
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    .line 48
    .line 49
    iput-boolean v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    .line 50
    .line 51
    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 52
    .line 53
    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 54
    .line 55
    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    .line 56
    .line 57
    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    .line 58
    .line 59
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 60
    .line 61
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 62
    .line 63
    invoke-virtual {v1, v3}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->set(Lcom/android/server/wm/LaunchParamsController$LaunchParams;)V

    .line 64
    .line 65
    .line 66
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mNotTop:Lcom/android/server/wm/ActivityRecord;

    .line 67
    .line 68
    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mNotTop:Lcom/android/server/wm/ActivityRecord;

    .line 69
    .line 70
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    .line 71
    .line 72
    iput-boolean v1, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    .line 73
    .line 74
    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    .line 75
    .line 76
    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    .line 77
    .line 78
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 79
    .line 80
    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 81
    .line 82
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 83
    .line 84
    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 85
    .line 86
    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredWindowingMode:I

    .line 87
    .line 88
    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mPreferredWindowingMode:I

    .line 89
    .line 90
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    .line 91
    .line 92
    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    .line 93
    .line 94
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mInTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 95
    .line 96
    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mInTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 97
    .line 98
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 99
    .line 100
    iput-boolean v1, v0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 101
    .line 102
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRootTask:Lcom/android/server/wm/Task;

    .line 103
    .line 104
    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mSourceRootTask:Lcom/android/server/wm/Task;

    .line 105
    .line 106
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mTargetTask:Lcom/android/server/wm/Task;

    .line 107
    .line 108
    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mTargetTask:Lcom/android/server/wm/Task;

    .line 109
    .line 110
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 111
    .line 112
    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 113
    .line 114
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityStarter;->mIsTaskCleared:Z

    .line 115
    .line 116
    iput-boolean v1, v0, Lcom/android/server/wm/ActivityStarter;->mIsTaskCleared:Z

    .line 117
    .line 118
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    .line 119
    .line 120
    iput-boolean v1, v0, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    .line 121
    .line 122
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityStarter;->mNoAnimation:Z

    .line 123
    .line 124
    iput-boolean v1, v0, Lcom/android/server/wm/ActivityStarter;->mNoAnimation:Z

    .line 125
    .line 126
    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mCanMoveToFrontCode:I

    .line 127
    .line 128
    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mCanMoveToFrontCode:I

    .line 129
    .line 130
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityStarter;->mFrozeTaskList:Z

    .line 131
    .line 132
    iput-boolean v1, v0, Lcom/android/server/wm/ActivityStarter;->mFrozeTaskList:Z

    .line 133
    .line 134
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 135
    .line 136
    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 137
    .line 138
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 139
    .line 140
    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 141
    .line 142
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityStarter;->mIntentDelivered:Z

    .line 143
    .line 144
    iput-boolean v1, v0, Lcom/android/server/wm/ActivityStarter;->mIntentDelivered:Z

    .line 145
    .line 146
    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityResult:I

    .line 147
    .line 148
    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityResult:I

    .line 149
    .line 150
    iget-wide v3, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityTimeMs:J

    .line 151
    .line 152
    iput-wide v3, v0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityTimeMs:J

    .line 153
    .line 154
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartReason:Ljava/lang/String;

    .line 155
    .line 156
    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mLastStartReason:Ljava/lang/String;

    .line 157
    .line 158
    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 159
    .line 160
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 161
    .line 162
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 163
    .line 164
    .line 165
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    .line 166
    .line 167
    iput-object v3, v0, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    .line 168
    .line 169
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 170
    .line 171
    iput-object v3, v0, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 172
    .line 173
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->intentGrants:Lcom/android/server/uri/NeededUriGrants;

    .line 174
    .line 175
    iput-object v3, v0, Lcom/android/server/wm/ActivityStarter$Request;->intentGrants:Lcom/android/server/uri/NeededUriGrants;

    .line 176
    .line 177
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->ephemeralIntent:Landroid/content/Intent;

    .line 178
    .line 179
    iput-object v3, v0, Lcom/android/server/wm/ActivityStarter$Request;->ephemeralIntent:Landroid/content/Intent;

    .line 180
    .line 181
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    .line 182
    .line 183
    iput-object v3, v0, Lcom/android/server/wm/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    .line 184
    .line 185
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 186
    .line 187
    iput-object v3, v0, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 188
    .line 189
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->resolveInfo:Landroid/content/pm/ResolveInfo;

    .line 190
    .line 191
    iput-object v3, v0, Lcom/android/server/wm/ActivityStarter$Request;->resolveInfo:Landroid/content/pm/ResolveInfo;

    .line 192
    .line 193
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 194
    .line 195
    iput-object v3, v0, Lcom/android/server/wm/ActivityStarter$Request;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 196
    .line 197
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 198
    .line 199
    iput-object v3, v0, Lcom/android/server/wm/ActivityStarter$Request;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 200
    .line 201
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->resultTo:Landroid/os/IBinder;

    .line 202
    .line 203
    iput-object v3, v0, Lcom/android/server/wm/ActivityStarter$Request;->resultTo:Landroid/os/IBinder;

    .line 204
    .line 205
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->resultWho:Ljava/lang/String;

    .line 206
    .line 207
    iput-object v3, v0, Lcom/android/server/wm/ActivityStarter$Request;->resultWho:Ljava/lang/String;

    .line 208
    .line 209
    iget v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->requestCode:I

    .line 210
    .line 211
    iput v3, v0, Lcom/android/server/wm/ActivityStarter$Request;->requestCode:I

    .line 212
    .line 213
    iget v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->callingPid:I

    .line 214
    .line 215
    iput v3, v0, Lcom/android/server/wm/ActivityStarter$Request;->callingPid:I

    .line 216
    .line 217
    iget v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    .line 218
    .line 219
    iput v3, v0, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    .line 220
    .line 221
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    .line 222
    .line 223
    iput-object v3, v0, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    .line 224
    .line 225
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->callingFeatureId:Ljava/lang/String;

    .line 226
    .line 227
    iput-object v3, v0, Lcom/android/server/wm/ActivityStarter$Request;->callingFeatureId:Ljava/lang/String;

    .line 228
    .line 229
    iget v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->realCallingPid:I

    .line 230
    .line 231
    iput v3, v0, Lcom/android/server/wm/ActivityStarter$Request;->realCallingPid:I

    .line 232
    .line 233
    iget v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    .line 234
    .line 235
    iput v3, v0, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    .line 236
    .line 237
    iget v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->startFlags:I

    .line 238
    .line 239
    iput v3, v0, Lcom/android/server/wm/ActivityStarter$Request;->startFlags:I

    .line 240
    .line 241
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->activityOptions:Lcom/android/server/wm/SafeActivityOptions;

    .line 242
    .line 243
    iput-object v3, v0, Lcom/android/server/wm/ActivityStarter$Request;->activityOptions:Lcom/android/server/wm/SafeActivityOptions;

    .line 244
    .line 245
    iget-boolean v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->ignoreTargetSecurity:Z

    .line 246
    .line 247
    iput-boolean v3, v0, Lcom/android/server/wm/ActivityStarter$Request;->ignoreTargetSecurity:Z

    .line 248
    .line 249
    iget-boolean v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->componentSpecified:Z

    .line 250
    .line 251
    iput-boolean v3, v0, Lcom/android/server/wm/ActivityStarter$Request;->componentSpecified:Z

    .line 252
    .line 253
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->outActivity:[Lcom/android/server/wm/ActivityRecord;

    .line 254
    .line 255
    iput-object v3, v0, Lcom/android/server/wm/ActivityStarter$Request;->outActivity:[Lcom/android/server/wm/ActivityRecord;

    .line 256
    .line 257
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->inTask:Lcom/android/server/wm/Task;

    .line 258
    .line 259
    iput-object v3, v0, Lcom/android/server/wm/ActivityStarter$Request;->inTask:Lcom/android/server/wm/Task;

    .line 260
    .line 261
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->inTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 262
    .line 263
    iput-object v3, v0, Lcom/android/server/wm/ActivityStarter$Request;->inTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 264
    .line 265
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->reason:Ljava/lang/String;

    .line 266
    .line 267
    iput-object v3, v0, Lcom/android/server/wm/ActivityStarter$Request;->reason:Ljava/lang/String;

    .line 268
    .line 269
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->profilerInfo:Landroid/app/ProfilerInfo;

    .line 270
    .line 271
    iput-object v3, v0, Lcom/android/server/wm/ActivityStarter$Request;->profilerInfo:Landroid/app/ProfilerInfo;

    .line 272
    .line 273
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->globalConfig:Landroid/content/res/Configuration;

    .line 274
    .line 275
    iput-object v3, v0, Lcom/android/server/wm/ActivityStarter$Request;->globalConfig:Landroid/content/res/Configuration;

    .line 276
    .line 277
    iget v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    .line 278
    .line 279
    iput v3, v0, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    .line 280
    .line 281
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->waitResult:Landroid/app/WaitResult;

    .line 282
    .line 283
    iput-object v3, v0, Lcom/android/server/wm/ActivityStarter$Request;->waitResult:Landroid/app/WaitResult;

    .line 284
    .line 285
    iget-boolean v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->allowPendingRemoteAnimationRegistryLookup:Z

    .line 286
    .line 287
    iput-boolean v3, v0, Lcom/android/server/wm/ActivityStarter$Request;->allowPendingRemoteAnimationRegistryLookup:Z

    .line 288
    .line 289
    iget v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->filterCallingUid:I

    .line 290
    .line 291
    iput v3, v0, Lcom/android/server/wm/ActivityStarter$Request;->filterCallingUid:I

    .line 292
    .line 293
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->originatingPendingIntent:Lcom/android/server/am/PendingIntentRecord;

    .line 294
    .line 295
    iput-object v3, v0, Lcom/android/server/wm/ActivityStarter$Request;->originatingPendingIntent:Lcom/android/server/am/PendingIntentRecord;

    .line 296
    .line 297
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->forcedBalByPiSender:Landroid/app/BackgroundStartPrivileges;

    .line 298
    .line 299
    iput-object v3, v0, Lcom/android/server/wm/ActivityStarter$Request;->forcedBalByPiSender:Landroid/app/BackgroundStartPrivileges;

    .line 300
    .line 301
    iget-boolean v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->freezeScreen:Z

    .line 302
    .line 303
    iput-boolean v3, v0, Lcom/android/server/wm/ActivityStarter$Request;->freezeScreen:Z

    .line 304
    .line 305
    iget-object v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->errorCallbackToken:Landroid/os/IBinder;

    .line 306
    .line 307
    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter$Request;->errorCallbackToken:Landroid/os/IBinder;

    .line 308
    .line 309
    invoke-interface {v2, p0}, Lcom/android/server/wm/ActivityStarter$Factory;->recycle(Lcom/android/server/wm/ActivityStarter;)V

    .line 310
    .line 311
    .line 312
    return-void
.end method

.method public final onExecutionStarted()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mController:Lcom/android/server/wm/ActivityStartController;

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStartController;->mInExecution:Z

    .line 5
    .line 6
    return-void
.end method

.method public final postStartActivityProcessing(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)V
    .locals 10

    .line 1
    invoke-static {p1}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mFrozeTaskList:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/android/server/wm/RecentTasks;->resetFreezeTaskListReorderingOnTimeout()V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-static {p1}, Landroid/app/ActivityManager;->isStartResultFatalError(I)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    const/4 v2, 0x1

    .line 32
    const/4 v3, 0x0

    .line 33
    const/4 v4, 0x2

    .line 34
    const/4 v5, 0x3

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    goto :goto_3

    .line 38
    :cond_2
    if-eq p1, v5, :cond_3

    .line 39
    .line 40
    if-eq p1, v4, :cond_3

    .line 41
    .line 42
    goto :goto_3

    .line 43
    :cond_3
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    sub-int/2addr v0, v2

    .line 50
    move v6, v3

    .line 51
    :goto_0
    if-ltz v0, :cond_8

    .line 52
    .line 53
    iget-object v7, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    check-cast v7, Lcom/android/server/wm/ActivityTaskSupervisor$WaitInfo;

    .line 60
    .line 61
    iget-object v8, v7, Lcom/android/server/wm/ActivityTaskSupervisor$WaitInfo;->mLaunchingState:Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;

    .line 62
    .line 63
    iget-object v8, v8, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->mAssociatedTransitionInfo:Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    .line 64
    .line 65
    if-eqz v8, :cond_5

    .line 66
    .line 67
    iget-object v8, v8, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 68
    .line 69
    if-ne p2, v8, :cond_4

    .line 70
    .line 71
    move v8, v2

    .line 72
    goto :goto_1

    .line 73
    :cond_4
    move v8, v3

    .line 74
    goto :goto_1

    .line 75
    :cond_5
    iget-object v8, v7, Lcom/android/server/wm/ActivityTaskSupervisor$WaitInfo;->mTargetComponent:Landroid/content/ComponentName;

    .line 76
    .line 77
    iget-object v9, p2, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 78
    .line 79
    invoke-virtual {v8, v9}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v8

    .line 83
    :goto_1
    if-nez v8, :cond_6

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_6
    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskSupervisor$WaitInfo;->mResult:Landroid/app/WaitResult;

    .line 87
    .line 88
    iput p1, v7, Landroid/app/WaitResult;->result:I

    .line 89
    .line 90
    if-ne p1, v5, :cond_7

    .line 91
    .line 92
    iget-object v6, p2, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 93
    .line 94
    iput-object v6, v7, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    .line 95
    .line 96
    iget-object v6, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    .line 97
    .line 98
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move v6, v2

    .line 102
    :cond_7
    :goto_2
    add-int/lit8 v0, v0, -0x1

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_8
    if-eqz v6, :cond_9

    .line 106
    .line 107
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 108
    .line 109
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 110
    .line 111
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 112
    .line 113
    .line 114
    :cond_9
    :goto_3
    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 115
    .line 116
    if-eqz v0, :cond_a

    .line 117
    .line 118
    goto :goto_4

    .line 119
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetTask:Lcom/android/server/wm/Task;

    .line 120
    .line 121
    :goto_4
    if-eqz p3, :cond_13

    .line 122
    .line 123
    if-eqz v0, :cond_13

    .line 124
    .line 125
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    .line 126
    .line 127
    .line 128
    move-result p3

    .line 129
    if-nez p3, :cond_b

    .line 130
    .line 131
    goto/16 :goto_8

    .line 132
    .line 133
    :cond_b
    iget-object p3, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 134
    .line 135
    if-eq p1, v4, :cond_c

    .line 136
    .line 137
    if-ne p1, v5, :cond_f

    .line 138
    .line 139
    :cond_c
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    iget-object v1, v1, Lcom/android/server/wm/TaskDisplayArea;->mRootHomeTask:Lcom/android/server/wm/Task;

    .line 144
    .line 145
    if-eqz v1, :cond_d

    .line 146
    .line 147
    const/4 v4, 0x0

    .line 148
    invoke-virtual {v1, v4}, Lcom/android/server/wm/TaskFragment;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    if-eqz v1, :cond_d

    .line 153
    .line 154
    move v1, v2

    .line 155
    goto :goto_5

    .line 156
    :cond_d
    move v1, v3

    .line 157
    :goto_5
    invoke-virtual {v0, v2, v2}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 158
    .line 159
    .line 160
    move-result-object v4

    .line 161
    if-eqz v4, :cond_e

    .line 162
    .line 163
    iget-boolean v4, v4, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    .line 164
    .line 165
    if-eqz v4, :cond_e

    .line 166
    .line 167
    goto :goto_6

    .line 168
    :cond_e
    move v2, v3

    .line 169
    :goto_6
    iget-object v4, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    .line 170
    .line 171
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 172
    .line 173
    .line 174
    move-result-object v5

    .line 175
    iget-boolean v6, p0, Lcom/android/server/wm/ActivityStarter;->mIsTaskCleared:Z

    .line 176
    .line 177
    iget-object v7, v4, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;

    .line 178
    .line 179
    const/4 v8, 0x4

    .line 180
    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 181
    .line 182
    .line 183
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    .line 184
    .line 185
    .line 186
    move-result-object v9

    .line 187
    iput-object v5, v9, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 188
    .line 189
    iput v1, v9, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 190
    .line 191
    iput v6, v9, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 192
    .line 193
    iput v2, v9, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 194
    .line 195
    invoke-virtual {v7, v8, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    iget-object v2, v4, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityRestartAttempt:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 200
    .line 201
    invoke-virtual {v4, v2, v1}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;Landroid/os/Message;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 205
    .line 206
    .line 207
    :cond_f
    invoke-static {p1}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    .line 208
    .line 209
    .line 210
    move-result p1

    .line 211
    if-eqz p1, :cond_10

    .line 212
    .line 213
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    .line 218
    .line 219
    iget-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 220
    .line 221
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityInterceptorCallbacks:Landroid/util/SparseArray;

    .line 222
    .line 223
    new-instance v2, Lcom/android/server/wm/ActivityStartInterceptor$$ExternalSyntheticLambda1;

    .line 224
    .line 225
    invoke-direct {v2, v0, p2}, Lcom/android/server/wm/ActivityStartInterceptor$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/ActivityStartInterceptor;Lcom/android/server/wm/ActivityRecord;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityStartInterceptor;->getInterceptorInfo(Lcom/android/server/wm/ActivityStartInterceptor$$ExternalSyntheticLambda1;)Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    move v2, v3

    .line 233
    :goto_7
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 234
    .line 235
    .line 236
    move-result v4

    .line 237
    if-ge v2, v4, :cond_10

    .line 238
    .line 239
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v4

    .line 243
    check-cast v4, Lcom/android/server/wm/ActivityInterceptorCallback;

    .line 244
    .line 245
    iget-object v5, p2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 246
    .line 247
    invoke-interface {v4, p1, v5, v0}, Lcom/android/server/wm/ActivityInterceptorCallback;->onActivityLaunched(Landroid/app/TaskInfo;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;)V

    .line 248
    .line 249
    .line 250
    add-int/lit8 v2, v2, 0x1

    .line 251
    .line 252
    goto :goto_7

    .line 253
    :cond_10
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_SA_LOGGING:Z

    .line 254
    .line 255
    if-eqz p1, :cond_13

    .line 256
    .line 257
    iget-boolean p1, p0, Lcom/android/server/wm/ActivityStarter;->mIsFreeformLaunching:Z

    .line 258
    .line 259
    if-eqz p1, :cond_13

    .line 260
    .line 261
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 262
    .line 263
    .line 264
    move-result p1

    .line 265
    if-eqz p1, :cond_13

    .line 266
    .line 267
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    .line 268
    .line 269
    .line 270
    move-result p1

    .line 271
    if-nez p1, :cond_12

    .line 272
    .line 273
    const-string/jumbo p1, "startActivityFromRecents"

    .line 274
    .line 275
    .line 276
    iget-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartReason:Ljava/lang/String;

    .line 277
    .line 278
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 279
    .line 280
    .line 281
    move-result p1

    .line 282
    if-nez p1, :cond_12

    .line 283
    .line 284
    iget-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 285
    .line 286
    iget-object p1, p1, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    .line 287
    .line 288
    const-string p2, "android.server.wm.app"

    .line 289
    .line 290
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 291
    .line 292
    .line 293
    move-result p1

    .line 294
    if-nez p1, :cond_12

    .line 295
    .line 296
    iget-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 297
    .line 298
    iget-object p1, p1, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    .line 299
    .line 300
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 301
    .line 302
    .line 303
    move-result p1

    .line 304
    if-nez p1, :cond_12

    .line 305
    .line 306
    iget-object p1, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 307
    .line 308
    iget-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 309
    .line 310
    iget p2, p2, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    .line 311
    .line 312
    iget p1, p1, Lcom/android/server/wm/RecentTasks;->mRecentsUid:I

    .line 313
    .line 314
    invoke-static {p2, p1}, Landroid/os/UserHandle;->isSameApp(II)Z

    .line 315
    .line 316
    .line 317
    move-result p1

    .line 318
    if-nez p1, :cond_12

    .line 319
    .line 320
    iget-object p1, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 321
    .line 322
    iget-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 323
    .line 324
    iget p2, p2, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    .line 325
    .line 326
    iget p1, p1, Lcom/android/server/wm/RecentTasks;->mLauncherInfo:I

    .line 327
    .line 328
    invoke-static {p2, p1}, Landroid/os/UserHandle;->isSameApp(II)Z

    .line 329
    .line 330
    .line 331
    move-result p1

    .line 332
    if-nez p1, :cond_12

    .line 333
    .line 334
    iget-object p1, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    .line 335
    .line 336
    iget p2, p1, Lcom/android/server/wm/MultiTaskingController;->mSystemUIUid:I

    .line 337
    .line 338
    const/4 p3, -0x1

    .line 339
    if-ne p2, p3, :cond_11

    .line 340
    .line 341
    iget-object p2, p1, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 342
    .line 343
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    .line 344
    .line 345
    .line 346
    move-result-object p2

    .line 347
    const-wide/32 v0, 0x100000

    .line 348
    .line 349
    .line 350
    const-string p3, "com.android.systemui"

    .line 351
    .line 352
    invoke-virtual {p2, p3, v0, v1, v3}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    .line 353
    .line 354
    .line 355
    move-result p2

    .line 356
    iput p2, p1, Lcom/android/server/wm/MultiTaskingController;->mSystemUIUid:I

    .line 357
    .line 358
    :cond_11
    iget p1, p1, Lcom/android/server/wm/MultiTaskingController;->mSystemUIUid:I

    .line 359
    .line 360
    iget-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 361
    .line 362
    iget p2, p2, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    .line 363
    .line 364
    if-eq p1, p2, :cond_12

    .line 365
    .line 366
    goto :goto_8

    .line 367
    :cond_12
    const-string p1, "2004"

    .line 368
    .line 369
    const-string p2, "From application"

    .line 370
    .line 371
    invoke-static {p1, p2}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    .line 373
    .line 374
    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 375
    .line 376
    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    .line 377
    .line 378
    const-string p1, "2013"

    .line 379
    .line 380
    invoke-static {p1, p0}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    :cond_13
    :goto_8
    return-void
.end method

.method public recycleTask(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;)I
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v4, p1

    .line 4
    .line 5
    move-object/from16 v1, p2

    .line 6
    .line 7
    move-object/from16 v2, p3

    .line 8
    .line 9
    move-object/from16 v3, p4

    .line 10
    .line 11
    iget v5, v4, Lcom/android/server/wm/Task;->mUserId:I

    .line 12
    .line 13
    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 14
    .line 15
    iget v7, v6, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 16
    .line 17
    const/4 v13, 0x0

    .line 18
    const/4 v8, 0x1

    .line 19
    if-eq v5, v7, :cond_0

    .line 20
    .line 21
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 26
    .line 27
    iput-boolean v8, v0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 28
    .line 29
    return v13

    .line 30
    :cond_0
    const/4 v5, 0x0

    .line 31
    if-eqz v2, :cond_3

    .line 32
    .line 33
    iget-object v7, v4, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    .line 34
    .line 35
    if-nez v7, :cond_1

    .line 36
    .line 37
    invoke-virtual {v4, v6, v5, v5}, Lcom/android/server/wm/Task;->setIntent(Lcom/android/server/wm/ActivityRecord;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    iget-object v6, v6, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 42
    .line 43
    invoke-virtual {v6}, Landroid/content/Intent;->getFlags()I

    .line 44
    .line 45
    .line 46
    move-result v6

    .line 47
    const/16 v7, 0x4000

    .line 48
    .line 49
    and-int/2addr v6, v7

    .line 50
    if-eqz v6, :cond_2

    .line 51
    .line 52
    iget-object v6, v4, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    .line 53
    .line 54
    invoke-virtual {v6, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    iget-object v6, v4, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    .line 59
    .line 60
    invoke-virtual {v6, v7}, Landroid/content/Intent;->removeFlags(I)V

    .line 61
    .line 62
    .line 63
    :cond_3
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->isFreeformForceHidden()Z

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 68
    .line 69
    invoke-virtual {v7, v13, v1}, Lcom/android/server/wm/RootWindowContainer;->startPowerModeLaunchIfNeeded(ZLcom/android/server/wm/ActivityRecord;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 73
    .line 74
    .line 75
    move-result-object v9

    .line 76
    invoke-virtual {v9}, Lcom/android/server/wm/TaskFragment;->clearLastPausedActivity()V

    .line 77
    .line 78
    .line 79
    iget-object v9, v1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 80
    .line 81
    if-eqz v9, :cond_4

    .line 82
    .line 83
    invoke-virtual {v9}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    .line 84
    .line 85
    .line 86
    move-result-object v10

    .line 87
    goto :goto_1

    .line 88
    :cond_4
    move-object v10, v5

    .line 89
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/ConfigurationContainer;->isAlwaysOnTopFreeform()Z

    .line 90
    .line 91
    .line 92
    move-result v11

    .line 93
    iget-object v12, v0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 94
    .line 95
    const v15, 0x7fffffff

    .line 96
    .line 97
    .line 98
    if-eqz v12, :cond_7

    .line 99
    .line 100
    invoke-virtual {v12}, Landroid/content/Intent;->getLaunchOverTargetTaskId()I

    .line 101
    .line 102
    .line 103
    move-result v12

    .line 104
    const/4 v14, -0x1

    .line 105
    if-eq v12, v14, :cond_7

    .line 106
    .line 107
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeStandardOrUndefined()Z

    .line 108
    .line 109
    .line 110
    move-result v12

    .line 111
    if-eqz v12, :cond_7

    .line 112
    .line 113
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/ActivityRecord;->isResizeable()Z

    .line 114
    .line 115
    .line 116
    move-result v12

    .line 117
    if-eqz v12, :cond_7

    .line 118
    .line 119
    iget-object v12, v1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 120
    .line 121
    iget-object v14, v0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 122
    .line 123
    invoke-virtual {v14}, Landroid/content/Intent;->getLaunchOverTargetTaskId()I

    .line 124
    .line 125
    .line 126
    move-result v14

    .line 127
    invoke-virtual {v0, v14, v12}, Lcom/android/server/wm/ActivityStarter;->canMoveTaskToBottomTask(ILcom/android/server/wm/Task;)Z

    .line 128
    .line 129
    .line 130
    move-result v14

    .line 131
    if-nez v14, :cond_5

    .line 132
    .line 133
    iget-object v14, v0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 134
    .line 135
    invoke-virtual {v14}, Landroid/content/Intent;->getForceLaunchOverTargetTask()Z

    .line 136
    .line 137
    .line 138
    move-result v14

    .line 139
    if-eqz v14, :cond_7

    .line 140
    .line 141
    :cond_5
    iget v14, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 142
    .line 143
    iget-object v13, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 144
    .line 145
    invoke-virtual {v0, v1, v14, v12, v13}, Lcom/android/server/wm/ActivityStarter;->getOrCreateRootTask(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/Task;Landroid/app/ActivityOptions;)Lcom/android/server/wm/Task;

    .line 146
    .line 147
    .line 148
    move-result-object v13

    .line 149
    if-eq v12, v13, :cond_7

    .line 150
    .line 151
    invoke-virtual {v12, v13}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    .line 152
    .line 153
    .line 154
    move-result v14

    .line 155
    if-nez v14, :cond_7

    .line 156
    .line 157
    invoke-static {v13}, Lcom/android/server/wm/Task;->findEnterPipOnTaskSwitchCandidate(Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityRecord;

    .line 158
    .line 159
    .line 160
    move-result-object v7

    .line 161
    if-eqz v7, :cond_6

    .line 162
    .line 163
    iget-object v9, v7, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 164
    .line 165
    if-eq v9, v12, :cond_6

    .line 166
    .line 167
    iget-object v9, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 168
    .line 169
    invoke-static {v7, v5, v1, v9}, Lcom/android/server/wm/Task;->enableEnterPipOnTaskSwitch(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)V

    .line 170
    .line 171
    .line 172
    :cond_6
    const/16 v19, 0x0

    .line 173
    .line 174
    const/16 v20, 0x1

    .line 175
    .line 176
    const/16 v18, 0x1

    .line 177
    .line 178
    const/16 v21, 0x1

    .line 179
    .line 180
    const-string/jumbo v22, "reparentToLaunchPolicy"

    .line 181
    .line 182
    .line 183
    move-object/from16 v16, v12

    .line 184
    .line 185
    move-object/from16 v17, v13

    .line 186
    .line 187
    invoke-virtual/range {v16 .. v22}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/Task;ZIZZLjava/lang/String;)V

    .line 188
    .line 189
    .line 190
    iput-boolean v8, v0, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    .line 191
    .line 192
    iput-object v13, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 193
    .line 194
    move v12, v15

    .line 195
    const/4 v11, 0x2

    .line 196
    goto/16 :goto_13

    .line 197
    .line 198
    :cond_7
    iget-object v12, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 199
    .line 200
    if-nez v12, :cond_9

    .line 201
    .line 202
    iget-object v12, v0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 203
    .line 204
    if-eqz v12, :cond_8

    .line 205
    .line 206
    iget-object v12, v12, Lcom/android/server/wm/ActivityRecord;->mLaunchRootTask:Landroid/window/WindowContainerToken;

    .line 207
    .line 208
    if-eqz v12, :cond_8

    .line 209
    .line 210
    invoke-static {v12}, Lcom/android/server/wm/Task;->fromWindowContainerToken(Landroid/window/WindowContainerToken;)Lcom/android/server/wm/Task;

    .line 211
    .line 212
    .line 213
    move-result-object v12

    .line 214
    iput-object v12, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 215
    .line 216
    goto :goto_2

    .line 217
    :cond_8
    iget-object v12, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 218
    .line 219
    iget v13, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 220
    .line 221
    iget-object v14, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 222
    .line 223
    invoke-virtual {v0, v12, v13, v9, v14}, Lcom/android/server/wm/ActivityStarter;->getOrCreateRootTask(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/Task;Landroid/app/ActivityOptions;)Lcom/android/server/wm/Task;

    .line 224
    .line 225
    .line 226
    move-result-object v12

    .line 227
    iput-object v12, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 228
    .line 229
    :cond_9
    :goto_2
    sget-boolean v12, Lcom/samsung/android/rune/CoreRune;->MT_NEW_DEX_LAUNCH_POLICY:Z

    .line 230
    .line 231
    if-eqz v12, :cond_a

    .line 232
    .line 233
    iget-object v12, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 234
    .line 235
    invoke-virtual {v12}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 236
    .line 237
    .line 238
    move-result v12

    .line 239
    if-eqz v12, :cond_a

    .line 240
    .line 241
    iget-object v12, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 242
    .line 243
    if-eqz v12, :cond_a

    .line 244
    .line 245
    invoke-virtual {v12}, Landroid/app/ActivityOptions;->isForceLaunchTaskOnHome()Z

    .line 246
    .line 247
    .line 248
    move-result v12

    .line 249
    if-eqz v12, :cond_a

    .line 250
    .line 251
    iget-object v12, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 252
    .line 253
    iput-boolean v8, v12, Lcom/android/server/wm/Task;->mLaunchTaskOnHome:Z

    .line 254
    .line 255
    :cond_a
    iget-object v12, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 256
    .line 257
    if-eqz v12, :cond_b

    .line 258
    .line 259
    invoke-virtual {v12}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    .line 260
    .line 261
    .line 262
    :cond_b
    iget-object v12, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 263
    .line 264
    invoke-virtual {v12}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 265
    .line 266
    .line 267
    move-result-object v12

    .line 268
    iget-object v13, v0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 269
    .line 270
    if-ne v12, v13, :cond_15

    .line 271
    .line 272
    iget-object v12, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 273
    .line 274
    iget-object v12, v12, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 275
    .line 276
    invoke-virtual {v12}, Lcom/android/server/wm/DisplayContent;->getFocusedRootTask()Lcom/android/server/wm/Task;

    .line 277
    .line 278
    .line 279
    move-result-object v12

    .line 280
    if-nez v12, :cond_c

    .line 281
    .line 282
    move-object v13, v5

    .line 283
    goto :goto_3

    .line 284
    :cond_c
    iget-object v13, v0, Lcom/android/server/wm/ActivityStarter;->mNotTop:Lcom/android/server/wm/ActivityRecord;

    .line 285
    .line 286
    invoke-virtual {v12, v13}, Lcom/android/server/wm/Task;->topRunningNonDelayedActivityLocked(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    .line 287
    .line 288
    .line 289
    move-result-object v13

    .line 290
    :goto_3
    if-eqz v13, :cond_d

    .line 291
    .line 292
    iget-object v13, v13, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 293
    .line 294
    goto :goto_4

    .line 295
    :cond_d
    move-object v13, v5

    .line 296
    :goto_4
    iget-object v14, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 297
    .line 298
    invoke-virtual {v14}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    .line 299
    .line 300
    .line 301
    move-result v14

    .line 302
    if-eqz v14, :cond_e

    .line 303
    .line 304
    iget-object v14, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 305
    .line 306
    invoke-virtual {v9, v14}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    .line 307
    .line 308
    .line 309
    move-result v14

    .line 310
    if-nez v14, :cond_e

    .line 311
    .line 312
    move v14, v8

    .line 313
    goto :goto_5

    .line 314
    :cond_e
    const/4 v14, 0x0

    .line 315
    :goto_5
    if-nez v11, :cond_f

    .line 316
    .line 317
    invoke-virtual {v9}, Lcom/android/server/wm/ConfigurationContainer;->isAlwaysOnTopFreeform()Z

    .line 318
    .line 319
    .line 320
    move-result v11

    .line 321
    if-eqz v11, :cond_f

    .line 322
    .line 323
    move v11, v8

    .line 324
    goto :goto_6

    .line 325
    :cond_f
    const/4 v11, 0x0

    .line 326
    :goto_6
    if-nez v14, :cond_11

    .line 327
    .line 328
    if-eqz v11, :cond_10

    .line 329
    .line 330
    goto :goto_7

    .line 331
    :cond_10
    const/4 v11, 0x0

    .line 332
    goto :goto_8

    .line 333
    :cond_11
    :goto_7
    move v11, v8

    .line 334
    :goto_8
    if-ne v13, v9, :cond_14

    .line 335
    .line 336
    if-eqz v12, :cond_12

    .line 337
    .line 338
    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    .line 339
    .line 340
    .line 341
    move-result-object v14

    .line 342
    if-ne v13, v14, :cond_14

    .line 343
    .line 344
    :cond_12
    if-eqz v12, :cond_13

    .line 345
    .line 346
    if-eq v12, v10, :cond_13

    .line 347
    .line 348
    goto :goto_9

    .line 349
    :cond_13
    const/4 v10, 0x0

    .line 350
    goto :goto_a

    .line 351
    :cond_14
    :goto_9
    move v10, v8

    .line 352
    goto :goto_a

    .line 353
    :cond_15
    move v10, v8

    .line 354
    const/4 v11, 0x0

    .line 355
    :goto_a
    if-nez v10, :cond_17

    .line 356
    .line 357
    if-eqz v11, :cond_16

    .line 358
    .line 359
    goto :goto_b

    .line 360
    :cond_16
    move v12, v15

    .line 361
    const/4 v11, 0x2

    .line 362
    goto/16 :goto_12

    .line 363
    .line 364
    :cond_17
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->avoidMoveToFront()Z

    .line 365
    .line 366
    .line 367
    move-result v11

    .line 368
    if-nez v11, :cond_16

    .line 369
    .line 370
    if-eqz v10, :cond_18

    .line 371
    .line 372
    iget-object v11, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 373
    .line 374
    iget-object v11, v11, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 375
    .line 376
    const/high16 v12, 0x400000

    .line 377
    .line 378
    invoke-virtual {v11, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 379
    .line 380
    .line 381
    :cond_18
    iget-object v11, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 382
    .line 383
    if-eqz v11, :cond_19

    .line 384
    .line 385
    invoke-virtual {v11}, Landroid/app/ActivityOptions;->getLaunchRootTask()Landroid/window/WindowContainerToken;

    .line 386
    .line 387
    .line 388
    move-result-object v11

    .line 389
    invoke-static {v11}, Lcom/android/server/wm/Task;->fromWindowContainerToken(Landroid/window/WindowContainerToken;)Lcom/android/server/wm/Task;

    .line 390
    .line 391
    .line 392
    move-result-object v11

    .line 393
    if-eqz v11, :cond_19

    .line 394
    .line 395
    iget-object v12, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 396
    .line 397
    if-ne v11, v12, :cond_19

    .line 398
    .line 399
    invoke-virtual {v11}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    .line 400
    .line 401
    .line 402
    move-result v11

    .line 403
    if-eqz v11, :cond_19

    .line 404
    .line 405
    move v11, v8

    .line 406
    goto :goto_c

    .line 407
    :cond_19
    const/4 v11, 0x0

    .line 408
    :goto_c
    iget-boolean v12, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    .line 409
    .line 410
    if-eqz v12, :cond_1a

    .line 411
    .line 412
    iget-object v12, v0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 413
    .line 414
    if-eqz v12, :cond_1a

    .line 415
    .line 416
    iget-object v12, v12, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 417
    .line 418
    invoke-virtual {v1, v12}, Lcom/android/server/wm/ActivityRecord;->setTaskToAffiliateWith(Lcom/android/server/wm/Task;)V

    .line 419
    .line 420
    .line 421
    :cond_1a
    iget-object v12, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 422
    .line 423
    invoke-virtual {v1, v12}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    .line 424
    .line 425
    .line 426
    move-result v12

    .line 427
    if-eqz v12, :cond_1d

    .line 428
    .line 429
    iget-object v11, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 430
    .line 431
    if-eq v11, v9, :cond_1b

    .line 432
    .line 433
    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 434
    .line 435
    .line 436
    move-result-object v12

    .line 437
    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 438
    .line 439
    .line 440
    move-result-object v12

    .line 441
    if-eq v11, v12, :cond_1b

    .line 442
    .line 443
    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 444
    .line 445
    .line 446
    move-result-object v11

    .line 447
    const/4 v12, 0x0

    .line 448
    invoke-virtual {v11, v15, v9, v12}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 449
    .line 450
    .line 451
    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 452
    .line 453
    .line 454
    move-result-object v9

    .line 455
    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 456
    .line 457
    .line 458
    move-result-object v9

    .line 459
    invoke-virtual {v9}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    .line 460
    .line 461
    .line 462
    move-result-object v9

    .line 463
    :cond_1b
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 464
    .line 465
    .line 466
    move-result v11

    .line 467
    if-eqz v11, :cond_1c

    .line 468
    .line 469
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    .line 470
    .line 471
    .line 472
    move-result v11

    .line 473
    if-eqz v11, :cond_1c

    .line 474
    .line 475
    iget-object v11, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 476
    .line 477
    const/4 v12, 0x0

    .line 478
    invoke-virtual {v11, v12}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    .line 479
    .line 480
    .line 481
    move-result-object v11

    .line 482
    if-ne v1, v11, :cond_1c

    .line 483
    .line 484
    iget-object v11, v1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 485
    .line 486
    iget-object v12, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 487
    .line 488
    invoke-virtual {v11, v12}, Lcom/android/server/wm/TransitionController;->isTransientHide(Lcom/android/server/wm/Task;)Z

    .line 489
    .line 490
    .line 491
    move-result v11

    .line 492
    if-nez v11, :cond_1c

    .line 493
    .line 494
    move v11, v8

    .line 495
    goto :goto_d

    .line 496
    :cond_1c
    const/4 v11, 0x0

    .line 497
    :goto_d
    iget-object v12, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 498
    .line 499
    iget-boolean v13, v0, Lcom/android/server/wm/ActivityStarter;->mNoAnimation:Z

    .line 500
    .line 501
    iget-object v14, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 502
    .line 503
    iget-object v15, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 504
    .line 505
    iget-object v15, v15, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    .line 506
    .line 507
    const/16 v21, 0x1

    .line 508
    .line 509
    const-string v22, "bringingFoundTaskToFront"

    .line 510
    .line 511
    move-object/from16 v16, v12

    .line 512
    .line 513
    move-object/from16 v17, v9

    .line 514
    .line 515
    move/from16 v18, v13

    .line 516
    .line 517
    move-object/from16 v19, v14

    .line 518
    .line 519
    move-object/from16 v20, v15

    .line 520
    .line 521
    invoke-virtual/range {v16 .. v22}, Lcom/android/server/wm/Task;->moveTaskToFront(Lcom/android/server/wm/Task;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;ZLjava/lang/String;)V

    .line 522
    .line 523
    .line 524
    xor-int/2addr v11, v8

    .line 525
    iput-boolean v11, v0, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    .line 526
    .line 527
    const/4 v11, 0x2

    .line 528
    :goto_e
    const v12, 0x7fffffff

    .line 529
    .line 530
    .line 531
    goto :goto_11

    .line 532
    :cond_1d
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 533
    .line 534
    .line 535
    move-result v12

    .line 536
    const/4 v13, 0x2

    .line 537
    if-ne v12, v13, :cond_1f

    .line 538
    .line 539
    if-eqz v11, :cond_1e

    .line 540
    .line 541
    goto :goto_f

    .line 542
    :cond_1e
    move v11, v13

    .line 543
    goto :goto_e

    .line 544
    :cond_1f
    :goto_f
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 545
    .line 546
    .line 547
    move-result v11

    .line 548
    if-eqz v11, :cond_21

    .line 549
    .line 550
    iget-object v11, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 551
    .line 552
    invoke-virtual {v11}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 553
    .line 554
    .line 555
    move-result v11

    .line 556
    if-nez v11, :cond_21

    .line 557
    .line 558
    iget-object v11, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 559
    .line 560
    if-eqz v11, :cond_20

    .line 561
    .line 562
    invoke-virtual {v11}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    .line 563
    .line 564
    .line 565
    move-result-object v11

    .line 566
    goto :goto_10

    .line 567
    :cond_20
    move-object v11, v5

    .line 568
    :goto_10
    if-eqz v11, :cond_21

    .line 569
    .line 570
    new-instance v12, Landroid/graphics/Rect;

    .line 571
    .line 572
    invoke-direct {v12, v11}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 573
    .line 574
    .line 575
    iput-object v12, v9, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 576
    .line 577
    :cond_21
    iget-object v15, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 578
    .line 579
    const/16 v19, 0x1

    .line 580
    .line 581
    const-string/jumbo v20, "reparentToTargetRootTask"

    .line 582
    .line 583
    .line 584
    const/16 v16, 0x1

    .line 585
    .line 586
    const/16 v17, 0x0

    .line 587
    .line 588
    const/16 v18, 0x1

    .line 589
    .line 590
    move v11, v13

    .line 591
    move-object v14, v9

    .line 592
    const v12, 0x7fffffff

    .line 593
    .line 594
    .line 595
    invoke-virtual/range {v14 .. v20}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/Task;ZIZZLjava/lang/String;)V

    .line 596
    .line 597
    .line 598
    iput-boolean v8, v0, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    .line 599
    .line 600
    :goto_11
    iput-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 601
    .line 602
    :goto_12
    if-eqz v10, :cond_22

    .line 603
    .line 604
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->logPIOnlyCreatorAllowsBAL()V

    .line 605
    .line 606
    .line 607
    :cond_22
    iget-object v10, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 608
    .line 609
    iget-object v13, v10, Lcom/android/server/wm/ActivityRecord;->mLaunchCookie:Landroid/os/IBinder;

    .line 610
    .line 611
    if-eqz v13, :cond_23

    .line 612
    .line 613
    iput-object v13, v1, Lcom/android/server/wm/ActivityRecord;->mLaunchCookie:Landroid/os/IBinder;

    .line 614
    .line 615
    :cond_23
    iget-object v10, v10, Lcom/android/server/wm/ActivityRecord;->mPendingRemoteAnimation:Landroid/view/RemoteAnimationAdapter;

    .line 616
    .line 617
    if-eqz v10, :cond_24

    .line 618
    .line 619
    iput-object v10, v1, Lcom/android/server/wm/ActivityRecord;->mPendingRemoteAnimation:Landroid/view/RemoteAnimationAdapter;

    .line 620
    .line 621
    :cond_24
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    .line 622
    .line 623
    .line 624
    move-result-object v10

    .line 625
    iput-object v10, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 626
    .line 627
    iget-object v7, v7, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 628
    .line 629
    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 630
    .line 631
    .line 632
    move-result-object v7

    .line 633
    iget-object v10, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 634
    .line 635
    iget-object v13, v0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 636
    .line 637
    const/4 v14, 0x0

    .line 638
    invoke-virtual {v13, v9, v7, v10, v14}, Lcom/android/server/wm/ActivityTaskSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/wm/Task;Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/Task;Z)V

    .line 639
    .line 640
    .line 641
    :goto_13
    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 642
    .line 643
    invoke-virtual {v7}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 644
    .line 645
    .line 646
    move-result v7

    .line 647
    iget-object v9, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 648
    .line 649
    if-eqz v7, :cond_26

    .line 650
    .line 651
    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 652
    .line 653
    invoke-virtual {v7}, Lcom/android/server/wm/Task;->isFreeformStashed()Z

    .line 654
    .line 655
    .line 656
    move-result v7

    .line 657
    if-eqz v7, :cond_26

    .line 658
    .line 659
    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 660
    .line 661
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    .line 662
    .line 663
    .line 664
    move-result v7

    .line 665
    if-eqz v7, :cond_25

    .line 666
    .line 667
    if-nez v6, :cond_25

    .line 668
    .line 669
    move v6, v8

    .line 670
    goto :goto_14

    .line 671
    :cond_25
    const/4 v6, 0x0

    .line 672
    :goto_14
    iget-object v7, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    .line 673
    .line 674
    iget-object v10, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 675
    .line 676
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 677
    .line 678
    .line 679
    invoke-static {v10, v6}, Lcom/android/server/wm/TaskOrganizerController;->resetStashedFreeform(Lcom/android/server/wm/Task;Z)V

    .line 680
    .line 681
    .line 682
    :cond_26
    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 683
    .line 684
    if-eqz v6, :cond_28

    .line 685
    .line 686
    iget-boolean v7, v6, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 687
    .line 688
    if-nez v7, :cond_27

    .line 689
    .line 690
    iget-boolean v6, v6, Lcom/android/server/wm/ActivityRecord;->noDisplay:Z

    .line 691
    .line 692
    if-eqz v6, :cond_28

    .line 693
    .line 694
    :cond_27
    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 695
    .line 696
    :cond_28
    iget v6, v0, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    .line 697
    .line 698
    and-int/2addr v6, v8

    .line 699
    const-string v7, "intentActivityFound"

    .line 700
    .line 701
    if-eqz v6, :cond_2b

    .line 702
    .line 703
    iget-boolean v2, v0, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    .line 704
    .line 705
    if-nez v2, :cond_2a

    .line 706
    .line 707
    iget-boolean v2, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    .line 708
    .line 709
    if-eqz v2, :cond_2a

    .line 710
    .line 711
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_TASKS_enabled:[Z

    .line 712
    .line 713
    const/4 v3, 0x0

    .line 714
    aget-boolean v2, v2, v3

    .line 715
    .line 716
    if-eqz v2, :cond_29

    .line 717
    .line 718
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 719
    .line 720
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 721
    .line 722
    .line 723
    move-result-object v2

    .line 724
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 725
    .line 726
    .line 727
    move-result-object v1

    .line 728
    sget-object v9, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 729
    .line 730
    filled-new-array {v2, v1}, [Ljava/lang/Object;

    .line 731
    .line 732
    .line 733
    move-result-object v14

    .line 734
    const-wide v10, -0xa2fdae6a8ccd9L

    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    const/4 v12, 0x0

    .line 740
    const/4 v13, 0x0

    .line 741
    invoke-static/range {v9 .. v14}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 742
    .line 743
    .line 744
    :cond_29
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 745
    .line 746
    invoke-virtual {v1, v7, v5}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    .line 747
    .line 748
    .line 749
    :cond_2a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->resumeTargetRootTaskIfNeeded()V

    .line 750
    .line 751
    .line 752
    return v8

    .line 753
    :cond_2b
    if-eqz v2, :cond_2c

    .line 754
    .line 755
    invoke-virtual {v2, v8, v8}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 756
    .line 757
    .line 758
    move-result-object v2

    .line 759
    goto :goto_15

    .line 760
    :cond_2c
    move-object v2, v5

    .line 761
    :goto_15
    invoke-virtual {v4, v8, v8}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 762
    .line 763
    .line 764
    move-result-object v6

    .line 765
    if-eqz v2, :cond_2d

    .line 766
    .line 767
    iget v10, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 768
    .line 769
    const/high16 v13, 0x200000

    .line 770
    .line 771
    and-int/2addr v10, v13

    .line 772
    if-eqz v10, :cond_2d

    .line 773
    .line 774
    move v10, v8

    .line 775
    goto :goto_16

    .line 776
    :cond_2d
    const/4 v10, 0x0

    .line 777
    :goto_16
    if-eqz v10, :cond_2e

    .line 778
    .line 779
    iget-object v13, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 780
    .line 781
    iget-object v14, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 782
    .line 783
    invoke-virtual {v13, v6, v14}, Lcom/android/server/wm/Task;->resetTaskIfNeeded(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    .line 784
    .line 785
    .line 786
    move-result-object v6

    .line 787
    :cond_2e
    iget v13, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 788
    .line 789
    const v14, 0x10008000

    .line 790
    .line 791
    .line 792
    and-int v15, v13, v14

    .line 793
    .line 794
    const/4 v12, 0x3

    .line 795
    if-ne v15, v14, :cond_2f

    .line 796
    .line 797
    invoke-virtual {v4, v8}, Lcom/android/server/wm/Task;->performClearTaskForReuse(Z)V

    .line 798
    .line 799
    .line 800
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 801
    .line 802
    invoke-virtual {v4, v2, v5, v5}, Lcom/android/server/wm/Task;->setIntent(Lcom/android/server/wm/ActivityRecord;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 803
    .line 804
    .line 805
    iput-boolean v8, v0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 806
    .line 807
    iput-boolean v8, v0, Lcom/android/server/wm/ActivityStarter;->mIsTaskCleared:Z

    .line 808
    .line 809
    goto/16 :goto_1c

    .line 810
    .line 811
    :cond_2f
    const/high16 v14, 0x4000000

    .line 812
    .line 813
    and-int v15, v13, v14

    .line 814
    .line 815
    if-nez v15, :cond_45

    .line 816
    .line 817
    const/high16 v15, 0x80000

    .line 818
    .line 819
    and-int/2addr v15, v13

    .line 820
    if-eqz v15, :cond_30

    .line 821
    .line 822
    const/high16 v15, 0x8000000

    .line 823
    .line 824
    and-int/2addr v15, v13

    .line 825
    if-nez v15, :cond_30

    .line 826
    .line 827
    goto/16 :goto_1a

    .line 828
    .line 829
    :cond_30
    iget v15, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    .line 830
    .line 831
    if-eq v12, v15, :cond_45

    .line 832
    .line 833
    if-eq v11, v15, :cond_45

    .line 834
    .line 835
    const/4 v5, 0x4

    .line 836
    if-ne v5, v15, :cond_31

    .line 837
    .line 838
    goto/16 :goto_1a

    .line 839
    .line 840
    :cond_31
    and-int/2addr v14, v13

    .line 841
    if-nez v14, :cond_3b

    .line 842
    .line 843
    iget-boolean v14, v0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 844
    .line 845
    if-nez v14, :cond_3b

    .line 846
    .line 847
    const/high16 v14, 0x20000

    .line 848
    .line 849
    and-int/2addr v13, v14

    .line 850
    if-eqz v13, :cond_3b

    .line 851
    .line 852
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 853
    .line 854
    iget-object v6, v2, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 855
    .line 856
    iget v2, v2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 857
    .line 858
    new-instance v10, Lcom/android/server/wm/Task$$ExternalSyntheticLambda7;

    .line 859
    .line 860
    const/4 v13, 0x3

    .line 861
    invoke-direct {v10, v13}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda7;-><init>(I)V

    .line 862
    .line 863
    .line 864
    const-class v13, Lcom/android/server/wm/ActivityRecord;

    .line 865
    .line 866
    invoke-static {v13}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    .line 867
    .line 868
    .line 869
    move-result-object v13

    .line 870
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 871
    .line 872
    .line 873
    move-result-object v2

    .line 874
    invoke-static {v10, v13, v6, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Lcom/android/internal/util/function/TriPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    .line 875
    .line 876
    .line 877
    move-result-object v2

    .line 878
    invoke-virtual {v4, v2}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    .line 879
    .line 880
    .line 881
    move-result-object v6

    .line 882
    invoke-interface {v2}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    .line 883
    .line 884
    .line 885
    if-eqz v6, :cond_3a

    .line 886
    .line 887
    iget-object v2, v6, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 888
    .line 889
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 890
    .line 891
    .line 892
    move-result-object v10

    .line 893
    if-eqz v10, :cond_32

    .line 894
    .line 895
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 896
    .line 897
    .line 898
    move-result-object v10

    .line 899
    invoke-virtual {v10}, Lcom/android/server/wm/DisplayContent;->getFocusedRootTask()Lcom/android/server/wm/Task;

    .line 900
    .line 901
    .line 902
    move-result-object v10

    .line 903
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    .line 904
    .line 905
    .line 906
    move-result-object v13

    .line 907
    if-ne v10, v13, :cond_32

    .line 908
    .line 909
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    .line 910
    .line 911
    .line 912
    move-result v10

    .line 913
    if-eqz v10, :cond_32

    .line 914
    .line 915
    iget-boolean v10, v6, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    .line 916
    .line 917
    if-nez v10, :cond_32

    .line 918
    .line 919
    const/4 v10, 0x0

    .line 920
    invoke-virtual {v2, v10}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    .line 921
    .line 922
    .line 923
    move-result-object v13

    .line 924
    if-eq v13, v6, :cond_32

    .line 925
    .line 926
    iget-object v13, v6, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    .line 927
    .line 928
    sget-object v14, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    .line 929
    .line 930
    if-eq v13, v14, :cond_32

    .line 931
    .line 932
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 933
    .line 934
    .line 935
    move-result-object v13

    .line 936
    invoke-virtual {v13, v12, v10}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(II)V

    .line 937
    .line 938
    .line 939
    :cond_32
    sget-object v10, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_ADD_REMOVE_enabled:[Z

    .line 940
    .line 941
    aget-boolean v10, v10, v11

    .line 942
    .line 943
    if-eqz v10, :cond_33

    .line 944
    .line 945
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 946
    .line 947
    .line 948
    move-result-object v10

    .line 949
    invoke-static {v5}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 950
    .line 951
    .line 952
    move-result-object v5

    .line 953
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 954
    .line 955
    .line 956
    move-result-object v5

    .line 957
    sget-object v13, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 958
    .line 959
    filled-new-array {v10, v5}, [Ljava/lang/Object;

    .line 960
    .line 961
    .line 962
    move-result-object v18

    .line 963
    const/16 v17, 0x0

    .line 964
    .line 965
    const-wide v14, 0x59276a74a9683a61L    # 3.02327783715042E121

    .line 966
    .line 967
    .line 968
    .line 969
    .line 970
    const/16 v16, 0x0

    .line 971
    .line 972
    invoke-static/range {v13 .. v18}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 973
    .line 974
    .line 975
    :cond_33
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 976
    .line 977
    .line 978
    move-result-object v5

    .line 979
    if-eq v5, v2, :cond_36

    .line 980
    .line 981
    iget-boolean v10, v5, Lcom/android/server/wm/TaskFragment;->mIsEmbedded:Z

    .line 982
    .line 983
    if-eqz v10, :cond_34

    .line 984
    .line 985
    invoke-virtual {v5}, Lcom/android/server/wm/TaskFragment;->getNonFinishingActivityCount()I

    .line 986
    .line 987
    .line 988
    move-result v10

    .line 989
    if-ne v10, v8, :cond_34

    .line 990
    .line 991
    iput-boolean v8, v5, Lcom/android/server/wm/TaskFragment;->mClearedForReorderActivityToFront:Z

    .line 992
    .line 993
    :cond_34
    const v10, 0x7fffffff

    .line 994
    .line 995
    .line 996
    invoke-virtual {v6, v2, v10}, Lcom/android/server/wm/WindowContainer;->reparent(Lcom/android/server/wm/WindowContainer;I)V

    .line 997
    .line 998
    .line 999
    iget-boolean v5, v5, Lcom/android/server/wm/TaskFragment;->mIsEmbedded:Z

    .line 1000
    .line 1001
    if-eqz v5, :cond_35

    .line 1002
    .line 1003
    iget-object v5, v2, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1004
    .line 1005
    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 1006
    .line 1007
    iget-object v5, v5, Lcom/android/server/wm/WindowOrganizerController;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    .line 1008
    .line 1009
    invoke-virtual {v5, v6}, Lcom/android/server/wm/TaskFragmentOrganizerController;->onActivityReparentedToTask(Lcom/android/server/wm/ActivityRecord;)V

    .line 1010
    .line 1011
    .line 1012
    :cond_35
    :goto_17
    move v5, v8

    .line 1013
    goto :goto_18

    .line 1014
    :cond_36
    invoke-virtual {v2, v6}, Lcom/android/server/wm/WindowContainer;->getDistanceFromTop(Lcom/android/server/wm/WindowContainer;)I

    .line 1015
    .line 1016
    .line 1017
    move-result v5

    .line 1018
    const/4 v10, 0x0

    .line 1019
    const v13, 0x7fffffff

    .line 1020
    .line 1021
    .line 1022
    invoke-virtual {v2, v13, v6, v10}, Lcom/android/server/wm/Task;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 1023
    .line 1024
    .line 1025
    invoke-virtual {v2, v6}, Lcom/android/server/wm/WindowContainer;->getDistanceFromTop(Lcom/android/server/wm/WindowContainer;)I

    .line 1026
    .line 1027
    .line 1028
    move-result v10

    .line 1029
    if-eq v10, v5, :cond_37

    .line 1030
    .line 1031
    goto :goto_17

    .line 1032
    :cond_37
    const/4 v5, 0x0

    .line 1033
    :goto_18
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->updateEffectiveIntent()V

    .line 1034
    .line 1035
    .line 1036
    if-eqz v5, :cond_39

    .line 1037
    .line 1038
    iput-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mMovedToTopActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1039
    .line 1040
    iget-boolean v2, v0, Lcom/android/server/wm/ActivityStarter;->mNoAnimation:Z

    .line 1041
    .line 1042
    if-eqz v2, :cond_38

    .line 1043
    .line 1044
    iget-object v2, v6, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1045
    .line 1046
    const/4 v5, 0x0

    .line 1047
    invoke-virtual {v2, v5, v5}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(II)V

    .line 1048
    .line 1049
    .line 1050
    goto :goto_19

    .line 1051
    :cond_38
    const/4 v5, 0x0

    .line 1052
    iget-object v2, v6, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1053
    .line 1054
    invoke-virtual {v2, v12, v5}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(II)V

    .line 1055
    .line 1056
    .line 1057
    :cond_39
    :goto_19
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 1058
    .line 1059
    invoke-virtual {v6, v2}, Lcom/android/server/wm/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    .line 1060
    .line 1061
    .line 1062
    invoke-virtual {v0, v6, v3}, Lcom/android/server/wm/ActivityStarter;->deliverNewIntent(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/uri/NeededUriGrants;)V

    .line 1063
    .line 1064
    .line 1065
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 1066
    .line 1067
    .line 1068
    move-result-object v2

    .line 1069
    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->clearLastPausedActivity()V

    .line 1070
    .line 1071
    .line 1072
    goto/16 :goto_1c

    .line 1073
    .line 1074
    :cond_3a
    iput-boolean v8, v0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 1075
    .line 1076
    goto/16 :goto_1c

    .line 1077
    .line 1078
    :cond_3b
    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1079
    .line 1080
    iget-object v5, v5, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 1081
    .line 1082
    iget-object v13, v4, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 1083
    .line 1084
    invoke-virtual {v5, v13}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 1085
    .line 1086
    .line 1087
    move-result v5

    .line 1088
    if-eqz v5, :cond_43

    .line 1089
    .line 1090
    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    .line 1091
    .line 1092
    if-ne v4, v5, :cond_3c

    .line 1093
    .line 1094
    goto/16 :goto_1c

    .line 1095
    .line 1096
    :cond_3c
    iget v5, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 1097
    .line 1098
    const/high16 v10, 0x20000000

    .line 1099
    .line 1100
    and-int/2addr v5, v10

    .line 1101
    if-nez v5, :cond_3d

    .line 1102
    .line 1103
    iget v5, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    .line 1104
    .line 1105
    if-ne v8, v5, :cond_3f

    .line 1106
    .line 1107
    :cond_3d
    iget-object v5, v6, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 1108
    .line 1109
    iget-object v10, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1110
    .line 1111
    iget-object v10, v10, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 1112
    .line 1113
    invoke-virtual {v5, v10}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 1114
    .line 1115
    .line 1116
    move-result v5

    .line 1117
    if-eqz v5, :cond_3f

    .line 1118
    .line 1119
    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1120
    .line 1121
    iget-object v5, v5, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    .line 1122
    .line 1123
    if-nez v5, :cond_3f

    .line 1124
    .line 1125
    iget-boolean v5, v6, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 1126
    .line 1127
    if-nez v5, :cond_3f

    .line 1128
    .line 1129
    iget-object v5, v6, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 1130
    .line 1131
    if-eqz v5, :cond_3f

    .line 1132
    .line 1133
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->isRootOfTask()Z

    .line 1134
    .line 1135
    .line 1136
    move-result v2

    .line 1137
    if-eqz v2, :cond_3e

    .line 1138
    .line 1139
    iget-object v2, v6, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 1140
    .line 1141
    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1142
    .line 1143
    const/4 v10, 0x0

    .line 1144
    invoke-virtual {v2, v5, v10, v10}, Lcom/android/server/wm/Task;->setIntent(Lcom/android/server/wm/ActivityRecord;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 1145
    .line 1146
    .line 1147
    :cond_3e
    invoke-virtual {v0, v6, v3}, Lcom/android/server/wm/ActivityStarter;->deliverNewIntent(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/uri/NeededUriGrants;)V

    .line 1148
    .line 1149
    .line 1150
    goto/16 :goto_1c

    .line 1151
    .line 1152
    :cond_3f
    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1153
    .line 1154
    new-instance v5, Landroid/content/Intent;

    .line 1155
    .line 1156
    iget-object v6, v3, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 1157
    .line 1158
    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1159
    .line 1160
    .line 1161
    iget-object v6, v4, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 1162
    .line 1163
    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 1164
    .line 1165
    invoke-static {v6, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1166
    .line 1167
    .line 1168
    move-result v3

    .line 1169
    if-eqz v3, :cond_40

    .line 1170
    .line 1171
    iget-object v3, v4, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    .line 1172
    .line 1173
    if-eqz v3, :cond_40

    .line 1174
    .line 1175
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 1176
    .line 1177
    .line 1178
    move-result-object v3

    .line 1179
    invoke-virtual {v5, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1180
    .line 1181
    .line 1182
    invoke-virtual {v5}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    .line 1183
    .line 1184
    .line 1185
    move-result-object v3

    .line 1186
    if-nez v3, :cond_40

    .line 1187
    .line 1188
    iget-object v3, v4, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    .line 1189
    .line 1190
    invoke-virtual {v3}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    .line 1191
    .line 1192
    .line 1193
    move-result-object v3

    .line 1194
    invoke-virtual {v5, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1195
    .line 1196
    .line 1197
    :cond_40
    iget-object v3, v4, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    .line 1198
    .line 1199
    invoke-virtual {v5, v3}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    .line 1200
    .line 1201
    .line 1202
    move-result v3

    .line 1203
    if-nez v3, :cond_41

    .line 1204
    .line 1205
    iput-boolean v8, v0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 1206
    .line 1207
    goto/16 :goto_1c

    .line 1208
    .line 1209
    :cond_41
    if-nez v2, :cond_42

    .line 1210
    .line 1211
    iput-boolean v8, v0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 1212
    .line 1213
    goto/16 :goto_1c

    .line 1214
    .line 1215
    :cond_42
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    .line 1216
    .line 1217
    if-eqz v3, :cond_4b

    .line 1218
    .line 1219
    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 1220
    .line 1221
    if-eqz v3, :cond_4b

    .line 1222
    .line 1223
    invoke-virtual {v3}, Landroid/app/ActivityOptions;->isActivityEmbeddedPlaceholder()Z

    .line 1224
    .line 1225
    .line 1226
    move-result v3

    .line 1227
    if-eqz v3, :cond_4b

    .line 1228
    .line 1229
    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mInTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 1230
    .line 1231
    if-eqz v3, :cond_4b

    .line 1232
    .line 1233
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 1234
    .line 1235
    .line 1236
    move-result-object v3

    .line 1237
    if-eqz v3, :cond_4b

    .line 1238
    .line 1239
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 1240
    .line 1241
    .line 1242
    move-result-object v2

    .line 1243
    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mInTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 1244
    .line 1245
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 1246
    .line 1247
    .line 1248
    move-result v2

    .line 1249
    if-nez v2, :cond_4b

    .line 1250
    .line 1251
    iput-boolean v8, v0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 1252
    .line 1253
    goto/16 :goto_1c

    .line 1254
    .line 1255
    :cond_43
    if-nez v10, :cond_44

    .line 1256
    .line 1257
    iput-boolean v8, v0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 1258
    .line 1259
    goto/16 :goto_1c

    .line 1260
    .line 1261
    :cond_44
    iget-boolean v2, v4, Lcom/android/server/wm/Task;->rootWasReset:Z

    .line 1262
    .line 1263
    if-nez v2, :cond_4b

    .line 1264
    .line 1265
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1266
    .line 1267
    const/4 v3, 0x0

    .line 1268
    invoke-virtual {v4, v2, v3, v3}, Lcom/android/server/wm/Task;->setIntent(Lcom/android/server/wm/ActivityRecord;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 1269
    .line 1270
    .line 1271
    goto :goto_1c

    .line 1272
    :cond_45
    :goto_1a
    new-array v2, v8, [I

    .line 1273
    .line 1274
    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1275
    .line 1276
    invoke-virtual {v4, v5, v13, v2}, Lcom/android/server/wm/Task;->performClearTop(Lcom/android/server/wm/ActivityRecord;I[I)Lcom/android/server/wm/ActivityRecord;

    .line 1277
    .line 1278
    .line 1279
    move-result-object v5

    .line 1280
    if-eqz v5, :cond_48

    .line 1281
    .line 1282
    iget-boolean v6, v5, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 1283
    .line 1284
    if-nez v6, :cond_48

    .line 1285
    .line 1286
    const/4 v6, 0x0

    .line 1287
    aget v2, v2, v6

    .line 1288
    .line 1289
    if-lez v2, :cond_46

    .line 1290
    .line 1291
    iput-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mMovedToTopActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1292
    .line 1293
    :cond_46
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->isRootOfTask()Z

    .line 1294
    .line 1295
    .line 1296
    move-result v2

    .line 1297
    if-eqz v2, :cond_47

    .line 1298
    .line 1299
    iget-object v2, v5, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 1300
    .line 1301
    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1302
    .line 1303
    const/4 v10, 0x0

    .line 1304
    invoke-virtual {v2, v6, v10, v10}, Lcom/android/server/wm/Task;->setIntent(Lcom/android/server/wm/ActivityRecord;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 1305
    .line 1306
    .line 1307
    :cond_47
    invoke-virtual {v0, v5, v3}, Lcom/android/server/wm/ActivityStarter;->deliverNewIntent(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/uri/NeededUriGrants;)V

    .line 1308
    .line 1309
    .line 1310
    goto :goto_1c

    .line 1311
    :cond_48
    iput-boolean v8, v0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 1312
    .line 1313
    if-eqz v5, :cond_49

    .line 1314
    .line 1315
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 1316
    .line 1317
    .line 1318
    move-result-object v2

    .line 1319
    if-eqz v2, :cond_49

    .line 1320
    .line 1321
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 1322
    .line 1323
    .line 1324
    move-result-object v2

    .line 1325
    iget-boolean v2, v2, Lcom/android/server/wm/TaskFragment;->mIsEmbedded:Z

    .line 1326
    .line 1327
    if-eqz v2, :cond_49

    .line 1328
    .line 1329
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 1330
    .line 1331
    .line 1332
    move-result-object v2

    .line 1333
    iput-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mAddingToTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 1334
    .line 1335
    :cond_49
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    .line 1336
    .line 1337
    .line 1338
    move-result-object v2

    .line 1339
    if-nez v2, :cond_4b

    .line 1340
    .line 1341
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1342
    .line 1343
    iget v3, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 1344
    .line 1345
    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 1346
    .line 1347
    const/4 v6, 0x0

    .line 1348
    invoke-virtual {v0, v2, v3, v6, v5}, Lcom/android/server/wm/ActivityStarter;->getOrCreateRootTask(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/Task;Landroid/app/ActivityOptions;)Lcom/android/server/wm/Task;

    .line 1349
    .line 1350
    .line 1351
    move-result-object v2

    .line 1352
    iput-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 1353
    .line 1354
    iget-boolean v3, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    .line 1355
    .line 1356
    xor-int/2addr v3, v8

    .line 1357
    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1358
    .line 1359
    iget-object v5, v5, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 1360
    .line 1361
    iget v5, v5, Landroid/content/pm/ActivityInfo;->flags:I

    .line 1362
    .line 1363
    and-int/lit16 v5, v5, 0x400

    .line 1364
    .line 1365
    if-eqz v5, :cond_4a

    .line 1366
    .line 1367
    move v5, v8

    .line 1368
    goto :goto_1b

    .line 1369
    :cond_4a
    const/4 v5, 0x0

    .line 1370
    :goto_1b
    invoke-virtual {v2, v4, v3, v5}, Lcom/android/server/wm/Task;->addChild(Lcom/android/server/wm/WindowContainer;ZZ)V

    .line 1371
    .line 1372
    .line 1373
    :cond_4b
    :goto_1c
    iget-boolean v2, v0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 1374
    .line 1375
    if-eqz v2, :cond_53

    .line 1376
    .line 1377
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 1378
    .line 1379
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mBalController:Lcom/android/server/wm/BackgroundActivityStartController;

    .line 1380
    .line 1381
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 1382
    .line 1383
    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1384
    .line 1385
    iget v5, v0, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    .line 1386
    .line 1387
    iget v6, v0, Lcom/android/server/wm/ActivityStarter;->mRealCallingUid:I

    .line 1388
    .line 1389
    iget v7, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 1390
    .line 1391
    iget v9, v0, Lcom/android/server/wm/ActivityStarter;->mBalCode:I

    .line 1392
    .line 1393
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1394
    .line 1395
    .line 1396
    const/high16 v0, 0x10000000

    .line 1397
    .line 1398
    and-int v10, v7, v0

    .line 1399
    .line 1400
    if-ne v10, v0, :cond_52

    .line 1401
    .line 1402
    if-ne v9, v11, :cond_4c

    .line 1403
    .line 1404
    goto/16 :goto_1e

    .line 1405
    .line 1406
    :cond_4c
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    .line 1407
    .line 1408
    .line 1409
    move-result v0

    .line 1410
    new-instance v10, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda2;

    .line 1411
    .line 1412
    invoke-direct {v10, v0, v5, v6}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda2;-><init>(III)V

    .line 1413
    .line 1414
    .line 1415
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    .line 1416
    .line 1417
    .line 1418
    move-result-object v11

    .line 1419
    if-eqz v11, :cond_52

    .line 1420
    .line 1421
    invoke-virtual {v10, v11}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda2;->test(Ljava/lang/Object;)Z

    .line 1422
    .line 1423
    .line 1424
    move-result v0

    .line 1425
    if-eqz v0, :cond_4d

    .line 1426
    .line 1427
    goto/16 :goto_1e

    .line 1428
    .line 1429
    :cond_4d
    new-array v0, v8, [I

    .line 1430
    .line 1431
    invoke-static {v5}, Lcom/android/server/wm/ActivitySecurityModelFeatureFlags;->shouldRestrictActivitySwitch(I)Z

    .line 1432
    .line 1433
    .line 1434
    move-result v8

    .line 1435
    new-instance v12, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;

    .line 1436
    .line 1437
    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    .line 1438
    .line 1439
    .line 1440
    invoke-virtual {v1, v11, v5, v12}, Lcom/android/server/wm/BackgroundActivityStartController;->checkCrossUidActivitySwitchFromBelow(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;)Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;

    .line 1441
    .line 1442
    .line 1443
    move-result-object v12

    .line 1444
    const-string v13, "ActivityTaskManager"

    .line 1445
    .line 1446
    if-eqz v8, :cond_4f

    .line 1447
    .line 1448
    iget-boolean v14, v12, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->mTopActivityOptedIn:Z

    .line 1449
    .line 1450
    if-eqz v14, :cond_4f

    .line 1451
    .line 1452
    invoke-virtual {v4, v10}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    .line 1453
    .line 1454
    .line 1455
    move-result-object v10

    .line 1456
    if-nez v10, :cond_4e

    .line 1457
    .line 1458
    move-object v10, v3

    .line 1459
    :cond_4e
    invoke-virtual {v4, v10, v7, v0}, Lcom/android/server/wm/Task;->performClearTop(Lcom/android/server/wm/ActivityRecord;I[I)Lcom/android/server/wm/ActivityRecord;

    .line 1460
    .line 1461
    .line 1462
    const/4 v7, 0x0

    .line 1463
    aget v10, v0, v7

    .line 1464
    .line 1465
    if-lez v10, :cond_4f

    .line 1466
    .line 1467
    new-instance v10, Ljava/lang/StringBuilder;

    .line 1468
    .line 1469
    const-string v14, "Cleared top n: "

    .line 1470
    .line 1471
    invoke-direct {v10, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1472
    .line 1473
    .line 1474
    aget v14, v0, v7

    .line 1475
    .line 1476
    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1477
    .line 1478
    .line 1479
    const-string v7, " activities from task t: "

    .line 1480
    .line 1481
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1482
    .line 1483
    .line 1484
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1485
    .line 1486
    .line 1487
    const-string v7, " not matching top uid: "

    .line 1488
    .line 1489
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1490
    .line 1491
    .line 1492
    invoke-static {v10, v5, v13}, Lcom/android/server/HeapdumpWatcher$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 1493
    .line 1494
    .line 1495
    :cond_4f
    invoke-static {v5}, Lcom/android/server/wm/ActivitySecurityModelFeatureFlags;->shouldShowToast(I)Z

    .line 1496
    .line 1497
    .line 1498
    move-result v5

    .line 1499
    if-eqz v5, :cond_52

    .line 1500
    .line 1501
    if-eqz v8, :cond_50

    .line 1502
    .line 1503
    const/4 v5, 0x0

    .line 1504
    aget v0, v0, v5

    .line 1505
    .line 1506
    if-lez v0, :cond_52

    .line 1507
    .line 1508
    :cond_50
    if-eqz v8, :cond_51

    .line 1509
    .line 1510
    const-string v0, "Top activities cleared by "

    .line 1511
    .line 1512
    goto :goto_1d

    .line 1513
    :cond_51
    const-string v0, "Top activities would be cleared by "

    .line 1514
    .line 1515
    :goto_1d
    const-string v5, "go/android-asm"

    .line 1516
    .line 1517
    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1518
    .line 1519
    .line 1520
    move-result-object v0

    .line 1521
    invoke-virtual {v1, v0}, Lcom/android/server/wm/BackgroundActivityStartController;->showToast(Ljava/lang/String;)V

    .line 1522
    .line 1523
    .line 1524
    iget-object v12, v12, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->mActivityOptedIn:Lcom/android/server/wm/ActivityRecord;

    .line 1525
    .line 1526
    const-string v5, "Clear Top"

    .line 1527
    .line 1528
    const/4 v10, 0x1

    .line 1529
    const/4 v14, 0x0

    .line 1530
    const/4 v15, 0x0

    .line 1531
    move-object v0, v1

    .line 1532
    move-object v1, v5

    .line 1533
    move-object/from16 v4, p1

    .line 1534
    .line 1535
    move-object v5, v11

    .line 1536
    move v7, v9

    .line 1537
    move v9, v10

    .line 1538
    move v10, v14

    .line 1539
    move v11, v15

    .line 1540
    invoke-virtual/range {v0 .. v12}, Lcom/android/server/wm/BackgroundActivityStartController;->getDebugInfoForActivitySecurity(Ljava/lang/String;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;IIZZZZLcom/android/server/wm/ActivityRecord;)Ljava/lang/String;

    .line 1541
    .line 1542
    .line 1543
    move-result-object v0

    .line 1544
    invoke-static {v13, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    .line 1546
    .line 1547
    :cond_52
    :goto_1e
    const/4 v0, 0x0

    .line 1548
    return v0

    .line 1549
    :cond_53
    iget-boolean v2, v1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 1550
    .line 1551
    if-eqz v2, :cond_54

    .line 1552
    .line 1553
    invoke-virtual {v4, v8, v8}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 1554
    .line 1555
    .line 1556
    move-result-object v1

    .line 1557
    :cond_54
    iget-boolean v2, v0, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    .line 1558
    .line 1559
    if-eqz v2, :cond_55

    .line 1560
    .line 1561
    invoke-virtual {v1, v8}, Lcom/android/server/wm/ActivityRecord;->showStartingWindow(Z)V

    .line 1562
    .line 1563
    .line 1564
    goto :goto_1f

    .line 1565
    :cond_55
    iget-boolean v2, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    .line 1566
    .line 1567
    if-eqz v2, :cond_56

    .line 1568
    .line 1569
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 1570
    .line 1571
    const/4 v3, 0x0

    .line 1572
    invoke-virtual {v2, v7, v3}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    .line 1573
    .line 1574
    .line 1575
    :cond_56
    :goto_1f
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->resumeTargetRootTaskIfNeeded()V

    .line 1576
    .line 1577
    .line 1578
    iget-object v2, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mActiveDreamComponent:Landroid/content/ComponentName;

    .line 1579
    .line 1580
    if-eqz v2, :cond_57

    .line 1581
    .line 1582
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->canTurnScreenOn()Z

    .line 1583
    .line 1584
    .line 1585
    move-result v2

    .line 1586
    if-eqz v2, :cond_57

    .line 1587
    .line 1588
    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 1589
    .line 1590
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1591
    .line 1592
    const-string/jumbo v4, "recycleTask#turnScreenOnFlag::"

    .line 1593
    .line 1594
    .line 1595
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1596
    .line 1597
    .line 1598
    iget-object v4, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 1599
    .line 1600
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1601
    .line 1602
    .line 1603
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1604
    .line 1605
    .line 1606
    move-result-object v3

    .line 1607
    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityTaskSupervisor;->wakeUp(Ljava/lang/String;)V

    .line 1608
    .line 1609
    .line 1610
    :cond_57
    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 1611
    .line 1612
    iget-boolean v0, v0, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    .line 1613
    .line 1614
    if-eqz v0, :cond_58

    .line 1615
    .line 1616
    move v14, v11

    .line 1617
    goto :goto_20

    .line 1618
    :cond_58
    move v14, v12

    .line 1619
    :goto_20
    return v14
.end method

.method public final reset(Z)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 3
    .line 4
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 5
    .line 6
    const/4 v1, -0x1

    .line 7
    iput v1, p0, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    .line 8
    .line 9
    iput v1, p0, Lcom/android/server/wm/ActivityStarter;->mRealCallingUid:I

    .line 10
    .line 11
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    iput v2, p0, Lcom/android/server/wm/ActivityStarter;->mBalCode:I

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    .line 18
    .line 19
    iput v2, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 20
    .line 21
    iput v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    .line 22
    .line 23
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->reset()V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mNotTop:Lcom/android/server/wm/ActivityRecord;

    .line 29
    .line 30
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    .line 31
    .line 32
    iput v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    .line 33
    .line 34
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 35
    .line 36
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 37
    .line 38
    iput v2, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredWindowingMode:I

    .line 39
    .line 40
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    .line 41
    .line 42
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 43
    .line 44
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 45
    .line 46
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 47
    .line 48
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRootTask:Lcom/android/server/wm/Task;

    .line 49
    .line 50
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 51
    .line 52
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetTask:Lcom/android/server/wm/Task;

    .line 53
    .line 54
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mIsTaskCleared:Z

    .line 55
    .line 56
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    .line 57
    .line 58
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mNoAnimation:Z

    .line 59
    .line 60
    iput v2, p0, Lcom/android/server/wm/ActivityStarter;->mCanMoveToFrontCode:I

    .line 61
    .line 62
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mFrozeTaskList:Z

    .line 63
    .line 64
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mTransientLaunch:Z

    .line 65
    .line 66
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mPriorAboveTask:Lcom/android/server/wm/Task;

    .line 67
    .line 68
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mDisplayLockAndOccluded:Z

    .line 69
    .line 70
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 71
    .line 72
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 73
    .line 74
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mIntentDelivered:Z

    .line 75
    .line 76
    if-eqz p1, :cond_0

    .line 77
    .line 78
    iget-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 79
    .line 80
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStarter$Request;->reset()V

    .line 81
    .line 82
    .line 83
    :cond_0
    iget-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mSavedFrontTaskIds:Landroid/util/SparseBooleanArray;

    .line 84
    .line 85
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 86
    .line 87
    .line 88
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_RESUMED_AFFORDANCE_SHELL_TRANSITION:Z

    .line 89
    .line 90
    if-eqz p1, :cond_1

    .line 91
    .line 92
    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 93
    .line 94
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    .line 95
    .line 96
    invoke-virtual {p0, v0}, Lcom/android/server/wm/MultiTaskingController;->setAffordanceTargetTask(Lcom/android/server/wm/Task;)V

    .line 97
    .line 98
    .line 99
    :cond_1
    return-void
.end method

.method public final resolveReusableTask()Lcom/android/server/wm/Task;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eq v1, v2, :cond_1

    .line 16
    .line 17
    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-virtual {v3, v0}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(I)Lcom/android/server/wm/Task;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    return-object v0

    .line 36
    :cond_0
    return-object v4

    .line 37
    :cond_1
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 38
    .line 39
    const/high16 v5, 0x10000000

    .line 40
    .line 41
    and-int/2addr v5, v1

    .line 42
    const/4 v6, 0x1

    .line 43
    const/4 v7, 0x2

    .line 44
    const/4 v8, 0x3

    .line 45
    const/4 v9, 0x0

    .line 46
    if-eqz v5, :cond_2

    .line 47
    .line 48
    const/high16 v5, 0x8000000

    .line 49
    .line 50
    and-int/2addr v1, v5

    .line 51
    if-eqz v1, :cond_5

    .line 52
    .line 53
    :cond_2
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    .line 54
    .line 55
    if-eq v8, v1, :cond_5

    .line 56
    .line 57
    if-ne v7, v1, :cond_3

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 61
    .line 62
    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 63
    .line 64
    invoke-virtual {v1}, Landroid/content/Intent;->getLaunchTaskIdForAliasManagedTarget()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-eq v1, v2, :cond_4

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_4
    move v1, v9

    .line 72
    goto :goto_1

    .line 73
    :cond_5
    :goto_0
    move v1, v6

    .line 74
    :goto_1
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    .line 75
    .line 76
    if-nez v2, :cond_6

    .line 77
    .line 78
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 79
    .line 80
    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    .line 81
    .line 82
    if-nez v2, :cond_6

    .line 83
    .line 84
    move v2, v6

    .line 85
    goto :goto_2

    .line 86
    :cond_6
    move v2, v9

    .line 87
    :goto_2
    and-int/2addr v1, v2

    .line 88
    if-eqz v1, :cond_7

    .line 89
    .line 90
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    .line 91
    .line 92
    if-ne v8, v1, :cond_8

    .line 93
    .line 94
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 95
    .line 96
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 97
    .line 98
    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 99
    .line 100
    invoke-virtual {v3, v1, v2, v9}, Lcom/android/server/wm/RootWindowContainer;->findActivity(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Z)Lcom/android/server/wm/ActivityRecord;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    if-eqz v1, :cond_12

    .line 105
    .line 106
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 107
    .line 108
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    if-eqz v2, :cond_12

    .line 113
    .line 114
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    if-nez v2, :cond_12

    .line 119
    .line 120
    const-string v2, "Removes redundant singleInstance"

    .line 121
    .line 122
    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityRecord;->destroyIfPossible(Ljava/lang/String;)Z

    .line 123
    .line 124
    .line 125
    :cond_7
    move-object v1, v4

    .line 126
    goto/16 :goto_5

    .line 127
    .line 128
    :cond_8
    iget v2, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 129
    .line 130
    and-int/lit16 v2, v2, 0x1000

    .line 131
    .line 132
    if-eqz v2, :cond_a

    .line 133
    .line 134
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 135
    .line 136
    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 137
    .line 138
    iget-object v5, v5, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 139
    .line 140
    if-eq v7, v1, :cond_9

    .line 141
    .line 142
    move v1, v6

    .line 143
    goto :goto_3

    .line 144
    :cond_9
    move v1, v9

    .line 145
    :goto_3
    invoke-virtual {v3, v2, v5, v1}, Lcom/android/server/wm/RootWindowContainer;->findActivity(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Z)Lcom/android/server/wm/ActivityRecord;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    goto/16 :goto_5

    .line 150
    .line 151
    :cond_a
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 152
    .line 153
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 154
    .line 155
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    .line 159
    .line 160
    .line 161
    move-result v5

    .line 162
    iget-object v7, v1, Lcom/android/server/wm/ActivityRecord;->taskAffinity:Ljava/lang/String;

    .line 163
    .line 164
    iget-object v8, v1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 165
    .line 166
    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 167
    .line 168
    sget-object v10, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_TASKS_enabled:[Z

    .line 169
    .line 170
    aget-boolean v11, v10, v9

    .line 171
    .line 172
    if-eqz v11, :cond_b

    .line 173
    .line 174
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v12

    .line 178
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v13

    .line 182
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v14

    .line 186
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v15

    .line 190
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v16

    .line 194
    sget-object v11, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 195
    .line 196
    sget-object v17, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 197
    .line 198
    filled-new-array/range {v12 .. v17}, [Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v22

    .line 202
    const-wide v18, 0x36e3a4f36cb337fdL    # 2.7527582584529757E-44

    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    const/16 v20, 0xc00

    .line 208
    .line 209
    const/16 v21, 0x0

    .line 210
    .line 211
    move-object/from16 v17, v11

    .line 212
    .line 213
    invoke-static/range {v17 .. v22}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 214
    .line 215
    .line 216
    :cond_b
    iget-object v11, v3, Lcom/android/server/wm/RootWindowContainer;->mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    .line 217
    .line 218
    iput v5, v11, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mActivityType:I

    .line 219
    .line 220
    iput-object v7, v11, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mTaskAffinity:Ljava/lang/String;

    .line 221
    .line 222
    iput-object v8, v11, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mIntent:Landroid/content/Intent;

    .line 223
    .line 224
    iput-object v1, v11, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mInfo:Landroid/content/pm/ActivityInfo;

    .line 225
    .line 226
    iput-object v4, v11, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mIdealRecord:Lcom/android/server/wm/ActivityRecord;

    .line 227
    .line 228
    iput-object v4, v11, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mCandidateRecord:Lcom/android/server/wm/ActivityRecord;

    .line 229
    .line 230
    iput-boolean v6, v11, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mIncludeLaunchedFromBubble:Z

    .line 231
    .line 232
    if-eqz v2, :cond_d

    .line 233
    .line 234
    invoke-virtual {v11, v2}, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->process(Lcom/android/server/wm/WindowContainer;)V

    .line 235
    .line 236
    .line 237
    iget-object v5, v3, Lcom/android/server/wm/RootWindowContainer;->mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    .line 238
    .line 239
    iget-object v7, v5, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mIdealRecord:Lcom/android/server/wm/ActivityRecord;

    .line 240
    .line 241
    if-eqz v7, :cond_c

    .line 242
    .line 243
    move-object v1, v7

    .line 244
    goto/16 :goto_5

    .line 245
    .line 246
    :cond_c
    iget-object v5, v5, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mCandidateRecord:Lcom/android/server/wm/ActivityRecord;

    .line 247
    .line 248
    if-eqz v5, :cond_d

    .line 249
    .line 250
    goto :goto_4

    .line 251
    :cond_d
    move-object v5, v4

    .line 252
    :goto_4
    new-instance v7, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda38;

    .line 253
    .line 254
    invoke-direct {v7, v3, v2}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda38;-><init>(Lcom/android/server/wm/RootWindowContainer;Lcom/android/server/wm/TaskDisplayArea;)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v3, v7}, Lcom/android/server/wm/WindowContainer;->getItemFromTaskDisplayAreas(Ljava/util/function/Function;)Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v2

    .line 261
    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 262
    .line 263
    if-eqz v2, :cond_e

    .line 264
    .line 265
    move-object v1, v2

    .line 266
    goto :goto_5

    .line 267
    :cond_e
    sget-object v11, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 268
    .line 269
    invoke-virtual {v11}, Lcom/android/internal/protolog/ProtoLogGroup;->isEnabled()Z

    .line 270
    .line 271
    .line 272
    move-result v2

    .line 273
    if-eqz v2, :cond_f

    .line 274
    .line 275
    if-nez v5, :cond_f

    .line 276
    .line 277
    aget-boolean v2, v10, v9

    .line 278
    .line 279
    if-eqz v2, :cond_f

    .line 280
    .line 281
    const-wide v12, 0x27428b51d2773e63L

    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    const/4 v14, 0x0

    .line 287
    const/4 v15, 0x0

    .line 288
    const/16 v16, 0x0

    .line 289
    .line 290
    invoke-static/range {v11 .. v16}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 291
    .line 292
    .line 293
    :cond_f
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->SYSPERF_ACTIVE_APP_ADCP_ENABLE:Z

    .line 294
    .line 295
    if-eqz v2, :cond_11

    .line 296
    .line 297
    if-nez v5, :cond_11

    .line 298
    .line 299
    iget-object v2, v3, Lcom/android/server/wm/RootWindowContainer;->mSecIpmManager:Lcom/samsung/android/ipm/SecIpmManager;

    .line 300
    .line 301
    if-nez v2, :cond_10

    .line 302
    .line 303
    iget-object v2, v3, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 304
    .line 305
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 306
    .line 307
    const-string v7, "PkgPredictorService"

    .line 308
    .line 309
    invoke-virtual {v2, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    move-result-object v2

    .line 313
    check-cast v2, Lcom/samsung/android/ipm/SecIpmManager;

    .line 314
    .line 315
    iput-object v2, v3, Lcom/android/server/wm/RootWindowContainer;->mSecIpmManager:Lcom/samsung/android/ipm/SecIpmManager;

    .line 316
    .line 317
    :cond_10
    iget-object v2, v3, Lcom/android/server/wm/RootWindowContainer;->mSecIpmManager:Lcom/samsung/android/ipm/SecIpmManager;

    .line 318
    .line 319
    if-eqz v2, :cond_11

    .line 320
    .line 321
    new-instance v2, Ljava/lang/StringBuilder;

    .line 322
    .line 323
    const-string/jumbo v7, "mSecIpmManager Preload "

    .line 324
    .line 325
    .line 326
    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    iget-object v7, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 330
    .line 331
    const-string v8, " dex files"

    .line 332
    .line 333
    const-string v10, "[secipm]"

    .line 334
    .line 335
    invoke-static {v2, v7, v8, v10}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    iget-object v2, v3, Lcom/android/server/wm/RootWindowContainer;->mSecIpmManager:Lcom/samsung/android/ipm/SecIpmManager;

    .line 339
    .line 340
    iget-object v3, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 341
    .line 342
    iget v7, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 343
    .line 344
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 345
    .line 346
    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->getCodePath()Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v3

    .line 350
    invoke-virtual {v2, v7, v1, v3}, Lcom/samsung/android/ipm/SecIpmManager;->dexFilePreload(ILjava/lang/String;Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    :cond_11
    move-object v1, v5

    .line 354
    :cond_12
    :goto_5
    if-eqz v1, :cond_13

    .line 355
    .line 356
    iget v2, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    .line 357
    .line 358
    const/4 v3, 0x4

    .line 359
    if-ne v2, v3, :cond_13

    .line 360
    .line 361
    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 362
    .line 363
    invoke-virtual {v2, v6, v9}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 364
    .line 365
    .line 366
    move-result-object v2

    .line 367
    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 368
    .line 369
    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 370
    .line 371
    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 372
    .line 373
    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 374
    .line 375
    .line 376
    move-result v2

    .line 377
    if-nez v2, :cond_13

    .line 378
    .line 379
    move-object v1, v4

    .line 380
    :cond_13
    if-eqz v1, :cond_15

    .line 381
    .line 382
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 383
    .line 384
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    .line 385
    .line 386
    .line 387
    move-result v2

    .line 388
    if-nez v2, :cond_14

    .line 389
    .line 390
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    .line 391
    .line 392
    .line 393
    move-result v2

    .line 394
    if-eqz v2, :cond_15

    .line 395
    .line 396
    :cond_14
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 397
    .line 398
    .line 399
    move-result-object v2

    .line 400
    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 401
    .line 402
    if-eq v2, v3, :cond_15

    .line 403
    .line 404
    move-object v1, v4

    .line 405
    :cond_15
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    .line 406
    .line 407
    if-eqz v2, :cond_16

    .line 408
    .line 409
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mInTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 410
    .line 411
    if-eqz v2, :cond_16

    .line 412
    .line 413
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 414
    .line 415
    if-eqz v2, :cond_16

    .line 416
    .line 417
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->isActivityEmbeddedPlaceholder()Z

    .line 418
    .line 419
    .line 420
    move-result v2

    .line 421
    if-eqz v2, :cond_16

    .line 422
    .line 423
    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter;->mInTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 424
    .line 425
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    .line 426
    .line 427
    .line 428
    move-result-object v0

    .line 429
    return-object v0

    .line 430
    :cond_16
    if-eqz v1, :cond_17

    .line 431
    .line 432
    iget-object v4, v1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 433
    .line 434
    :cond_17
    return-object v4
.end method

.method public final resolveToHeavyWeightSwitcherIfNeeded()I
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 11
    .line 12
    iget-boolean v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mHasHeavyWeightFeature:Z

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    iget-object v3, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 17
    .line 18
    iget v4, v3, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 19
    .line 20
    and-int/lit8 v4, v4, 0x2

    .line 21
    .line 22
    if-nez v4, :cond_1

    .line 23
    .line 24
    :cond_0
    move v0, v2

    .line 25
    goto/16 :goto_2

    .line 26
    .line 27
    :cond_1
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 28
    .line 29
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-nez v1, :cond_2

    .line 36
    .line 37
    return v2

    .line 38
    :cond_2
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 39
    .line 40
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    .line 41
    .line 42
    if-eqz v1, :cond_3

    .line 43
    .line 44
    iget-object v3, v1, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    .line 45
    .line 46
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 47
    .line 48
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 49
    .line 50
    iget-object v4, v4, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 51
    .line 52
    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 53
    .line 54
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 55
    .line 56
    if-ne v3, v5, :cond_4

    .line 57
    .line 58
    iget-object v3, v1, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    .line 59
    .line 60
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-eqz v3, :cond_4

    .line 67
    .line 68
    :cond_3
    move v0, v2

    .line 69
    goto/16 :goto_2

    .line 70
    .line 71
    :cond_4
    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 72
    .line 73
    iget v4, v3, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    .line 74
    .line 75
    iget-object v3, v3, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    .line 76
    .line 77
    if-eqz v3, :cond_5

    .line 78
    .line 79
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 80
    .line 81
    invoke-virtual {v4, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Landroid/app/IApplicationThread;)Lcom/android/server/wm/WindowProcessController;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    if-eqz v3, :cond_6

    .line 86
    .line 87
    iget-object v3, v3, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    .line 88
    .line 89
    iget v4, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 90
    .line 91
    :cond_5
    move v5, v4

    .line 92
    goto :goto_0

    .line 93
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    const-string v2, "Unable to find app for caller "

    .line 96
    .line 97
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 101
    .line 102
    iget-object v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    .line 103
    .line 104
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string v2, " (pid="

    .line 108
    .line 109
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 113
    .line 114
    iget v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->callingPid:I

    .line 115
    .line 116
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    const-string v2, ") when starting: "

    .line 120
    .line 121
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 125
    .line 126
    iget-object v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 127
    .line 128
    invoke-virtual {v2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    const-string v2, "ActivityTaskManager"

    .line 140
    .line 141
    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    .line 143
    .line 144
    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 145
    .line 146
    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->activityOptions:Lcom/android/server/wm/SafeActivityOptions;

    .line 147
    .line 148
    invoke-static {v0}, Lcom/android/server/wm/SafeActivityOptions;->abort(Lcom/android/server/wm/SafeActivityOptions;)V

    .line 149
    .line 150
    .line 151
    const/16 v0, -0x5e

    .line 152
    .line 153
    return v0

    .line 154
    :goto_0
    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 155
    .line 156
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 157
    .line 158
    iget v6, v4, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    .line 159
    .line 160
    const/4 v15, 0x1

    .line 161
    new-array v14, v15, [Landroid/content/Intent;

    .line 162
    .line 163
    iget-object v7, v4, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 164
    .line 165
    aput-object v7, v14, v2

    .line 166
    .line 167
    iget-object v4, v4, Lcom/android/server/wm/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    .line 168
    .line 169
    filled-new-array {v4}, [Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v16

    .line 173
    const/4 v13, 0x0

    .line 174
    const/4 v7, 0x0

    .line 175
    const/4 v4, 0x2

    .line 176
    const-string v11, "android"

    .line 177
    .line 178
    const/4 v12, 0x0

    .line 179
    const/4 v10, 0x0

    .line 180
    const/high16 v8, 0x50000000

    .line 181
    .line 182
    const/4 v9, 0x0

    .line 183
    move v2, v15

    .line 184
    move-object/from16 v15, v16

    .line 185
    .line 186
    invoke-virtual/range {v3 .. v15}, Lcom/android/server/wm/ActivityTaskManagerService;->getIntentSenderLocked(IIIIILandroid/os/Bundle;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;)Lcom/android/server/am/PendingIntentRecord;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    new-instance v4, Landroid/content/Intent;

    .line 191
    .line 192
    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 193
    .line 194
    .line 195
    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 196
    .line 197
    iget v5, v5, Lcom/android/server/wm/ActivityStarter$Request;->requestCode:I

    .line 198
    .line 199
    if-ltz v5, :cond_7

    .line 200
    .line 201
    const-string v5, "has_result"

    .line 202
    .line 203
    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 204
    .line 205
    .line 206
    :cond_7
    new-instance v5, Landroid/content/IntentSender;

    .line 207
    .line 208
    invoke-direct {v5, v3}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    .line 209
    .line 210
    .line 211
    const-string v3, "intent"

    .line 212
    .line 213
    invoke-virtual {v4, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 214
    .line 215
    .line 216
    iget-object v3, v1, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    .line 217
    .line 218
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 219
    .line 220
    .line 221
    move-result v3

    .line 222
    if-eqz v3, :cond_8

    .line 223
    .line 224
    goto :goto_1

    .line 225
    :cond_8
    iget-object v1, v1, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    .line 226
    .line 227
    const/4 v3, 0x0

    .line 228
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 233
    .line 234
    iget-object v3, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 235
    .line 236
    const-string v5, "cur_app"

    .line 237
    .line 238
    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    .line 240
    .line 241
    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 242
    .line 243
    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 244
    .line 245
    const-string v3, "cur_task"

    .line 246
    .line 247
    invoke-virtual {v4, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 248
    .line 249
    .line 250
    :goto_1
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 251
    .line 252
    iget-object v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 253
    .line 254
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 255
    .line 256
    const-string/jumbo v3, "new_app"

    .line 257
    .line 258
    .line 259
    invoke-virtual {v4, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    .line 261
    .line 262
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 263
    .line 264
    iget-object v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 265
    .line 266
    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    .line 267
    .line 268
    .line 269
    move-result v1

    .line 270
    invoke-virtual {v4, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 271
    .line 272
    .line 273
    const-class v1, Lcom/android/internal/app/HeavyWeightSwitcherActivity;

    .line 274
    .line 275
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v1

    .line 279
    const-string v3, "android"

    .line 280
    .line 281
    invoke-virtual {v4, v3, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    .line 283
    .line 284
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 285
    .line 286
    iput-object v4, v1, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 287
    .line 288
    const/4 v3, 0x0

    .line 289
    iput-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    .line 290
    .line 291
    iput-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    .line 292
    .line 293
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 294
    .line 295
    .line 296
    move-result v4

    .line 297
    iput v4, v1, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    .line 298
    .line 299
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 300
    .line 301
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 302
    .line 303
    .line 304
    move-result v4

    .line 305
    iput v4, v1, Lcom/android/server/wm/ActivityStarter$Request;->callingPid:I

    .line 306
    .line 307
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 308
    .line 309
    iput-boolean v2, v1, Lcom/android/server/wm/ActivityStarter$Request;->componentSpecified:Z

    .line 310
    .line 311
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 312
    .line 313
    iget-object v5, v1, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 314
    .line 315
    iget v7, v1, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    .line 316
    .line 317
    iget v2, v1, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    .line 318
    .line 319
    iget v6, v1, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    .line 320
    .line 321
    iget v8, v1, Lcom/android/server/wm/ActivityStarter$Request;->filterCallingUid:I

    .line 322
    .line 323
    invoke-static {v2, v6, v8}, Lcom/android/server/wm/ActivityStarter;->computeResolveFilterUid(III)I

    .line 324
    .line 325
    .line 326
    move-result v9

    .line 327
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 328
    .line 329
    iget v10, v2, Lcom/android/server/wm/ActivityStarter$Request;->realCallingPid:I

    .line 330
    .line 331
    const/4 v6, 0x0

    .line 332
    const/4 v8, 0x0

    .line 333
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;IIII)Landroid/content/pm/ResolveInfo;

    .line 334
    .line 335
    .line 336
    move-result-object v2

    .line 337
    iput-object v2, v1, Lcom/android/server/wm/ActivityStarter$Request;->resolveInfo:Landroid/content/pm/ResolveInfo;

    .line 338
    .line 339
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 340
    .line 341
    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter$Request;->resolveInfo:Landroid/content/pm/ResolveInfo;

    .line 342
    .line 343
    if-eqz v2, :cond_9

    .line 344
    .line 345
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 346
    .line 347
    :cond_9
    iput-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 348
    .line 349
    if-eqz v3, :cond_a

    .line 350
    .line 351
    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 352
    .line 353
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 354
    .line 355
    iget v2, v1, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    .line 356
    .line 357
    invoke-virtual {v0, v3, v2}, Landroid/app/ActivityManagerInternal;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;

    .line 358
    .line 359
    .line 360
    move-result-object v0

    .line 361
    iput-object v0, v1, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 362
    .line 363
    :cond_a
    const/4 v0, 0x0

    .line 364
    :goto_2
    return v0
.end method

.method public final resumeTargetRootTaskIfNeeded()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 4
    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-virtual {v0, v2}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iput-boolean v2, v0, Lcom/android/server/wm/ActivityRecord;->mCurrentLaunchCanTurnScreenOn:Z

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isFocusable()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 27
    .line 28
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 29
    .line 30
    iget-boolean v3, p0, Lcom/android/server/wm/ActivityStarter;->mTransientLaunch:Z

    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    invoke-virtual {v1, v0, v4, v2, v3}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)Z

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible()V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 42
    .line 43
    invoke-static {v0}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 44
    .line 45
    .line 46
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 47
    .line 48
    iget v0, v0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 49
    .line 50
    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 51
    .line 52
    iget v2, v1, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    .line 53
    .line 54
    if-eq v0, v2, :cond_4

    .line 55
    .line 56
    if-nez p0, :cond_3

    .line 57
    .line 58
    iget-object p0, v1, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    const/4 v2, 0x0

    .line 65
    invoke-virtual {p0, v2}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateRootHomeTask(Z)Lcom/android/server/wm/Task;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    :cond_3
    iget-object v1, v1, Lcom/android/server/wm/RootWindowContainer;->mUserRootTaskInFront:Landroid/util/SparseIntArray;

    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    iget p0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    .line 76
    .line 77
    invoke-virtual {v1, v0, p0}, Landroid/util/SparseIntArray;->put(II)V

    .line 78
    .line 79
    .line 80
    :cond_4
    return-void
.end method

.method public final setNewTask(Lcom/android/server/wm/Task;)V
    .locals 11

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStarter;->avoidMoveToFront()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    move v7, v1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    move v7, v0

    .line 16
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 17
    .line 18
    iget-object v8, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 19
    .line 20
    iget-object v3, v8, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 21
    .line 22
    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 23
    .line 24
    iget-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 25
    .line 26
    iget-object v6, p0, Lcom/android/server/wm/ActivityStarter;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 27
    .line 28
    iget-object v9, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 29
    .line 30
    iget-object v10, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 31
    .line 32
    invoke-virtual/range {v2 .. v10}, Lcom/android/server/wm/Task;->reuseOrCreateTask(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ZLcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Lcom/android/server/wm/Task;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget-object v2, v0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 37
    .line 38
    iget-object v2, v2, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 39
    .line 40
    if-nez v2, :cond_1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    invoke-virtual {v2, v0}, Lcom/android/server/wm/Transition;->collectExistenceChange(Lcom/android/server/wm/WindowContainer;)V

    .line 44
    .line 45
    .line 46
    :goto_1
    const-string/jumbo v2, "setTaskFromReuseOrCreateNewTask"

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v2, v0}, Lcom/android/server/wm/ActivityStarter;->addOrReparentStartingActivity(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    .line 50
    .line 51
    .line 52
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_TASKS_enabled:[Z

    .line 53
    .line 54
    aget-boolean v0, v0, v1

    .line 55
    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 59
    .line 60
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 65
    .line 66
    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 67
    .line 68
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 73
    .line 74
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v7

    .line 78
    const-wide v3, -0x1e660f29cd5dc2c7L    # -1.458816009883848E162

    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    const/4 v5, 0x0

    .line 84
    const/4 v6, 0x0

    .line 85
    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    :cond_2
    if-eqz p1, :cond_3

    .line 89
    .line 90
    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 91
    .line 92
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->setTaskToAffiliateWith(Lcom/android/server/wm/Task;)V

    .line 93
    .line 94
    .line 95
    :cond_3
    return-void
.end method

.method public startActivityInner(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ILandroid/app/ActivityOptions;Lcom/android/server/wm/Task;Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;Lcom/android/server/uri/NeededUriGrants;I)I
    .locals 33

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v11, p1

    .line 4
    .line 5
    move-object/from16 v12, p2

    .line 6
    .line 7
    move/from16 v13, p5

    .line 8
    .line 9
    move-object/from16 v14, p6

    .line 10
    .line 11
    move-object/from16 v15, p7

    .line 12
    .line 13
    move-object/from16 v10, p9

    .line 14
    .line 15
    move-object/from16 v9, p10

    .line 16
    .line 17
    move/from16 v8, p11

    .line 18
    .line 19
    iget-boolean v1, v10, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->mBasedOnRealCaller:Z

    .line 20
    .line 21
    iget v2, v10, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->mCode:I

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    const/4 v2, 0x5

    .line 28
    :cond_0
    const/4 v6, 0x0

    .line 29
    invoke-virtual {v0, v6}, Lcom/android/server/wm/ActivityStarter;->reset(Z)V

    .line 30
    .line 31
    .line 32
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SA_LOGGING:Z

    .line 33
    .line 34
    const/4 v5, 0x1

    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    if-eqz v14, :cond_1

    .line 38
    .line 39
    invoke-virtual/range {p6 .. p6}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    invoke-virtual/range {p6 .. p6}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-nez v1, :cond_1

    .line 54
    .line 55
    iput-boolean v5, v0, Lcom/android/server/wm/ActivityStarter;->mIsFreeformLaunching:Z

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    iput-boolean v6, v0, Lcom/android/server/wm/ActivityStarter;->mIsFreeformLaunching:Z

    .line 59
    .line 60
    :goto_0
    iput-object v11, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 61
    .line 62
    iget-object v1, v11, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 63
    .line 64
    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 65
    .line 66
    iput-object v14, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 67
    .line 68
    iget v1, v11, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    .line 69
    .line 70
    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    .line 71
    .line 72
    iput v8, v0, Lcom/android/server/wm/ActivityStarter;->mRealCallingUid:I

    .line 73
    .line 74
    iput-object v12, v0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 75
    .line 76
    if-eqz v12, :cond_2

    .line 77
    .line 78
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    goto :goto_1

    .line 83
    :cond_2
    const/4 v1, 0x0

    .line 84
    :goto_1
    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mSourceRootTask:Lcom/android/server/wm/Task;

    .line 85
    .line 86
    move-object/from16 v1, p3

    .line 87
    .line 88
    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 89
    .line 90
    move-object/from16 v1, p4

    .line 91
    .line 92
    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 93
    .line 94
    iput v2, v0, Lcom/android/server/wm/ActivityStarter;->mBalCode:I

    .line 95
    .line 96
    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 97
    .line 98
    invoke-virtual {v3}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->reset()V

    .line 99
    .line 100
    .line 101
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 102
    .line 103
    iget-object v1, v2, Lcom/android/server/wm/ActivityTaskSupervisor;->mLaunchParamsController:Lcom/android/server/wm/LaunchParamsController;

    .line 104
    .line 105
    iget-object v4, v11, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 106
    .line 107
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    .line 108
    .line 109
    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 110
    .line 111
    iget-object v8, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 112
    .line 113
    const/16 v18, 0x0

    .line 114
    .line 115
    const/16 v19, 0x0

    .line 116
    .line 117
    move-object/from16 v20, v2

    .line 118
    .line 119
    move-object/from16 v2, p7

    .line 120
    .line 121
    move-object/from16 v21, v3

    .line 122
    .line 123
    move-object v3, v4

    .line 124
    move-object/from16 v4, p1

    .line 125
    .line 126
    move-object/from16 v5, p2

    .line 127
    .line 128
    move-object/from16 v6, p6

    .line 129
    .line 130
    move-object/from16 v16, v8

    .line 131
    .line 132
    move/from16 v8, v19

    .line 133
    .line 134
    move-object/from16 v9, v16

    .line 135
    .line 136
    move-object/from16 v10, v18

    .line 137
    .line 138
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/wm/LaunchParamsController;->calculate(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityStarter$Request;ILcom/android/server/wm/LaunchParamsController$LaunchParams;Lcom/android/server/wm/TaskDisplayArea;)V

    .line 139
    .line 140
    .line 141
    move-object/from16 v1, v21

    .line 142
    .line 143
    iget-object v2, v1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 144
    .line 145
    if-eqz v2, :cond_3

    .line 146
    .line 147
    const/4 v6, 0x1

    .line 148
    goto :goto_2

    .line 149
    :cond_3
    const/4 v6, 0x0

    .line 150
    :goto_2
    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 151
    .line 152
    if-eqz v6, :cond_4

    .line 153
    .line 154
    goto :goto_3

    .line 155
    :cond_4
    iget-object v2, v3, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 156
    .line 157
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    :goto_3
    iput-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 162
    .line 163
    iget v1, v1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    .line 164
    .line 165
    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mPreferredWindowingMode:I

    .line 166
    .line 167
    iget v1, v11, Lcom/android/server/wm/ActivityRecord;->launchMode:I

    .line 168
    .line 169
    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    .line 170
    .line 171
    const/4 v7, 0x3

    .line 172
    if-ne v7, v1, :cond_5

    .line 173
    .line 174
    const/4 v6, 0x1

    .line 175
    goto :goto_4

    .line 176
    :cond_5
    const/4 v6, 0x0

    .line 177
    :goto_4
    const/4 v2, 0x2

    .line 178
    if-ne v2, v1, :cond_6

    .line 179
    .line 180
    const/4 v1, 0x1

    .line 181
    goto :goto_5

    .line 182
    :cond_6
    const/4 v1, 0x0

    .line 183
    :goto_5
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 184
    .line 185
    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    .line 186
    .line 187
    .line 188
    move-result v4

    .line 189
    const/high16 v5, 0x80000

    .line 190
    .line 191
    and-int v8, v4, v5

    .line 192
    .line 193
    const/4 v9, 0x4

    .line 194
    const-string v10, "ActivityTaskManager"

    .line 195
    .line 196
    const v16, -0x8080001

    .line 197
    .line 198
    .line 199
    if-eqz v8, :cond_8

    .line 200
    .line 201
    if-nez v6, :cond_7

    .line 202
    .line 203
    if-eqz v1, :cond_8

    .line 204
    .line 205
    :cond_7
    const-string v1, "Ignoring FLAG_ACTIVITY_NEW_DOCUMENT, launchMode is \"singleInstance\" or \"singleTask\""

    .line 206
    .line 207
    invoke-static {v10, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    .line 209
    .line 210
    and-int v4, v4, v16

    .line 211
    .line 212
    const/4 v6, 0x1

    .line 213
    goto :goto_6

    .line 214
    :cond_8
    iget-object v1, v11, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 215
    .line 216
    iget v1, v1, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    .line 217
    .line 218
    const/4 v6, 0x1

    .line 219
    if-eq v1, v6, :cond_b

    .line 220
    .line 221
    if-eq v1, v2, :cond_b

    .line 222
    .line 223
    if-eq v1, v7, :cond_9

    .line 224
    .line 225
    goto :goto_6

    .line 226
    :cond_9
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    .line 227
    .line 228
    if-ne v1, v9, :cond_a

    .line 229
    .line 230
    if-eqz v8, :cond_c

    .line 231
    .line 232
    :cond_a
    and-int v4, v4, v16

    .line 233
    .line 234
    goto :goto_6

    .line 235
    :cond_b
    or-int/2addr v4, v5

    .line 236
    :cond_c
    :goto_6
    iput v4, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 237
    .line 238
    iget-boolean v1, v11, Lcom/android/server/wm/WindowContainer;->mLaunchTaskBehind:Z

    .line 239
    .line 240
    if-eqz v1, :cond_e

    .line 241
    .line 242
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    .line 243
    .line 244
    if-eq v2, v1, :cond_e

    .line 245
    .line 246
    if-ne v7, v1, :cond_d

    .line 247
    .line 248
    goto :goto_7

    .line 249
    :cond_d
    and-int v1, v4, v5

    .line 250
    .line 251
    if-eqz v1, :cond_e

    .line 252
    .line 253
    move v1, v6

    .line 254
    goto :goto_8

    .line 255
    :cond_e
    :goto_7
    const/4 v1, 0x0

    .line 256
    :goto_8
    iput-boolean v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    .line 257
    .line 258
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    .line 259
    .line 260
    const/high16 v8, 0x10000000

    .line 261
    .line 262
    if-ne v1, v9, :cond_f

    .line 263
    .line 264
    or-int v1, v4, v8

    .line 265
    .line 266
    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 267
    .line 268
    :cond_f
    iget-object v1, v11, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 269
    .line 270
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->requiredDisplayCategory:Ljava/lang/String;

    .line 271
    .line 272
    if-eqz v1, :cond_10

    .line 273
    .line 274
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 275
    .line 276
    if-eqz v4, :cond_10

    .line 277
    .line 278
    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 279
    .line 280
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->requiredDisplayCategory:Ljava/lang/String;

    .line 281
    .line 282
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 283
    .line 284
    .line 285
    move-result v1

    .line 286
    if-nez v1, :cond_10

    .line 287
    .line 288
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 289
    .line 290
    or-int/2addr v1, v8

    .line 291
    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 292
    .line 293
    :cond_10
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 294
    .line 295
    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    .line 296
    .line 297
    if-eqz v1, :cond_11

    .line 298
    .line 299
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 300
    .line 301
    and-int/2addr v1, v8

    .line 302
    if-eqz v1, :cond_11

    .line 303
    .line 304
    const-string v1, "Activity is launching as a new task, so cancelling activity result."

    .line 305
    .line 306
    invoke-static {v10, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    .line 308
    .line 309
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 310
    .line 311
    iget-object v4, v1, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    .line 312
    .line 313
    iget-object v7, v1, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    .line 314
    .line 315
    iget v1, v1, Lcom/android/server/wm/ActivityRecord;->requestCode:I

    .line 316
    .line 317
    const/16 v30, 0x0

    .line 318
    .line 319
    const/16 v31, 0x0

    .line 320
    .line 321
    const/16 v25, -0x1

    .line 322
    .line 323
    const/16 v28, 0x0

    .line 324
    .line 325
    const/16 v29, 0x0

    .line 326
    .line 327
    const/16 v32, 0x0

    .line 328
    .line 329
    move-object/from16 v24, v4

    .line 330
    .line 331
    move-object/from16 v26, v7

    .line 332
    .line 333
    move/from16 v27, v1

    .line 334
    .line 335
    invoke-virtual/range {v24 .. v32}, Lcom/android/server/wm/ActivityRecord;->sendResult(ILjava/lang/String;IILandroid/content/Intent;Landroid/os/IBinder;Lcom/android/server/uri/NeededUriGrants;Z)V

    .line 336
    .line 337
    .line 338
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 339
    .line 340
    const/4 v7, 0x0

    .line 341
    iput-object v7, v1, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    .line 342
    .line 343
    goto :goto_9

    .line 344
    :cond_11
    const/4 v7, 0x0

    .line 345
    :goto_9
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 346
    .line 347
    and-int v4, v1, v5

    .line 348
    .line 349
    if-eqz v4, :cond_12

    .line 350
    .line 351
    iget-object v4, v11, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    .line 352
    .line 353
    if-nez v4, :cond_12

    .line 354
    .line 355
    or-int/2addr v1, v8

    .line 356
    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 357
    .line 358
    :cond_12
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 359
    .line 360
    and-int v4, v1, v8

    .line 361
    .line 362
    if-eqz v4, :cond_14

    .line 363
    .line 364
    iget-boolean v4, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    .line 365
    .line 366
    if-nez v4, :cond_13

    .line 367
    .line 368
    iget-object v4, v11, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 369
    .line 370
    iget v4, v4, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    .line 371
    .line 372
    if-ne v4, v2, :cond_14

    .line 373
    .line 374
    :cond_13
    const/high16 v4, 0x8000000

    .line 375
    .line 376
    or-int/2addr v1, v4

    .line 377
    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 378
    .line 379
    :cond_14
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->isLaunchAdjacent()Z

    .line 380
    .line 381
    .line 382
    move-result v1

    .line 383
    if-eqz v1, :cond_15

    .line 384
    .line 385
    sget-boolean v1, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_ENABLED:Z

    .line 386
    .line 387
    if-nez v1, :cond_15

    .line 388
    .line 389
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 390
    .line 391
    and-int/lit16 v1, v1, -0x1001

    .line 392
    .line 393
    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 394
    .line 395
    :cond_15
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 396
    .line 397
    const/high16 v4, 0x40000

    .line 398
    .line 399
    and-int/2addr v1, v4

    .line 400
    if-nez v1, :cond_16

    .line 401
    .line 402
    move v1, v6

    .line 403
    move-object/from16 v4, v20

    .line 404
    .line 405
    goto :goto_a

    .line 406
    :cond_16
    move-object/from16 v4, v20

    .line 407
    .line 408
    const/4 v1, 0x0

    .line 409
    :goto_a
    iput-boolean v1, v4, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z

    .line 410
    .line 411
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->showToCurrentUser()Z

    .line 412
    .line 413
    .line 414
    move-result v1

    .line 415
    if-nez v1, :cond_17

    .line 416
    .line 417
    new-instance v5, Ljava/lang/StringBuilder;

    .line 418
    .line 419
    const-string v8, "Can\'t resume non-current user r="

    .line 420
    .line 421
    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 422
    .line 423
    .line 424
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 425
    .line 426
    .line 427
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object v5

    .line 431
    invoke-static {v10, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    .line 433
    .line 434
    :cond_17
    if-eqz v1, :cond_19

    .line 435
    .line 436
    iget-boolean v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    .line 437
    .line 438
    if-eqz v1, :cond_18

    .line 439
    .line 440
    goto :goto_b

    .line 441
    :cond_18
    iput-boolean v6, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    .line 442
    .line 443
    const/4 v8, 0x0

    .line 444
    goto :goto_c

    .line 445
    :cond_19
    :goto_b
    iput-boolean v6, v11, Lcom/android/server/wm/ActivityRecord;->delayedResume:Z

    .line 446
    .line 447
    const/4 v8, 0x0

    .line 448
    iput-boolean v8, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    .line 449
    .line 450
    :goto_c
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 451
    .line 452
    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 453
    .line 454
    const/4 v9, -0x1

    .line 455
    if-eqz v1, :cond_24

    .line 456
    .line 457
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    .line 458
    .line 459
    .line 460
    move-result v1

    .line 461
    if-eq v1, v9, :cond_1b

    .line 462
    .line 463
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 464
    .line 465
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getTaskOverlay()Z

    .line 466
    .line 467
    .line 468
    move-result v1

    .line 469
    if-eqz v1, :cond_1b

    .line 470
    .line 471
    iput-boolean v6, v11, Lcom/android/server/wm/ActivityRecord;->mTaskOverlay:Z

    .line 472
    .line 473
    invoke-virtual {v11, v6}, Lcom/android/server/wm/ConfigurationContainer;->setAlwaysOnTop(Z)V

    .line 474
    .line 475
    .line 476
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 477
    .line 478
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->canTaskOverlayResume()Z

    .line 479
    .line 480
    .line 481
    move-result v1

    .line 482
    if-nez v1, :cond_1c

    .line 483
    .line 484
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 485
    .line 486
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    .line 487
    .line 488
    .line 489
    move-result v1

    .line 490
    invoke-virtual {v3, v1}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(I)Lcom/android/server/wm/Task;

    .line 491
    .line 492
    .line 493
    move-result-object v1

    .line 494
    if-eqz v1, :cond_1a

    .line 495
    .line 496
    invoke-virtual {v1, v6, v6}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 497
    .line 498
    .line 499
    move-result-object v1

    .line 500
    goto :goto_d

    .line 501
    :cond_1a
    move-object v1, v7

    .line 502
    :goto_d
    if-eqz v1, :cond_1c

    .line 503
    .line 504
    sget-object v9, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    .line 505
    .line 506
    invoke-virtual {v1, v9}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    .line 507
    .line 508
    .line 509
    move-result v1

    .line 510
    if-nez v1, :cond_1c

    .line 511
    .line 512
    iput-boolean v8, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    .line 513
    .line 514
    iput v2, v0, Lcom/android/server/wm/ActivityStarter;->mCanMoveToFrontCode:I

    .line 515
    .line 516
    goto :goto_e

    .line 517
    :cond_1b
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 518
    .line 519
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getAvoidMoveToFront()Z

    .line 520
    .line 521
    .line 522
    move-result v1

    .line 523
    if-eqz v1, :cond_1c

    .line 524
    .line 525
    iput-boolean v8, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    .line 526
    .line 527
    iput v2, v0, Lcom/android/server/wm/ActivityStarter;->mCanMoveToFrontCode:I

    .line 528
    .line 529
    :cond_1c
    :goto_e
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 530
    .line 531
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getTransientLaunch()Z

    .line 532
    .line 533
    .line 534
    move-result v1

    .line 535
    iput-boolean v1, v0, Lcom/android/server/wm/ActivityStarter;->mTransientLaunch:Z

    .line 536
    .line 537
    iget-object v1, v4, Lcom/android/server/wm/ActivityTaskSupervisor;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    .line 538
    .line 539
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 540
    .line 541
    iget-object v4, v4, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 542
    .line 543
    iget v4, v4, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 544
    .line 545
    invoke-virtual {v1, v4}, Lcom/android/server/wm/KeyguardController;->isKeyguardOccluded(I)Z

    .line 546
    .line 547
    .line 548
    move-result v1

    .line 549
    iput-boolean v1, v0, Lcom/android/server/wm/ActivityStarter;->mDisplayLockAndOccluded:Z

    .line 550
    .line 551
    iget-boolean v4, v0, Lcom/android/server/wm/ActivityStarter;->mTransientLaunch:Z

    .line 552
    .line 553
    if-eqz v4, :cond_1d

    .line 554
    .line 555
    if-eqz v1, :cond_1d

    .line 556
    .line 557
    iget-object v1, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 558
    .line 559
    iget-object v1, v1, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 560
    .line 561
    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    .line 562
    .line 563
    .line 564
    move-result v1

    .line 565
    if-eqz v1, :cond_1d

    .line 566
    .line 567
    iput-boolean v8, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    .line 568
    .line 569
    iput v2, v0, Lcom/android/server/wm/ActivityStarter;->mCanMoveToFrontCode:I

    .line 570
    .line 571
    :cond_1d
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 572
    .line 573
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getLaunchRootTask()Landroid/window/WindowContainerToken;

    .line 574
    .line 575
    .line 576
    move-result-object v1

    .line 577
    invoke-static {v1}, Lcom/android/server/wm/Task;->fromWindowContainerToken(Landroid/window/WindowContainerToken;)Lcom/android/server/wm/Task;

    .line 578
    .line 579
    .line 580
    move-result-object v1

    .line 581
    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 582
    .line 583
    if-nez p8, :cond_1f

    .line 584
    .line 585
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 586
    .line 587
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getLaunchTaskFragmentToken()Landroid/os/IBinder;

    .line 588
    .line 589
    .line 590
    move-result-object v1

    .line 591
    if-nez v1, :cond_1e

    .line 592
    .line 593
    move-object v1, v7

    .line 594
    goto :goto_f

    .line 595
    :cond_1e
    iget-object v4, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 596
    .line 597
    iget-object v4, v4, Lcom/android/server/wm/WindowOrganizerController;->mLaunchTaskFragments:Landroid/util/ArrayMap;

    .line 598
    .line 599
    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    .line 601
    .line 602
    move-result-object v1

    .line 603
    check-cast v1, Lcom/android/server/wm/TaskFragment;

    .line 604
    .line 605
    :goto_f
    if-eqz v1, :cond_20

    .line 606
    .line 607
    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->isEmbeddedTaskFragmentInPip()Z

    .line 608
    .line 609
    .line 610
    move-result v4

    .line 611
    if-eqz v4, :cond_20

    .line 612
    .line 613
    new-instance v4, Ljava/lang/StringBuilder;

    .line 614
    .line 615
    const-string v9, "Can not start activity in TaskFragment in PIP: "

    .line 616
    .line 617
    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 618
    .line 619
    .line 620
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 621
    .line 622
    .line 623
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 624
    .line 625
    .line 626
    move-result-object v1

    .line 627
    invoke-static {v10, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    .line 629
    .line 630
    move-object v1, v7

    .line 631
    goto :goto_10

    .line 632
    :cond_1f
    move-object/from16 v1, p8

    .line 633
    .line 634
    :cond_20
    :goto_10
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    .line 635
    .line 636
    if-eqz v4, :cond_23

    .line 637
    .line 638
    if-eqz v1, :cond_23

    .line 639
    .line 640
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 641
    .line 642
    invoke-virtual {v4}, Landroid/app/ActivityOptions;->isActivityEmbeddedPlaceholder()Z

    .line 643
    .line 644
    .line 645
    move-result v4

    .line 646
    if-eqz v4, :cond_23

    .line 647
    .line 648
    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    .line 649
    .line 650
    .line 651
    move-result-object v4

    .line 652
    if-eqz v4, :cond_22

    .line 653
    .line 654
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->inFullscreenWindowingMode()Z

    .line 655
    .line 656
    .line 657
    move-result v9

    .line 658
    if-eqz v9, :cond_22

    .line 659
    .line 660
    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 661
    .line 662
    .line 663
    move-result-object v9

    .line 664
    if-eqz v9, :cond_22

    .line 665
    .line 666
    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 667
    .line 668
    .line 669
    move-result-object v9

    .line 670
    new-instance v7, Lcom/android/server/wm/ActivityStarter$$ExternalSyntheticLambda0;

    .line 671
    .line 672
    const/4 v6, 0x0

    .line 673
    invoke-direct {v7, v6}, Lcom/android/server/wm/ActivityStarter$$ExternalSyntheticLambda0;-><init>(I)V

    .line 674
    .line 675
    .line 676
    invoke-virtual {v9, v7}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    .line 677
    .line 678
    .line 679
    move-result-object v6

    .line 680
    if-eqz v6, :cond_21

    .line 681
    .line 682
    if-eq v6, v4, :cond_21

    .line 683
    .line 684
    iput v2, v0, Lcom/android/server/wm/ActivityStarter;->mCanMoveToFrontCode:I

    .line 685
    .line 686
    iput-boolean v8, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    .line 687
    .line 688
    :cond_21
    const/4 v4, 0x1

    .line 689
    goto :goto_11

    .line 690
    :cond_22
    move v4, v6

    .line 691
    :goto_11
    iput-boolean v4, v1, Lcom/android/server/wm/TaskFragment;->mIsPlaceholderTaskFragment:Z

    .line 692
    .line 693
    :cond_23
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 694
    .line 695
    if-eqz v4, :cond_25

    .line 696
    .line 697
    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getStartAssistantActivity()Z

    .line 698
    .line 699
    .line 700
    move-result v4

    .line 701
    if-eqz v4, :cond_25

    .line 702
    .line 703
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->isResolverOrDelegateActivity()Z

    .line 704
    .line 705
    .line 706
    move-result v4

    .line 707
    if-eqz v4, :cond_25

    .line 708
    .line 709
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 710
    .line 711
    const/4 v6, 0x0

    .line 712
    invoke-virtual {v4, v6}, Landroid/app/ActivityOptions;->setLaunchBounds(Landroid/graphics/Rect;)Landroid/app/ActivityOptions;

    .line 713
    .line 714
    .line 715
    goto :goto_12

    .line 716
    :cond_24
    move-object/from16 v1, p8

    .line 717
    .line 718
    :cond_25
    :goto_12
    iget v4, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 719
    .line 720
    const/high16 v6, 0x1000000

    .line 721
    .line 722
    and-int/2addr v4, v6

    .line 723
    if-eqz v4, :cond_26

    .line 724
    .line 725
    move-object v4, v12

    .line 726
    goto :goto_13

    .line 727
    :cond_26
    const/4 v4, 0x0

    .line 728
    :goto_13
    iput-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mNotTop:Lcom/android/server/wm/ActivityRecord;

    .line 729
    .line 730
    iput-object v15, v0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    .line 731
    .line 732
    if-eqz v15, :cond_27

    .line 733
    .line 734
    iget-boolean v4, v15, Lcom/android/server/wm/Task;->inRecents:Z

    .line 735
    .line 736
    if-nez v4, :cond_27

    .line 737
    .line 738
    new-instance v4, Ljava/lang/StringBuilder;

    .line 739
    .line 740
    const-string v6, "Starting activity in task not in recents: "

    .line 741
    .line 742
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 743
    .line 744
    .line 745
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 746
    .line 747
    .line 748
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 749
    .line 750
    .line 751
    move-result-object v4

    .line 752
    invoke-static {v10, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    .line 754
    .line 755
    const/4 v4, 0x0

    .line 756
    iput-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    .line 757
    .line 758
    :cond_27
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    .line 759
    .line 760
    if-eqz v4, :cond_2a

    .line 761
    .line 762
    iget-object v6, v11, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 763
    .line 764
    iget-object v7, v4, Lcom/android/server/wm/Task;->mRequiredDisplayCategory:Ljava/lang/String;

    .line 765
    .line 766
    if-eqz v7, :cond_28

    .line 767
    .line 768
    iget-object v9, v6, Landroid/content/pm/ActivityInfo;->requiredDisplayCategory:Ljava/lang/String;

    .line 769
    .line 770
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 771
    .line 772
    .line 773
    move-result v7

    .line 774
    if-nez v7, :cond_2a

    .line 775
    .line 776
    :cond_28
    iget-object v4, v4, Lcom/android/server/wm/Task;->mRequiredDisplayCategory:Ljava/lang/String;

    .line 777
    .line 778
    if-nez v4, :cond_29

    .line 779
    .line 780
    iget-object v4, v6, Landroid/content/pm/ActivityInfo;->requiredDisplayCategory:Ljava/lang/String;

    .line 781
    .line 782
    if-nez v4, :cond_29

    .line 783
    .line 784
    goto :goto_14

    .line 785
    :cond_29
    new-instance v4, Ljava/lang/StringBuilder;

    .line 786
    .line 787
    const-string v6, "Starting activity in task with different display category: "

    .line 788
    .line 789
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 790
    .line 791
    .line 792
    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    .line 793
    .line 794
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 795
    .line 796
    .line 797
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 798
    .line 799
    .line 800
    move-result-object v4

    .line 801
    invoke-static {v10, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    .line 803
    .line 804
    const/4 v4, 0x0

    .line 805
    iput-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    .line 806
    .line 807
    :cond_2a
    :goto_14
    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mInTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 808
    .line 809
    iput v13, v0, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    .line 810
    .line 811
    const/4 v1, 0x1

    .line 812
    and-int/lit8 v4, v13, 0x1

    .line 813
    .line 814
    if-eqz v4, :cond_2d

    .line 815
    .line 816
    if-nez v12, :cond_2b

    .line 817
    .line 818
    invoke-virtual {v3}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    .line 819
    .line 820
    .line 821
    move-result-object v1

    .line 822
    if-eqz v1, :cond_2b

    .line 823
    .line 824
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mNotTop:Lcom/android/server/wm/ActivityRecord;

    .line 825
    .line 826
    invoke-virtual {v1, v4}, Lcom/android/server/wm/Task;->topRunningNonDelayedActivityLocked(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    .line 827
    .line 828
    .line 829
    move-result-object v1

    .line 830
    goto :goto_15

    .line 831
    :cond_2b
    move-object v1, v12

    .line 832
    :goto_15
    if-eqz v1, :cond_2c

    .line 833
    .line 834
    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 835
    .line 836
    iget-object v4, v11, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 837
    .line 838
    invoke-virtual {v1, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 839
    .line 840
    .line 841
    move-result v1

    .line 842
    if-nez v1, :cond_2d

    .line 843
    .line 844
    :cond_2c
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    .line 845
    .line 846
    and-int/lit8 v1, v1, -0x2

    .line 847
    .line 848
    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    .line 849
    .line 850
    :cond_2d
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 851
    .line 852
    const/high16 v4, 0x10000

    .line 853
    .line 854
    and-int/2addr v1, v4

    .line 855
    if-eqz v1, :cond_2e

    .line 856
    .line 857
    const/4 v6, 0x1

    .line 858
    goto :goto_16

    .line 859
    :cond_2e
    move v6, v8

    .line 860
    :goto_16
    iput-boolean v6, v0, Lcom/android/server/wm/ActivityStarter;->mNoAnimation:Z

    .line 861
    .line 862
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mBalCode:I

    .line 863
    .line 864
    if-nez v1, :cond_2f

    .line 865
    .line 866
    iget-object v1, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 867
    .line 868
    invoke-virtual {v1}, Landroid/app/ActivityManagerInternal;->isBackgroundActivityStartsEnabled()Z

    .line 869
    .line 870
    .line 871
    move-result v1

    .line 872
    if-nez v1, :cond_2f

    .line 873
    .line 874
    iput v2, v0, Lcom/android/server/wm/ActivityStarter;->mCanMoveToFrontCode:I

    .line 875
    .line 876
    iput-boolean v8, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    .line 877
    .line 878
    :cond_2f
    iget-object v1, v11, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 879
    .line 880
    invoke-virtual {v1}, Landroid/content/Intent;->getLaunchOverTargetTaskId()I

    .line 881
    .line 882
    .line 883
    move-result v1

    .line 884
    const/4 v4, -0x1

    .line 885
    if-eq v1, v4, :cond_33

    .line 886
    .line 887
    iget-object v1, v3, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 888
    .line 889
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 890
    .line 891
    .line 892
    move-result-object v1

    .line 893
    invoke-virtual {v1}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    .line 894
    .line 895
    .line 896
    move-result v4

    .line 897
    if-eqz v4, :cond_32

    .line 898
    .line 899
    new-instance v4, Ljava/util/ArrayList;

    .line 900
    .line 901
    const/4 v6, 0x1

    .line 902
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 903
    .line 904
    .line 905
    move-result-object v7

    .line 906
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 907
    .line 908
    .line 909
    move-result-object v6

    .line 910
    filled-new-array {v7, v6}, [Ljava/lang/Integer;

    .line 911
    .line 912
    .line 913
    move-result-object v6

    .line 914
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 915
    .line 916
    .line 917
    move-result-object v6

    .line 918
    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 919
    .line 920
    .line 921
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT:Z

    .line 922
    .line 923
    if-eqz v6, :cond_30

    .line 924
    .line 925
    invoke-virtual {v1}, Lcom/android/server/wm/TaskDisplayArea;->isMultiSplitActive()Z

    .line 926
    .line 927
    .line 928
    move-result v6

    .line 929
    if-eqz v6, :cond_30

    .line 930
    .line 931
    const/4 v6, 0x4

    .line 932
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 933
    .line 934
    .line 935
    move-result-object v7

    .line 936
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 937
    .line 938
    .line 939
    :cond_30
    move v6, v8

    .line 940
    :goto_17
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 941
    .line 942
    .line 943
    move-result v7

    .line 944
    if-ge v6, v7, :cond_33

    .line 945
    .line 946
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 947
    .line 948
    .line 949
    move-result-object v7

    .line 950
    check-cast v7, Ljava/lang/Integer;

    .line 951
    .line 952
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 953
    .line 954
    .line 955
    move-result v7

    .line 956
    invoke-virtual {v1, v7}, Lcom/android/server/wm/TaskDisplayArea;->getTopRootTaskInStageType(I)Lcom/android/server/wm/Task;

    .line 957
    .line 958
    .line 959
    move-result-object v7

    .line 960
    const/4 v9, 0x1

    .line 961
    if-eqz v7, :cond_31

    .line 962
    .line 963
    invoke-virtual {v7, v9, v8}, Lcom/android/server/wm/Task;->getTopVisibleActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 964
    .line 965
    .line 966
    move-result-object v13

    .line 967
    if-eqz v13, :cond_31

    .line 968
    .line 969
    iget-object v13, v0, Lcom/android/server/wm/ActivityStarter;->mSavedFrontTaskIds:Landroid/util/SparseBooleanArray;

    .line 970
    .line 971
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    .line 972
    .line 973
    .line 974
    move-result-object v7

    .line 975
    iget v7, v7, Lcom/android/server/wm/Task;->mTaskId:I

    .line 976
    .line 977
    invoke-virtual {v13, v7, v9}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 978
    .line 979
    .line 980
    :cond_31
    add-int/lit8 v6, v6, 0x1

    .line 981
    .line 982
    goto :goto_17

    .line 983
    :cond_32
    const/4 v9, 0x1

    .line 984
    invoke-virtual {v1, v9, v8}, Lcom/android/server/wm/TaskDisplayArea;->getRootTask(II)Lcom/android/server/wm/Task;

    .line 985
    .line 986
    .line 987
    move-result-object v1

    .line 988
    if-eqz v1, :cond_33

    .line 989
    .line 990
    invoke-virtual {v1, v9, v8}, Lcom/android/server/wm/Task;->getTopVisibleActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 991
    .line 992
    .line 993
    move-result-object v4

    .line 994
    if-eqz v4, :cond_33

    .line 995
    .line 996
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mSavedFrontTaskIds:Landroid/util/SparseBooleanArray;

    .line 997
    .line 998
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    .line 999
    .line 1000
    .line 1001
    move-result-object v1

    .line 1002
    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 1003
    .line 1004
    invoke-virtual {v4, v1, v9}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1005
    .line 1006
    .line 1007
    :cond_33
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 1008
    .line 1009
    const v4, 0x10001000

    .line 1010
    .line 1011
    .line 1012
    and-int/2addr v1, v4

    .line 1013
    if-ne v1, v4, :cond_3f

    .line 1014
    .line 1015
    if-eqz v12, :cond_3f

    .line 1016
    .line 1017
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    .line 1018
    .line 1019
    .line 1020
    move-result v1

    .line 1021
    if-nez v1, :cond_3f

    .line 1022
    .line 1023
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 1024
    .line 1025
    .line 1026
    move-result v1

    .line 1027
    const/4 v4, 0x1

    .line 1028
    if-ne v1, v4, :cond_3f

    .line 1029
    .line 1030
    iget-object v1, v12, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 1031
    .line 1032
    if-eqz v1, :cond_3f

    .line 1033
    .line 1034
    invoke-virtual {v1, v4}, Lcom/android/server/wm/Task;->isResizeable(Z)Z

    .line 1035
    .line 1036
    .line 1037
    move-result v1

    .line 1038
    if-eqz v1, :cond_3f

    .line 1039
    .line 1040
    if-eqz v14, :cond_37

    .line 1041
    .line 1042
    invoke-virtual/range {p6 .. p6}, Landroid/app/ActivityOptions;->hasValidLaunchAdjacentExt()Z

    .line 1043
    .line 1044
    .line 1045
    move-result v1

    .line 1046
    if-eqz v1, :cond_37

    .line 1047
    .line 1048
    invoke-virtual/range {p6 .. p6}, Landroid/app/ActivityOptions;->hasValidHorizontalSplitLayoutWithAdjacentFlag()Z

    .line 1049
    .line 1050
    .line 1051
    move-result v1

    .line 1052
    if-eqz v1, :cond_35

    .line 1053
    .line 1054
    invoke-virtual/range {p6 .. p6}, Landroid/app/ActivityOptions;->launchToTopSideWithAdjacentFlag()Z

    .line 1055
    .line 1056
    .line 1057
    move-result v1

    .line 1058
    if-eqz v1, :cond_34

    .line 1059
    .line 1060
    const/4 v7, 0x5

    .line 1061
    goto :goto_18

    .line 1062
    :cond_34
    const/4 v7, 0x3

    .line 1063
    goto :goto_18

    .line 1064
    :cond_35
    invoke-virtual/range {p6 .. p6}, Landroid/app/ActivityOptions;->launchToRightSideWithAdjacentFlag()Z

    .line 1065
    .line 1066
    .line 1067
    move-result v1

    .line 1068
    if-eqz v1, :cond_36

    .line 1069
    .line 1070
    move v7, v2

    .line 1071
    goto :goto_18

    .line 1072
    :cond_36
    const/4 v7, 0x4

    .line 1073
    :goto_18
    iget-object v1, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    .line 1074
    .line 1075
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1076
    .line 1077
    .line 1078
    new-instance v3, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;

    .line 1079
    .line 1080
    invoke-direct {v3}, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;-><init>()V

    .line 1081
    .line 1082
    .line 1083
    invoke-virtual {v3, v7}, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->setSplitScreenCreateModeForLaunchAdjacent(I)V

    .line 1084
    .line 1085
    .line 1086
    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->toBundle()Landroid/os/Bundle;

    .line 1087
    .line 1088
    .line 1089
    move-result-object v3

    .line 1090
    invoke-virtual {v1, v3}, Lcom/android/server/wm/TaskOrganizerController;->onSplitLayoutChangeRequested(Landroid/os/Bundle;)V

    .line 1091
    .line 1092
    .line 1093
    iget-object v1, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    .line 1094
    .line 1095
    const/4 v3, 0x1

    .line 1096
    iput-boolean v3, v1, Lcom/android/server/wm/MultiTaskingController;->mDeferEnsureConfig:Z

    .line 1097
    .line 1098
    goto :goto_1b

    .line 1099
    :cond_37
    iget-object v1, v3, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 1100
    .line 1101
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 1102
    .line 1103
    .line 1104
    move-result-object v1

    .line 1105
    iget-object v1, v1, Lcom/android/server/wm/TaskDisplayArea;->mRootSideStageTask:Lcom/android/server/wm/Task;

    .line 1106
    .line 1107
    if-eqz v1, :cond_3e

    .line 1108
    .line 1109
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    .line 1110
    .line 1111
    .line 1112
    move-result-object v1

    .line 1113
    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getStagePosition()I

    .line 1114
    .line 1115
    .line 1116
    move-result v1

    .line 1117
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_LAUNCH_ADJACENT:Z

    .line 1118
    .line 1119
    const/16 v4, 0x8

    .line 1120
    .line 1121
    if-eqz v3, :cond_3c

    .line 1122
    .line 1123
    if-eq v1, v4, :cond_39

    .line 1124
    .line 1125
    const/16 v3, 0x20

    .line 1126
    .line 1127
    if-ne v1, v3, :cond_38

    .line 1128
    .line 1129
    goto :goto_19

    .line 1130
    :cond_38
    move v6, v8

    .line 1131
    goto :goto_1a

    .line 1132
    :cond_39
    :goto_19
    const/4 v6, 0x1

    .line 1133
    :goto_1a
    if-eqz v6, :cond_3a

    .line 1134
    .line 1135
    if-eq v1, v4, :cond_3b

    .line 1136
    .line 1137
    :cond_3a
    if-nez v6, :cond_3e

    .line 1138
    .line 1139
    :cond_3b
    iget-object v1, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    .line 1140
    .line 1141
    const/4 v3, 0x1

    .line 1142
    iput-boolean v3, v1, Lcom/android/server/wm/MultiTaskingController;->mDeferEnsureConfig:Z

    .line 1143
    .line 1144
    goto :goto_1b

    .line 1145
    :cond_3c
    const/16 v3, 0x10

    .line 1146
    .line 1147
    if-eq v1, v3, :cond_3d

    .line 1148
    .line 1149
    if-ne v1, v4, :cond_3e

    .line 1150
    .line 1151
    :cond_3d
    iget-object v1, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    .line 1152
    .line 1153
    const/4 v3, 0x1

    .line 1154
    iput-boolean v3, v1, Lcom/android/server/wm/MultiTaskingController;->mDeferEnsureConfig:Z

    .line 1155
    .line 1156
    :cond_3e
    :goto_1b
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_LAUNCH_ADJACENT_SA_LOGGING:Z

    .line 1157
    .line 1158
    if-eqz v1, :cond_3f

    .line 1159
    .line 1160
    const-string v1, "1000"

    .line 1161
    .line 1162
    const-string v3, "From application"

    .line 1163
    .line 1164
    invoke-static {v1, v3}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    .line 1165
    .line 1166
    .line 1167
    :cond_3f
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->computeLaunchingTaskFlags()V

    .line 1168
    .line 1169
    .line 1170
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 1171
    .line 1172
    iget v3, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 1173
    .line 1174
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1175
    .line 1176
    .line 1177
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 1178
    .line 1179
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    .line 1180
    .line 1181
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1182
    .line 1183
    .line 1184
    move-result-object v1

    .line 1185
    :cond_40
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1186
    .line 1187
    .line 1188
    move-result v3

    .line 1189
    if-eqz v3, :cond_41

    .line 1190
    .line 1191
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1192
    .line 1193
    .line 1194
    move-result-object v3

    .line 1195
    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    .line 1196
    .line 1197
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    .line 1198
    .line 1199
    .line 1200
    move-result v3

    .line 1201
    const/4 v4, 0x5

    .line 1202
    if-ne v3, v4, :cond_40

    .line 1203
    .line 1204
    const/4 v6, 0x1

    .line 1205
    goto :goto_1c

    .line 1206
    :cond_41
    const/4 v4, 0x5

    .line 1207
    move v6, v8

    .line 1208
    :goto_1c
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 1209
    .line 1210
    invoke-virtual {v1}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedRootTask()Lcom/android/server/wm/Task;

    .line 1211
    .line 1212
    .line 1213
    move-result-object v1

    .line 1214
    if-eqz v1, :cond_42

    .line 1215
    .line 1216
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopLeafTask()Lcom/android/server/wm/Task;

    .line 1217
    .line 1218
    .line 1219
    move-result-object v1

    .line 1220
    goto :goto_1d

    .line 1221
    :cond_42
    const/4 v1, 0x0

    .line 1222
    :goto_1d
    if-eqz v12, :cond_43

    .line 1223
    .line 1224
    iget-boolean v3, v12, Lcom/android/server/wm/ActivityRecord;->mLaunchedFromBubble:Z

    .line 1225
    .line 1226
    :cond_43
    invoke-static {}, Lcom/android/wm/shell/Flags;->onlyReuseBubbledTaskWhenLaunchedFromBubble()Z

    .line 1227
    .line 1228
    .line 1229
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->resolveReusableTask()Lcom/android/server/wm/Task;

    .line 1230
    .line 1231
    .line 1232
    move-result-object v3

    .line 1233
    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 1234
    .line 1235
    if-eqz v5, :cond_44

    .line 1236
    .line 1237
    invoke-virtual {v5}, Landroid/app/ActivityOptions;->freezeRecentTasksReordering()Z

    .line 1238
    .line 1239
    .line 1240
    move-result v5

    .line 1241
    if-eqz v5, :cond_44

    .line 1242
    .line 1243
    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 1244
    .line 1245
    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 1246
    .line 1247
    iget v7, v11, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    .line 1248
    .line 1249
    iget v5, v5, Lcom/android/server/wm/RecentTasks;->mRecentsUid:I

    .line 1250
    .line 1251
    invoke-static {v7, v5}, Landroid/os/UserHandle;->isSameApp(II)Z

    .line 1252
    .line 1253
    .line 1254
    move-result v5

    .line 1255
    if-eqz v5, :cond_44

    .line 1256
    .line 1257
    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 1258
    .line 1259
    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 1260
    .line 1261
    invoke-virtual {v5}, Lcom/android/server/wm/RecentTasks;->isFreezeTaskListReorderingSet()Z

    .line 1262
    .line 1263
    .line 1264
    move-result v5

    .line 1265
    if-nez v5, :cond_44

    .line 1266
    .line 1267
    const/4 v5, 0x1

    .line 1268
    iput-boolean v5, v0, Lcom/android/server/wm/ActivityStarter;->mFrozeTaskList:Z

    .line 1269
    .line 1270
    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 1271
    .line 1272
    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 1273
    .line 1274
    invoke-virtual {v5}, Lcom/android/server/wm/RecentTasks;->setFreezeTaskListReordering()V

    .line 1275
    .line 1276
    .line 1277
    :cond_44
    if-eqz v3, :cond_45

    .line 1278
    .line 1279
    move-object v5, v3

    .line 1280
    goto :goto_1e

    .line 1281
    :cond_45
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->computeTargetTask()Lcom/android/server/wm/Task;

    .line 1282
    .line 1283
    .line 1284
    move-result-object v5

    .line 1285
    :goto_1e
    if-nez v5, :cond_46

    .line 1286
    .line 1287
    const/4 v9, 0x1

    .line 1288
    goto :goto_1f

    .line 1289
    :cond_46
    move v9, v8

    .line 1290
    :goto_1f
    iput-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mTargetTask:Lcom/android/server/wm/Task;

    .line 1291
    .line 1292
    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 1293
    .line 1294
    if-eqz v7, :cond_47

    .line 1295
    .line 1296
    invoke-virtual {v7}, Landroid/app/ActivityOptions;->getForceLaunchWindowingMode()I

    .line 1297
    .line 1298
    .line 1299
    move-result v7

    .line 1300
    const/4 v13, 0x1

    .line 1301
    if-le v7, v13, :cond_47

    .line 1302
    .line 1303
    if-ge v7, v4, :cond_47

    .line 1304
    .line 1305
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 1306
    .line 1307
    invoke-virtual {v4, v8}, Landroid/app/ActivityOptions;->setForceLaunchWindowingMode(I)V

    .line 1308
    .line 1309
    .line 1310
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 1311
    .line 1312
    invoke-virtual {v4, v8}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 1313
    .line 1314
    .line 1315
    :cond_47
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->FW_WORKAROUND_RESPONSE_SPEED:Z

    .line 1316
    .line 1317
    if-eqz v4, :cond_48

    .line 1318
    .line 1319
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 1320
    .line 1321
    if-eqz v4, :cond_48

    .line 1322
    .line 1323
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 1324
    .line 1325
    if-eqz v4, :cond_48

    .line 1326
    .line 1327
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    .line 1328
    .line 1329
    .line 1330
    move-result v4

    .line 1331
    if-eqz v4, :cond_48

    .line 1332
    .line 1333
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 1334
    .line 1335
    invoke-virtual {v4}, Landroid/app/ActivityOptions;->setLaunchedFromHome()V

    .line 1336
    .line 1337
    .line 1338
    :cond_48
    invoke-virtual {v0, v11, v12, v5}, Lcom/android/server/wm/ActivityStarter;->computeLaunchParams(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)V

    .line 1339
    .line 1340
    .line 1341
    invoke-virtual {v0, v11, v9, v5}, Lcom/android/server/wm/ActivityStarter;->isAllowedToStart(Lcom/android/server/wm/ActivityRecord;ZLcom/android/server/wm/Task;)I

    .line 1342
    .line 1343
    .line 1344
    move-result v4

    .line 1345
    if-eqz v4, :cond_4a

    .line 1346
    .line 1347
    iget-object v0, v11, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    .line 1348
    .line 1349
    if-eqz v0, :cond_49

    .line 1350
    .line 1351
    iget-object v1, v11, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    .line 1352
    .line 1353
    iget v2, v11, Lcom/android/server/wm/ActivityRecord;->requestCode:I

    .line 1354
    .line 1355
    const/16 v27, 0x0

    .line 1356
    .line 1357
    const/16 v28, 0x0

    .line 1358
    .line 1359
    const/16 v23, -0x1

    .line 1360
    .line 1361
    const/16 v26, 0x0

    .line 1362
    .line 1363
    const/16 v29, 0x0

    .line 1364
    .line 1365
    const/16 v30, 0x0

    .line 1366
    .line 1367
    move-object/from16 v22, v0

    .line 1368
    .line 1369
    move-object/from16 v24, v1

    .line 1370
    .line 1371
    move/from16 v25, v2

    .line 1372
    .line 1373
    invoke-virtual/range {v22 .. v30}, Lcom/android/server/wm/ActivityRecord;->sendResult(ILjava/lang/String;IILandroid/content/Intent;Landroid/os/IBinder;Lcom/android/server/uri/NeededUriGrants;Z)V

    .line 1374
    .line 1375
    .line 1376
    :cond_49
    return v4

    .line 1377
    :cond_4a
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1378
    .line 1379
    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mAMBooster:Lcom/android/server/wm/ActivityManagerPerformance;

    .line 1380
    .line 1381
    if-eqz v4, :cond_4b

    .line 1382
    .line 1383
    invoke-virtual {v4, v11}, Lcom/android/server/wm/ActivityManagerPerformance;->onActivityStartLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 1384
    .line 1385
    .line 1386
    :cond_4b
    if-eqz v5, :cond_53

    .line 1387
    .line 1388
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getTreeWeight()I

    .line 1389
    .line 1390
    .line 1391
    move-result v4

    .line 1392
    move v13, v9

    .line 1393
    int-to-long v8, v4

    .line 1394
    const-wide/16 v17, 0x12c

    .line 1395
    .line 1396
    cmp-long v4, v8, v17

    .line 1397
    .line 1398
    if-lez v4, :cond_4c

    .line 1399
    .line 1400
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1401
    .line 1402
    const-string v2, "Remove "

    .line 1403
    .line 1404
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1405
    .line 1406
    .line 1407
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1408
    .line 1409
    .line 1410
    const-string v2, " because it has contained too many activities or windows (abort starting "

    .line 1411
    .line 1412
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1413
    .line 1414
    .line 1415
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1416
    .line 1417
    .line 1418
    const-string v2, " from uid="

    .line 1419
    .line 1420
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1421
    .line 1422
    .line 1423
    iget v0, v0, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    .line 1424
    .line 1425
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1426
    .line 1427
    .line 1428
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1429
    .line 1430
    .line 1431
    move-result-object v0

    .line 1432
    invoke-static {v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    .line 1434
    .line 1435
    const-string v0, "bulky-task"

    .line 1436
    .line 1437
    invoke-virtual {v5, v0}, Lcom/android/server/wm/Task;->removeImmediately(Ljava/lang/String;)V

    .line 1438
    .line 1439
    .line 1440
    const/16 v0, 0x66

    .line 1441
    .line 1442
    return v0

    .line 1443
    :cond_4c
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->avoidMoveToFront()Z

    .line 1444
    .line 1445
    .line 1446
    move-result v4

    .line 1447
    if-nez v4, :cond_50

    .line 1448
    .line 1449
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1450
    .line 1451
    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    .line 1452
    .line 1453
    if-eqz v4, :cond_4d

    .line 1454
    .line 1455
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1456
    .line 1457
    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    .line 1458
    .line 1459
    iget v4, v4, Lcom/android/server/wm/WindowProcessController;->mUid:I

    .line 1460
    .line 1461
    move/from16 v7, p11

    .line 1462
    .line 1463
    if-eq v4, v7, :cond_50

    .line 1464
    .line 1465
    :cond_4d
    if-eqz v1, :cond_50

    .line 1466
    .line 1467
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHomeOrRecents()Z

    .line 1468
    .line 1469
    .line 1470
    move-result v4

    .line 1471
    if-eqz v4, :cond_50

    .line 1472
    .line 1473
    iget-object v4, v11, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 1474
    .line 1475
    invoke-virtual {v4, v5}, Lcom/android/server/wm/TransitionController;->isTransientHide(Lcom/android/server/wm/Task;)Z

    .line 1476
    .line 1477
    .line 1478
    move-result v4

    .line 1479
    if-eqz v4, :cond_50

    .line 1480
    .line 1481
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 1482
    .line 1483
    if-eqz v4, :cond_4e

    .line 1484
    .line 1485
    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getLaunchRootTask()Landroid/window/WindowContainerToken;

    .line 1486
    .line 1487
    .line 1488
    move-result-object v4

    .line 1489
    invoke-static {v4}, Lcom/android/server/wm/Task;->fromWindowContainerToken(Landroid/window/WindowContainerToken;)Lcom/android/server/wm/Task;

    .line 1490
    .line 1491
    .line 1492
    move-result-object v4

    .line 1493
    goto :goto_20

    .line 1494
    :cond_4e
    const/4 v4, 0x0

    .line 1495
    :goto_20
    if-eqz v4, :cond_4f

    .line 1496
    .line 1497
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->isStageRootTask()Z

    .line 1498
    .line 1499
    .line 1500
    move-result v4

    .line 1501
    if-eqz v4, :cond_4f

    .line 1502
    .line 1503
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1504
    .line 1505
    const-string/jumbo v7, "startActivityInner: allow transient-hide task to reparenting, tid="

    .line 1506
    .line 1507
    .line 1508
    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1509
    .line 1510
    .line 1511
    iget v7, v5, Lcom/android/server/wm/Task;->mTaskId:I

    .line 1512
    .line 1513
    invoke-static {v4, v7, v10}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 1514
    .line 1515
    .line 1516
    goto :goto_21

    .line 1517
    :cond_4f
    iput v2, v0, Lcom/android/server/wm/ActivityStarter;->mCanMoveToFrontCode:I

    .line 1518
    .line 1519
    :cond_50
    :goto_21
    invoke-static {}, Lcom/android/window/flags/Flags;->balDontBringExistingBackgroundTaskStackToFg()Z

    .line 1520
    .line 1521
    .line 1522
    move-result v4

    .line 1523
    if-eqz v4, :cond_51

    .line 1524
    .line 1525
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->avoidMoveToFront()Z

    .line 1526
    .line 1527
    .line 1528
    move-result v4

    .line 1529
    if-nez v4, :cond_51

    .line 1530
    .line 1531
    move-object/from16 v8, p9

    .line 1532
    .line 1533
    iget-boolean v4, v8, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->mOnlyCreatorAllows:Z

    .line 1534
    .line 1535
    if-eqz v4, :cond_52

    .line 1536
    .line 1537
    const/4 v4, 0x1

    .line 1538
    iput v4, v0, Lcom/android/server/wm/ActivityStarter;->mCanMoveToFrontCode:I

    .line 1539
    .line 1540
    goto :goto_22

    .line 1541
    :cond_51
    move-object/from16 v8, p9

    .line 1542
    .line 1543
    :cond_52
    :goto_22
    invoke-virtual {v5}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    .line 1544
    .line 1545
    .line 1546
    move-result-object v4

    .line 1547
    invoke-static {v4}, Lcom/android/server/wm/TaskDisplayArea;->getRootTaskAbove(Lcom/android/server/wm/Task;)Lcom/android/server/wm/Task;

    .line 1548
    .line 1549
    .line 1550
    move-result-object v4

    .line 1551
    iput-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mPriorAboveTask:Lcom/android/server/wm/Task;

    .line 1552
    .line 1553
    goto :goto_23

    .line 1554
    :cond_53
    move-object/from16 v8, p9

    .line 1555
    .line 1556
    move v13, v9

    .line 1557
    :goto_23
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 1558
    .line 1559
    if-eqz v4, :cond_55

    .line 1560
    .line 1561
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 1562
    .line 1563
    invoke-virtual {v4}, Landroid/content/Intent;->getLaunchOverTargetTaskId()I

    .line 1564
    .line 1565
    .line 1566
    move-result v4

    .line 1567
    const/4 v7, -0x1

    .line 1568
    if-eq v4, v7, :cond_55

    .line 1569
    .line 1570
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 1571
    .line 1572
    invoke-virtual {v4}, Landroid/content/Intent;->getForceLaunchOverTargetTask()Z

    .line 1573
    .line 1574
    .line 1575
    move-result v4

    .line 1576
    if-eqz v4, :cond_55

    .line 1577
    .line 1578
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 1579
    .line 1580
    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    .line 1581
    .line 1582
    .line 1583
    move-result v4

    .line 1584
    if-eqz v4, :cond_54

    .line 1585
    .line 1586
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 1587
    .line 1588
    const/4 v7, 0x0

    .line 1589
    invoke-virtual {v4, v7}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 1590
    .line 1591
    .line 1592
    goto :goto_24

    .line 1593
    :cond_54
    const/4 v7, 0x0

    .line 1594
    :goto_24
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 1595
    .line 1596
    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getForceLaunchWindowingMode()I

    .line 1597
    .line 1598
    .line 1599
    move-result v4

    .line 1600
    if-eqz v4, :cond_55

    .line 1601
    .line 1602
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 1603
    .line 1604
    invoke-virtual {v4, v7}, Landroid/app/ActivityOptions;->setForceLaunchWindowingMode(I)V

    .line 1605
    .line 1606
    .line 1607
    :cond_55
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_RESUMED_AFFORDANCE_SHELL_TRANSITION:Z

    .line 1608
    .line 1609
    if-eqz v4, :cond_56

    .line 1610
    .line 1611
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1612
    .line 1613
    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    .line 1614
    .line 1615
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1616
    .line 1617
    .line 1618
    invoke-static {v3, v14}, Lcom/android/server/wm/MultiTaskingController;->needAffordanceAnimation(Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;)Z

    .line 1619
    .line 1620
    .line 1621
    move-result v4

    .line 1622
    if-eqz v4, :cond_56

    .line 1623
    .line 1624
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1625
    .line 1626
    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    .line 1627
    .line 1628
    invoke-virtual {v4, v3}, Lcom/android/server/wm/MultiTaskingController;->setAffordanceTargetTask(Lcom/android/server/wm/Task;)V

    .line 1629
    .line 1630
    .line 1631
    :cond_56
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1632
    .line 1633
    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    .line 1634
    .line 1635
    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 1636
    .line 1637
    iget-object v7, v7, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1638
    .line 1639
    iget v7, v7, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 1640
    .line 1641
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1642
    .line 1643
    .line 1644
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->FW_FOLD_SA_LOGGING:Z

    .line 1645
    .line 1646
    if-nez v4, :cond_57

    .line 1647
    .line 1648
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->FW_FLIP_LARGE_COVER_SCREEN_SA_LOGGING:Z

    .line 1649
    .line 1650
    if-eqz v4, :cond_5a

    .line 1651
    .line 1652
    :cond_57
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    .line 1653
    .line 1654
    .line 1655
    move-result v4

    .line 1656
    if-nez v4, :cond_5a

    .line 1657
    .line 1658
    iget-object v4, v11, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 1659
    .line 1660
    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 1661
    .line 1662
    iget-object v7, v7, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    .line 1663
    .line 1664
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1665
    .line 1666
    .line 1667
    move-result v4

    .line 1668
    if-nez v4, :cond_5a

    .line 1669
    .line 1670
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1671
    .line 1672
    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 1673
    .line 1674
    invoke-virtual {v4}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    .line 1675
    .line 1676
    .line 1677
    move-result-object v4

    .line 1678
    if-nez v4, :cond_58

    .line 1679
    .line 1680
    const/4 v4, 0x0

    .line 1681
    goto :goto_25

    .line 1682
    :cond_58
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    .line 1683
    .line 1684
    .line 1685
    move-result-object v4

    .line 1686
    :goto_25
    if-eqz v4, :cond_59

    .line 1687
    .line 1688
    iget-object v7, v11, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 1689
    .line 1690
    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 1691
    .line 1692
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1693
    .line 1694
    .line 1695
    move-result v4

    .line 1696
    if-nez v4, :cond_5a

    .line 1697
    .line 1698
    :cond_59
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1699
    .line 1700
    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 1701
    .line 1702
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1703
    .line 1704
    .line 1705
    iget-object v4, v11, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 1706
    .line 1707
    const-string v7, "W005"

    .line 1708
    .line 1709
    invoke-static {v7, v4}, Lcom/samsung/android/core/CoreSaLogger;->logForBasic(Ljava/lang/String;Ljava/lang/String;)V

    .line 1710
    .line 1711
    .line 1712
    :cond_5a
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 1713
    .line 1714
    if-eqz v4, :cond_5d

    .line 1715
    .line 1716
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    .line 1717
    .line 1718
    .line 1719
    move-result v4

    .line 1720
    if-eqz v4, :cond_5d

    .line 1721
    .line 1722
    iget-object v4, v11, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 1723
    .line 1724
    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 1725
    .line 1726
    .line 1727
    move-result-object v4

    .line 1728
    invoke-static {v4}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isDeferSyncSplitTransitionApps(Ljava/lang/String;)Z

    .line 1729
    .line 1730
    .line 1731
    move-result v4

    .line 1732
    if-eqz v4, :cond_5d

    .line 1733
    .line 1734
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 1735
    .line 1736
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 1737
    .line 1738
    .line 1739
    move-result-object v4

    .line 1740
    if-eqz v4, :cond_5b

    .line 1741
    .line 1742
    invoke-virtual {v4}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    .line 1743
    .line 1744
    .line 1745
    move-result v7

    .line 1746
    if-eqz v7, :cond_5c

    .line 1747
    .line 1748
    :cond_5b
    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    .line 1749
    .line 1750
    if-eqz v7, :cond_5d

    .line 1751
    .line 1752
    invoke-virtual {v4}, Lcom/android/server/wm/TaskDisplayArea;->isMultiSplitActive()Z

    .line 1753
    .line 1754
    .line 1755
    move-result v4

    .line 1756
    if-nez v4, :cond_5d

    .line 1757
    .line 1758
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 1759
    .line 1760
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->getStageType()I

    .line 1761
    .line 1762
    .line 1763
    move-result v4

    .line 1764
    const/4 v7, 0x4

    .line 1765
    if-ne v4, v7, :cond_5d

    .line 1766
    .line 1767
    :cond_5c
    iget-object v4, v11, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 1768
    .line 1769
    const/4 v7, 0x1

    .line 1770
    invoke-virtual {v4, v7}, Landroid/content/Intent;->setAiKeyAppLaunch(Z)V

    .line 1771
    .line 1772
    .line 1773
    goto :goto_26

    .line 1774
    :cond_5d
    const/4 v7, 0x1

    .line 1775
    :goto_26
    if-eqz v13, :cond_5e

    .line 1776
    .line 1777
    const/4 v4, 0x0

    .line 1778
    goto :goto_27

    .line 1779
    :cond_5e
    invoke-virtual {v5, v7, v7}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 1780
    .line 1781
    .line 1782
    move-result-object v4

    .line 1783
    :goto_27
    if-eqz v4, :cond_63

    .line 1784
    .line 1785
    iget v7, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    .line 1786
    .line 1787
    const/4 v9, 0x3

    .line 1788
    if-ne v9, v7, :cond_5f

    .line 1789
    .line 1790
    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 1791
    .line 1792
    if-eqz v7, :cond_5f

    .line 1793
    .line 1794
    iget-object v7, v7, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 1795
    .line 1796
    if-ne v5, v7, :cond_5f

    .line 1797
    .line 1798
    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 1799
    .line 1800
    iget-object v9, v0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 1801
    .line 1802
    iget-object v14, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1803
    .line 1804
    iget-object v14, v14, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 1805
    .line 1806
    const/4 v15, 0x0

    .line 1807
    invoke-virtual {v7, v9, v14, v15}, Lcom/android/server/wm/RootWindowContainer;->findActivity(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Z)Lcom/android/server/wm/ActivityRecord;

    .line 1808
    .line 1809
    .line 1810
    move-result-object v7

    .line 1811
    if-eqz v7, :cond_5f

    .line 1812
    .line 1813
    iget-object v9, v7, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 1814
    .line 1815
    if-eq v9, v5, :cond_5f

    .line 1816
    .line 1817
    const-string v9, "Removes redundant singleInstance"

    .line 1818
    .line 1819
    invoke-virtual {v7, v9}, Lcom/android/server/wm/ActivityRecord;->destroyIfPossible(Ljava/lang/String;)Z

    .line 1820
    .line 1821
    .line 1822
    :cond_5f
    iget-object v7, v4, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 1823
    .line 1824
    invoke-virtual {v7, v4}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 1825
    .line 1826
    .line 1827
    iget-boolean v7, v0, Lcom/android/server/wm/ActivityStarter;->mTransientLaunch:Z

    .line 1828
    .line 1829
    if-nez v7, :cond_60

    .line 1830
    .line 1831
    goto :goto_28

    .line 1832
    :cond_60
    iget-object v7, v4, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 1833
    .line 1834
    invoke-virtual {v7}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    .line 1835
    .line 1836
    .line 1837
    move-result v9

    .line 1838
    if-eqz v9, :cond_62

    .line 1839
    .line 1840
    iget-object v9, v7, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 1841
    .line 1842
    if-eqz v9, :cond_61

    .line 1843
    .line 1844
    invoke-virtual {v9, v4}, Lcom/android/server/wm/Transition;->isTransientLaunch(Lcom/android/server/wm/ActivityRecord;)Z

    .line 1845
    .line 1846
    .line 1847
    move-result v9

    .line 1848
    if-eqz v9, :cond_61

    .line 1849
    .line 1850
    goto :goto_28

    .line 1851
    :cond_61
    iget-object v9, v0, Lcom/android/server/wm/ActivityStarter;->mPriorAboveTask:Lcom/android/server/wm/Task;

    .line 1852
    .line 1853
    invoke-virtual {v7, v9, v4}, Lcom/android/server/wm/TransitionController;->setTransientLaunch(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V

    .line 1854
    .line 1855
    .line 1856
    :cond_62
    :goto_28
    move-object/from16 p3, p0

    .line 1857
    .line 1858
    move-object/from16 p4, v5

    .line 1859
    .line 1860
    move-object/from16 p5, v4

    .line 1861
    .line 1862
    move-object/from16 p6, v3

    .line 1863
    .line 1864
    move-object/from16 p7, p10

    .line 1865
    .line 1866
    move-object/from16 p8, p9

    .line 1867
    .line 1868
    invoke-virtual/range {p3 .. p8}, Lcom/android/server/wm/ActivityStarter;->recycleTask(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;)I

    .line 1869
    .line 1870
    .line 1871
    move-result v3

    .line 1872
    if-eqz v3, :cond_64

    .line 1873
    .line 1874
    return v3

    .line 1875
    :cond_63
    const/4 v3, 0x1

    .line 1876
    iput-boolean v3, v0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 1877
    .line 1878
    :cond_64
    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 1879
    .line 1880
    invoke-virtual {v3}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedRootTask()Lcom/android/server/wm/Task;

    .line 1881
    .line 1882
    .line 1883
    move-result-object v3

    .line 1884
    move-object/from16 v4, p10

    .line 1885
    .line 1886
    if-eqz v3, :cond_65

    .line 1887
    .line 1888
    invoke-virtual {v0, v3, v4}, Lcom/android/server/wm/ActivityStarter;->deliverToCurrentTopIfNeeded(Lcom/android/server/wm/Task;Lcom/android/server/uri/NeededUriGrants;)I

    .line 1889
    .line 1890
    .line 1891
    move-result v7

    .line 1892
    if-eqz v7, :cond_65

    .line 1893
    .line 1894
    return v7

    .line 1895
    :cond_65
    if-eqz v13, :cond_66

    .line 1896
    .line 1897
    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1898
    .line 1899
    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    .line 1900
    .line 1901
    iget-object v9, v0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 1902
    .line 1903
    iget-object v9, v9, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1904
    .line 1905
    iget v9, v9, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 1906
    .line 1907
    iget-object v9, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 1908
    .line 1909
    iget-object v9, v9, Lcom/android/server/wm/ActivityStarter$Request;->intentGrants:Lcom/android/server/uri/NeededUriGrants;

    .line 1910
    .line 1911
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1912
    .line 1913
    .line 1914
    :cond_66
    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 1915
    .line 1916
    if-nez v7, :cond_67

    .line 1917
    .line 1918
    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1919
    .line 1920
    iget v9, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 1921
    .line 1922
    iget-object v14, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 1923
    .line 1924
    invoke-virtual {v0, v7, v9, v5, v14}, Lcom/android/server/wm/ActivityStarter;->getOrCreateRootTask(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/Task;Landroid/app/ActivityOptions;)Lcom/android/server/wm/Task;

    .line 1925
    .line 1926
    .line 1927
    move-result-object v7

    .line 1928
    iput-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 1929
    .line 1930
    :cond_67
    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 1931
    .line 1932
    invoke-virtual {v7}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 1933
    .line 1934
    .line 1935
    move-result v7

    .line 1936
    if-eqz v7, :cond_68

    .line 1937
    .line 1938
    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 1939
    .line 1940
    if-eqz v7, :cond_68

    .line 1941
    .line 1942
    invoke-virtual {v7}, Landroid/app/ActivityOptions;->isForceLaunchTaskOnHome()Z

    .line 1943
    .line 1944
    .line 1945
    move-result v7

    .line 1946
    if-eqz v7, :cond_68

    .line 1947
    .line 1948
    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 1949
    .line 1950
    const/4 v9, 0x1

    .line 1951
    iput-boolean v9, v7, Lcom/android/server/wm/Task;->mLaunchTaskOnHome:Z

    .line 1952
    .line 1953
    :cond_68
    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_MODE:Z

    .line 1954
    .line 1955
    if-eqz v7, :cond_6b

    .line 1956
    .line 1957
    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 1958
    .line 1959
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 1960
    .line 1961
    .line 1962
    move-result-object v7

    .line 1963
    if-eqz v7, :cond_69

    .line 1964
    .line 1965
    iget-object v7, v7, Lcom/android/server/wm/TaskDisplayArea;->mRootSideStageTask:Lcom/android/server/wm/Task;

    .line 1966
    .line 1967
    goto :goto_29

    .line 1968
    :cond_69
    const/4 v7, 0x0

    .line 1969
    :goto_29
    if-eqz v7, :cond_6b

    .line 1970
    .line 1971
    const/4 v9, 0x0

    .line 1972
    const/4 v14, 0x1

    .line 1973
    invoke-virtual {v7, v14, v9}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 1974
    .line 1975
    .line 1976
    move-result-object v15

    .line 1977
    if-eqz v15, :cond_6b

    .line 1978
    .line 1979
    invoke-virtual {v7, v14, v9}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 1980
    .line 1981
    .line 1982
    move-result-object v15

    .line 1983
    iget-boolean v9, v15, Lcom/android/server/wm/ActivityRecord;->mIsFlexPanel:Z

    .line 1984
    .line 1985
    if-eqz v9, :cond_6b

    .line 1986
    .line 1987
    iget-object v9, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 1988
    .line 1989
    invoke-virtual {v9}, Lcom/android/server/wm/ConfigurationContainer;->getStageType()I

    .line 1990
    .line 1991
    .line 1992
    move-result v9

    .line 1993
    if-eq v9, v2, :cond_6a

    .line 1994
    .line 1995
    iget-object v9, v0, Lcom/android/server/wm/ActivityStarter;->mTargetTask:Lcom/android/server/wm/Task;

    .line 1996
    .line 1997
    if-eqz v9, :cond_6b

    .line 1998
    .line 1999
    invoke-virtual {v9}, Lcom/android/server/wm/ConfigurationContainer;->getStageType()I

    .line 2000
    .line 2001
    .line 2002
    move-result v9

    .line 2003
    if-ne v9, v2, :cond_6b

    .line 2004
    .line 2005
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mTargetTask:Lcom/android/server/wm/Task;

    .line 2006
    .line 2007
    const/4 v9, 0x0

    .line 2008
    const/4 v14, 0x1

    .line 2009
    invoke-virtual {v7, v14, v9}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 2010
    .line 2011
    .line 2012
    move-result-object v7

    .line 2013
    iget-object v7, v7, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 2014
    .line 2015
    invoke-virtual {v2, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 2016
    .line 2017
    .line 2018
    move-result v2

    .line 2019
    if-nez v2, :cond_6b

    .line 2020
    .line 2021
    :cond_6a
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2022
    .line 2023
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    .line 2024
    .line 2025
    const-string v7, "flex_panel_finish"

    .line 2026
    .line 2027
    const/4 v9, 0x0

    .line 2028
    invoke-virtual {v2, v9, v7, v9}, Lcom/android/server/wm/ChangeTransitionController;->requestDisplayChangeTransition(ILjava/lang/String;Z)V

    .line 2029
    .line 2030
    .line 2031
    :cond_6b
    iget v2, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 2032
    .line 2033
    and-int/lit16 v2, v2, 0x1000

    .line 2034
    .line 2035
    if-eqz v2, :cond_6c

    .line 2036
    .line 2037
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 2038
    .line 2039
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 2040
    .line 2041
    .line 2042
    move-result-object v2

    .line 2043
    if-eqz v2, :cond_6c

    .line 2044
    .line 2045
    invoke-virtual {v2}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    .line 2046
    .line 2047
    .line 2048
    move-result v7

    .line 2049
    if-nez v7, :cond_6c

    .line 2050
    .line 2051
    iget-object v2, v2, Lcom/android/server/wm/TaskDisplayArea;->mRootSideStageTask:Lcom/android/server/wm/Task;

    .line 2052
    .line 2053
    if-eqz v2, :cond_6c

    .line 2054
    .line 2055
    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 2056
    .line 2057
    invoke-virtual {v2, v7}, Lcom/android/server/wm/WindowContainer;->hasChild(Lcom/android/server/wm/WindowContainer;)Z

    .line 2058
    .line 2059
    .line 2060
    move-result v2

    .line 2061
    if-eqz v2, :cond_6c

    .line 2062
    .line 2063
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2064
    .line 2065
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 2066
    .line 2067
    iget-object v2, v2, Lcom/android/server/wm/WindowOrganizerController;->mEnterSplitWithSingleStage:Ljava/util/HashSet;

    .line 2068
    .line 2069
    const-string v7, "adjacent"

    .line 2070
    .line 2071
    invoke-virtual {v2, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2072
    .line 2073
    .line 2074
    :cond_6c
    if-eqz v13, :cond_71

    .line 2075
    .line 2076
    iget-boolean v2, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    .line 2077
    .line 2078
    if-eqz v2, :cond_6d

    .line 2079
    .line 2080
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2081
    .line 2082
    if-eqz v2, :cond_6d

    .line 2083
    .line 2084
    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 2085
    .line 2086
    goto :goto_2a

    .line 2087
    :cond_6d
    const/4 v2, 0x0

    .line 2088
    :goto_2a
    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityStarter;->setNewTask(Lcom/android/server/wm/Task;)V

    .line 2089
    .line 2090
    .line 2091
    if-eqz v12, :cond_6e

    .line 2092
    .line 2093
    iget-boolean v2, v12, Lcom/android/server/wm/ActivityRecord;->mIsAliasActivity:Z

    .line 2094
    .line 2095
    if-nez v2, :cond_6f

    .line 2096
    .line 2097
    :cond_6e
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2098
    .line 2099
    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 2100
    .line 2101
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 2102
    .line 2103
    if-eqz v2, :cond_70

    .line 2104
    .line 2105
    const-string v7, "com.samsung.android.multiwindow.activity.alias.targetactivity"

    .line 2106
    .line 2107
    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 2108
    .line 2109
    .line 2110
    move-result-object v2

    .line 2111
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2112
    .line 2113
    .line 2114
    move-result v2

    .line 2115
    if-nez v2, :cond_70

    .line 2116
    .line 2117
    :cond_6f
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2118
    .line 2119
    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 2120
    .line 2121
    const/4 v7, 0x1

    .line 2122
    iput-boolean v7, v2, Lcom/android/server/wm/Task;->mIsAliasManaged:Z

    .line 2123
    .line 2124
    :cond_70
    const/4 v7, 0x0

    .line 2125
    goto :goto_2c

    .line 2126
    :cond_71
    iget-boolean v2, v0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 2127
    .line 2128
    if-eqz v2, :cond_70

    .line 2129
    .line 2130
    const-string v2, "adding to task"

    .line 2131
    .line 2132
    invoke-virtual {v0, v2, v5}, Lcom/android/server/wm/ActivityStarter;->addOrReparentStartingActivity(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    .line 2133
    .line 2134
    .line 2135
    iget v2, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 2136
    .line 2137
    const v7, 0x10008000

    .line 2138
    .line 2139
    .line 2140
    and-int/2addr v2, v7

    .line 2141
    if-ne v2, v7, :cond_72

    .line 2142
    .line 2143
    const/4 v2, 0x1

    .line 2144
    goto :goto_2b

    .line 2145
    :cond_72
    const/4 v2, 0x0

    .line 2146
    :goto_2b
    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    .line 2147
    .line 2148
    if-eqz v7, :cond_70

    .line 2149
    .line 2150
    if-eqz v2, :cond_70

    .line 2151
    .line 2152
    if-eqz v12, :cond_70

    .line 2153
    .line 2154
    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    .line 2155
    .line 2156
    .line 2157
    move-result v2

    .line 2158
    if-eqz v2, :cond_70

    .line 2159
    .line 2160
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 2161
    .line 2162
    .line 2163
    move-result v2

    .line 2164
    if-nez v2, :cond_70

    .line 2165
    .line 2166
    const/4 v7, 0x0

    .line 2167
    invoke-virtual {v5, v7}, Lcom/android/server/wm/TaskFragment;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    .line 2168
    .line 2169
    .line 2170
    move-result v2

    .line 2171
    if-eqz v2, :cond_73

    .line 2172
    .line 2173
    new-instance v2, Ljava/lang/StringBuilder;

    .line 2174
    .line 2175
    const-string/jumbo v9, "startActivityInner: ensure visible earlier for "

    .line 2176
    .line 2177
    .line 2178
    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2179
    .line 2180
    .line 2181
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2182
    .line 2183
    .line 2184
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2185
    .line 2186
    .line 2187
    move-result-object v2

    .line 2188
    invoke-static {v10, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2189
    .line 2190
    .line 2191
    const/4 v2, 0x1

    .line 2192
    invoke-virtual {v5, v2, v7}, Lcom/android/server/wm/Task;->ensureActivitiesVisible(ZLcom/android/server/wm/ActivityRecord;)V

    .line 2193
    .line 2194
    .line 2195
    :cond_73
    :goto_2c
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2196
    .line 2197
    if-eqz v2, :cond_76

    .line 2198
    .line 2199
    iget-boolean v9, v0, Lcom/android/server/wm/ActivityStarter;->mTransientLaunch:Z

    .line 2200
    .line 2201
    if-nez v9, :cond_74

    .line 2202
    .line 2203
    goto :goto_2d

    .line 2204
    :cond_74
    iget-object v9, v2, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 2205
    .line 2206
    invoke-virtual {v9}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    .line 2207
    .line 2208
    .line 2209
    move-result v10

    .line 2210
    if-eqz v10, :cond_76

    .line 2211
    .line 2212
    iget-object v10, v9, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 2213
    .line 2214
    if-eqz v10, :cond_75

    .line 2215
    .line 2216
    invoke-virtual {v10, v2}, Lcom/android/server/wm/Transition;->isTransientLaunch(Lcom/android/server/wm/ActivityRecord;)Z

    .line 2217
    .line 2218
    .line 2219
    move-result v10

    .line 2220
    if-eqz v10, :cond_75

    .line 2221
    .line 2222
    goto :goto_2d

    .line 2223
    :cond_75
    iget-object v10, v0, Lcom/android/server/wm/ActivityStarter;->mPriorAboveTask:Lcom/android/server/wm/Task;

    .line 2224
    .line 2225
    invoke-virtual {v9, v10, v2}, Lcom/android/server/wm/TransitionController;->setTransientLaunch(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V

    .line 2226
    .line 2227
    .line 2228
    :cond_76
    :goto_2d
    iget-boolean v2, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    .line 2229
    .line 2230
    if-eqz v2, :cond_78

    .line 2231
    .line 2232
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->avoidMoveToFront()Z

    .line 2233
    .line 2234
    .line 2235
    move-result v2

    .line 2236
    if-nez v2, :cond_77

    .line 2237
    .line 2238
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 2239
    .line 2240
    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    .line 2241
    .line 2242
    .line 2243
    move-result-object v2

    .line 2244
    const-string/jumbo v9, "reuseOrNewTask"

    .line 2245
    .line 2246
    .line 2247
    invoke-virtual {v2, v9, v5}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    .line 2248
    .line 2249
    .line 2250
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 2251
    .line 2252
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->isTopRootTaskInDisplayArea()Z

    .line 2253
    .line 2254
    .line 2255
    move-result v2

    .line 2256
    if-nez v2, :cond_78

    .line 2257
    .line 2258
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2259
    .line 2260
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mActiveDreamComponent:Landroid/content/ComponentName;

    .line 2261
    .line 2262
    if-eqz v2, :cond_78

    .line 2263
    .line 2264
    if-nez v6, :cond_78

    .line 2265
    .line 2266
    const/4 v2, 0x1

    .line 2267
    iput-boolean v2, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    .line 2268
    .line 2269
    iput-boolean v2, v11, Lcom/android/server/wm/WindowContainer;->mLaunchTaskBehind:Z

    .line 2270
    .line 2271
    goto :goto_2e

    .line 2272
    :cond_77
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->logPIOnlyCreatorAllowsBAL()V

    .line 2273
    .line 2274
    .line 2275
    :cond_78
    :goto_2e
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2276
    .line 2277
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 2278
    .line 2279
    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2280
    .line 2281
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/uri/UriPermissionOwner;

    .line 2282
    .line 2283
    .line 2284
    move-result-object v5

    .line 2285
    check-cast v2, Lcom/android/server/uri/UriGrantsManagerService$LocalService;

    .line 2286
    .line 2287
    invoke-virtual {v2, v4, v5}, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->grantUriPermissionUncheckedFromIntent(Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/uri/UriPermissionOwner;)V

    .line 2288
    .line 2289
    .line 2290
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2291
    .line 2292
    iget-object v4, v2, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    .line 2293
    .line 2294
    if-eqz v4, :cond_79

    .line 2295
    .line 2296
    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 2297
    .line 2298
    if-eqz v4, :cond_79

    .line 2299
    .line 2300
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2301
    .line 2302
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    .line 2303
    .line 2304
    .line 2305
    move-result-object v2

    .line 2306
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2307
    .line 2308
    iget-object v5, v4, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    .line 2309
    .line 2310
    iget-object v5, v5, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 2311
    .line 2312
    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2313
    .line 2314
    const-wide/16 v9, 0x0

    .line 2315
    .line 2316
    iget v4, v4, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 2317
    .line 2318
    invoke-virtual {v2, v5, v9, v10, v4}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    .line 2319
    .line 2320
    .line 2321
    move-result v27

    .line 2322
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2323
    .line 2324
    iget v5, v4, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 2325
    .line 2326
    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 2327
    .line 2328
    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 2329
    .line 2330
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2331
    .line 2332
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2333
    .line 2334
    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    .line 2335
    .line 2336
    .line 2337
    move-result v26

    .line 2338
    move-object/from16 v23, v2

    .line 2339
    .line 2340
    check-cast v23, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 2341
    .line 2342
    const/16 v28, 0x1

    .line 2343
    .line 2344
    const/16 v29, 0x0

    .line 2345
    .line 2346
    move/from16 v24, v5

    .line 2347
    .line 2348
    move-object/from16 v25, v6

    .line 2349
    .line 2350
    invoke-virtual/range {v23 .. v29}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->grantImplicitAccess(ILandroid/content/Intent;IIZZ)V

    .line 2351
    .line 2352
    .line 2353
    goto :goto_2f

    .line 2354
    :cond_79
    iget-boolean v2, v2, Lcom/android/server/wm/ActivityRecord;->mShareIdentity:Z

    .line 2355
    .line 2356
    if-eqz v2, :cond_7a

    .line 2357
    .line 2358
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2359
    .line 2360
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    .line 2361
    .line 2362
    .line 2363
    move-result-object v2

    .line 2364
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2365
    .line 2366
    iget v5, v4, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 2367
    .line 2368
    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 2369
    .line 2370
    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 2371
    .line 2372
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2373
    .line 2374
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2375
    .line 2376
    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    .line 2377
    .line 2378
    .line 2379
    move-result v26

    .line 2380
    iget v4, v11, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    .line 2381
    .line 2382
    move-object/from16 v23, v2

    .line 2383
    .line 2384
    check-cast v23, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 2385
    .line 2386
    const/16 v28, 0x1

    .line 2387
    .line 2388
    const/16 v29, 0x0

    .line 2389
    .line 2390
    move/from16 v24, v5

    .line 2391
    .line 2392
    move-object/from16 v25, v6

    .line 2393
    .line 2394
    move/from16 v27, v4

    .line 2395
    .line 2396
    invoke-virtual/range {v23 .. v29}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->grantImplicitAccess(ILandroid/content/Intent;IIZZ)V

    .line 2397
    .line 2398
    .line 2399
    :cond_7a
    :goto_2f
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2400
    .line 2401
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    .line 2402
    .line 2403
    .line 2404
    move-result-object v9

    .line 2405
    if-eqz v13, :cond_7b

    .line 2406
    .line 2407
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2408
    .line 2409
    iget v2, v2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 2410
    .line 2411
    iget v4, v9, Lcom/android/server/wm/Task;->mTaskId:I

    .line 2412
    .line 2413
    invoke-virtual {v9}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    .line 2414
    .line 2415
    .line 2416
    move-result-object v5

    .line 2417
    iget v5, v5, Lcom/android/server/wm/Task;->mTaskId:I

    .line 2418
    .line 2419
    invoke-virtual {v9}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    .line 2420
    .line 2421
    .line 2422
    move-result v6

    .line 2423
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2424
    .line 2425
    .line 2426
    move-result-object v2

    .line 2427
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2428
    .line 2429
    .line 2430
    move-result-object v4

    .line 2431
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2432
    .line 2433
    .line 2434
    move-result-object v5

    .line 2435
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2436
    .line 2437
    .line 2438
    move-result-object v6

    .line 2439
    filled-new-array {v2, v4, v5, v6}, [Ljava/lang/Object;

    .line 2440
    .line 2441
    .line 2442
    move-result-object v2

    .line 2443
    const/16 v4, 0x7534

    .line 2444
    .line 2445
    invoke-static {v4, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2446
    .line 2447
    .line 2448
    :cond_7b
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2449
    .line 2450
    const/16 v4, 0x7535

    .line 2451
    .line 2452
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->getStartInfo()Ljava/lang/String;

    .line 2453
    .line 2454
    .line 2455
    move-result-object v5

    .line 2456
    invoke-virtual {v2, v4, v9, v5}, Lcom/android/server/wm/ActivityRecord;->logStartActivity(ILcom/android/server/wm/Task;Ljava/lang/String;)V

    .line 2457
    .line 2458
    .line 2459
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2460
    .line 2461
    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 2462
    .line 2463
    invoke-virtual {v2}, Landroid/content/Intent;->getLaunchOverTargetTaskId()I

    .line 2464
    .line 2465
    .line 2466
    move-result v2

    .line 2467
    const/4 v4, -0x1

    .line 2468
    if-eq v2, v4, :cond_7c

    .line 2469
    .line 2470
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2471
    .line 2472
    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 2473
    .line 2474
    const/4 v5, 0x0

    .line 2475
    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->semSetLaunchOverTargetTask(IZ)V

    .line 2476
    .line 2477
    .line 2478
    :cond_7c
    sget-boolean v10, Lcom/samsung/android/rune/CoreRune;->FW_APPLOCK:Z

    .line 2479
    .line 2480
    if-eqz v10, :cond_7d

    .line 2481
    .line 2482
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2483
    .line 2484
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    .line 2485
    .line 2486
    if-eqz v2, :cond_7d

    .line 2487
    .line 2488
    iget-boolean v4, v0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 2489
    .line 2490
    if-eqz v4, :cond_7d

    .line 2491
    .line 2492
    iget-object v4, v11, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 2493
    .line 2494
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 2495
    .line 2496
    invoke-virtual {v2, v4}, Lcom/android/internal/app/AppLockPolicy;->isActivityInExceptionList(Ljava/lang/String;)Z

    .line 2497
    .line 2498
    .line 2499
    move-result v2

    .line 2500
    if-eqz v2, :cond_7d

    .line 2501
    .line 2502
    const/4 v14, 0x1

    .line 2503
    goto :goto_30

    .line 2504
    :cond_7d
    const/4 v14, 0x0

    .line 2505
    :goto_30
    if-eqz v10, :cond_7e

    .line 2506
    .line 2507
    if-eqz v14, :cond_7e

    .line 2508
    .line 2509
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    .line 2510
    .line 2511
    .line 2512
    move-result-object v2

    .line 2513
    invoke-virtual {v2, v11}, Lcom/android/server/wm/WindowContainer;->getActivityBelow(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    .line 2514
    .line 2515
    .line 2516
    move-result-object v2

    .line 2517
    if-eqz v2, :cond_7e

    .line 2518
    .line 2519
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->isAlwaysOnTop()Z

    .line 2520
    .line 2521
    .line 2522
    move-result v4

    .line 2523
    if-eqz v4, :cond_7e

    .line 2524
    .line 2525
    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 2526
    .line 2527
    const-string v4, "com.samsung.android.applock"

    .line 2528
    .line 2529
    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 2530
    .line 2531
    .line 2532
    move-result v2

    .line 2533
    if-eqz v2, :cond_7e

    .line 2534
    .line 2535
    const/4 v6, 0x1

    .line 2536
    iput-boolean v6, v11, Lcom/android/server/wm/ActivityRecord;->mIsAppLockExceptionActivity:Z

    .line 2537
    .line 2538
    goto :goto_31

    .line 2539
    :cond_7e
    const/4 v6, 0x1

    .line 2540
    :goto_31
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2541
    .line 2542
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 2543
    .line 2544
    .line 2545
    move-result-object v2

    .line 2546
    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->clearLastPausedActivity()V

    .line 2547
    .line 2548
    .line 2549
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 2550
    .line 2551
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2552
    .line 2553
    const/4 v5, 0x0

    .line 2554
    invoke-virtual {v2, v5, v4}, Lcom/android/server/wm/RootWindowContainer;->startPowerModeLaunchIfNeeded(ZLcom/android/server/wm/ActivityRecord;)V

    .line 2555
    .line 2556
    .line 2557
    if-eq v9, v1, :cond_7f

    .line 2558
    .line 2559
    move v5, v6

    .line 2560
    goto :goto_32

    .line 2561
    :cond_7f
    const/4 v5, 0x0

    .line 2562
    :goto_32
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 2563
    .line 2564
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2565
    .line 2566
    iget-object v15, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 2567
    .line 2568
    move v4, v13

    .line 2569
    move v8, v6

    .line 2570
    move-object v6, v15

    .line 2571
    move-object v15, v7

    .line 2572
    move-object/from16 v7, p2

    .line 2573
    .line 2574
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wm/Task;->startActivityLocked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;ZZLandroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;)V

    .line 2575
    .line 2576
    .line 2577
    iget-boolean v1, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    .line 2578
    .line 2579
    if-eqz v1, :cond_86

    .line 2580
    .line 2581
    invoke-virtual {v9}, Lcom/android/server/wm/Task;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    .line 2582
    .line 2583
    .line 2584
    move-result-object v1

    .line 2585
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 2586
    .line 2587
    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->isTopActivityFocusable()Z

    .line 2588
    .line 2589
    .line 2590
    move-result v2

    .line 2591
    if-eqz v2, :cond_85

    .line 2592
    .line 2593
    if-eqz v1, :cond_80

    .line 2594
    .line 2595
    iget-boolean v2, v1, Lcom/android/server/wm/ActivityRecord;->mTaskOverlay:Z

    .line 2596
    .line 2597
    if-eqz v2, :cond_80

    .line 2598
    .line 2599
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2600
    .line 2601
    if-eq v2, v1, :cond_80

    .line 2602
    .line 2603
    goto :goto_34

    .line 2604
    :cond_80
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 2605
    .line 2606
    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->isTopActivityFocusable()Z

    .line 2607
    .line 2608
    .line 2609
    move-result v1

    .line 2610
    if-eqz v1, :cond_84

    .line 2611
    .line 2612
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 2613
    .line 2614
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 2615
    .line 2616
    if-eqz v2, :cond_81

    .line 2617
    .line 2618
    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    .line 2619
    .line 2620
    .line 2621
    move-result-object v1

    .line 2622
    if-ne v2, v1, :cond_82

    .line 2623
    .line 2624
    goto :goto_33

    .line 2625
    :cond_81
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2626
    .line 2627
    .line 2628
    :cond_82
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->avoidMoveToFront()Z

    .line 2629
    .line 2630
    .line 2631
    move-result v1

    .line 2632
    if-nez v1, :cond_83

    .line 2633
    .line 2634
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 2635
    .line 2636
    const-string/jumbo v2, "startActivityInner"

    .line 2637
    .line 2638
    .line 2639
    invoke-virtual {v1, v2, v15}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    .line 2640
    .line 2641
    .line 2642
    goto :goto_33

    .line 2643
    :cond_83
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->logPIOnlyCreatorAllowsBAL()V

    .line 2644
    .line 2645
    .line 2646
    :cond_84
    :goto_33
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 2647
    .line 2648
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 2649
    .line 2650
    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2651
    .line 2652
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 2653
    .line 2654
    iget-boolean v5, v0, Lcom/android/server/wm/ActivityStarter;->mTransientLaunch:Z

    .line 2655
    .line 2656
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)Z

    .line 2657
    .line 2658
    .line 2659
    goto :goto_35

    .line 2660
    :cond_85
    :goto_34
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 2661
    .line 2662
    invoke-virtual {v1, v8, v15}, Lcom/android/server/wm/Task;->ensureActivitiesVisible(ZLcom/android/server/wm/ActivityRecord;)V

    .line 2663
    .line 2664
    .line 2665
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 2666
    .line 2667
    iget-object v1, v1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2668
    .line 2669
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    .line 2670
    .line 2671
    .line 2672
    :cond_86
    :goto_35
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 2673
    .line 2674
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2675
    .line 2676
    iget v2, v2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 2677
    .line 2678
    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 2679
    .line 2680
    iget v4, v1, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    .line 2681
    .line 2682
    if-eq v2, v4, :cond_88

    .line 2683
    .line 2684
    if-nez v3, :cond_87

    .line 2685
    .line 2686
    iget-object v3, v1, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 2687
    .line 2688
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 2689
    .line 2690
    .line 2691
    move-result-object v3

    .line 2692
    const/4 v4, 0x0

    .line 2693
    invoke-virtual {v3, v4}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateRootHomeTask(Z)Lcom/android/server/wm/Task;

    .line 2694
    .line 2695
    .line 2696
    move-result-object v3

    .line 2697
    :cond_87
    iget-object v1, v1, Lcom/android/server/wm/RootWindowContainer;->mUserRootTaskInFront:Landroid/util/SparseIntArray;

    .line 2698
    .line 2699
    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    .line 2700
    .line 2701
    .line 2702
    move-result-object v3

    .line 2703
    iget v3, v3, Lcom/android/server/wm/Task;->mTaskId:I

    .line 2704
    .line 2705
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2706
    .line 2707
    .line 2708
    :cond_88
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 2709
    .line 2710
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 2711
    .line 2712
    invoke-virtual {v1, v9}, Lcom/android/server/wm/RecentTasks;->add(Lcom/android/server/wm/Task;)V

    .line 2713
    .line 2714
    .line 2715
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 2716
    .line 2717
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 2718
    .line 2719
    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 2720
    .line 2721
    const/4 v4, 0x0

    .line 2722
    invoke-virtual {v1, v9, v2, v3, v4}, Lcom/android/server/wm/ActivityTaskSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/wm/Task;Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/Task;Z)V

    .line 2723
    .line 2724
    .line 2725
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 2726
    .line 2727
    if-eqz v1, :cond_89

    .line 2728
    .line 2729
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->isLaunchIntoPip()Z

    .line 2730
    .line 2731
    .line 2732
    move-result v1

    .line 2733
    if-eqz v1, :cond_89

    .line 2734
    .line 2735
    if-eqz v12, :cond_89

    .line 2736
    .line 2737
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    .line 2738
    .line 2739
    .line 2740
    move-result-object v1

    .line 2741
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2742
    .line 2743
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    .line 2744
    .line 2745
    .line 2746
    move-result-object v2

    .line 2747
    if-ne v1, v2, :cond_89

    .line 2748
    .line 2749
    invoke-virtual/range {p9 .. p9}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allows()Z

    .line 2750
    .line 2751
    .line 2752
    move-result v1

    .line 2753
    if-eqz v1, :cond_89

    .line 2754
    .line 2755
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2756
    .line 2757
    const-string v2, "launch-into-pip"

    .line 2758
    .line 2759
    const/4 v3, 0x0

    .line 2760
    invoke-virtual {v1, v2, v3, v8}, Lcom/android/server/wm/ActivityRecord;->checkEnterPictureInPictureState(Ljava/lang/String;ZZ)Z

    .line 2761
    .line 2762
    .line 2763
    move-result v1

    .line 2764
    if-eqz v1, :cond_89

    .line 2765
    .line 2766
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 2767
    .line 2768
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2769
    .line 2770
    const/4 v3, 0x0

    .line 2771
    const/4 v4, 0x0

    .line 2772
    const-string v5, "launch-into-pip"

    .line 2773
    .line 2774
    move-object/from16 p3, v1

    .line 2775
    .line 2776
    move-object/from16 p4, v2

    .line 2777
    .line 2778
    move-object/from16 p5, p2

    .line 2779
    .line 2780
    move-object/from16 p6, v5

    .line 2781
    .line 2782
    move-object/from16 p7, v4

    .line 2783
    .line 2784
    move-object/from16 p8, v3

    .line 2785
    .line 2786
    invoke-virtual/range {p3 .. p8}, Lcom/android/server/wm/RootWindowContainer;->moveActivityToPinnedRootTask(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;Lcom/android/server/wm/Transition;Landroid/graphics/Rect;)V

    .line 2787
    .line 2788
    .line 2789
    :cond_89
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MT_NEW_DEX_LAUNCH_POLICY:Z

    .line 2790
    .line 2791
    if-eqz v1, :cond_8a

    .line 2792
    .line 2793
    invoke-virtual {v9}, Lcom/android/server/wm/ConfigurationContainer;->isNewDexMode()Z

    .line 2794
    .line 2795
    .line 2796
    move-result v1

    .line 2797
    if-nez v1, :cond_8d

    .line 2798
    .line 2799
    :cond_8a
    if-eqz v12, :cond_8b

    .line 2800
    .line 2801
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 2802
    .line 2803
    .line 2804
    move-result v1

    .line 2805
    if-eqz v1, :cond_8b

    .line 2806
    .line 2807
    move v6, v8

    .line 2808
    goto :goto_36

    .line 2809
    :cond_8b
    const/4 v6, 0x0

    .line 2810
    :goto_36
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2811
    .line 2812
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 2813
    .line 2814
    .line 2815
    move-result v1

    .line 2816
    if-ne v1, v8, :cond_8c

    .line 2817
    .line 2818
    move v1, v8

    .line 2819
    goto :goto_37

    .line 2820
    :cond_8c
    const/4 v1, 0x0

    .line 2821
    :goto_37
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2822
    .line 2823
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->isResizeable()Z

    .line 2824
    .line 2825
    .line 2826
    move-result v2

    .line 2827
    xor-int/2addr v2, v8

    .line 2828
    if-eqz v6, :cond_8d

    .line 2829
    .line 2830
    if-eqz v13, :cond_8d

    .line 2831
    .line 2832
    if-eqz v1, :cond_8d

    .line 2833
    .line 2834
    if-eqz v2, :cond_8d

    .line 2835
    .line 2836
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2837
    .line 2838
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    .line 2839
    .line 2840
    iget-object v2, v1, Lcom/android/server/wm/FreeformController;->mH:Lcom/android/server/wm/FreeformController$H;

    .line 2841
    .line 2842
    const/4 v3, 0x1

    .line 2843
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2844
    .line 2845
    .line 2846
    iget-object v1, v1, Lcom/android/server/wm/FreeformController;->mH:Lcom/android/server/wm/FreeformController$H;

    .line 2847
    .line 2848
    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2849
    .line 2850
    .line 2851
    :cond_8d
    if-eqz v10, :cond_8e

    .line 2852
    .line 2853
    if-eqz v14, :cond_8e

    .line 2854
    .line 2855
    const/4 v1, 0x0

    .line 2856
    iput-boolean v1, v11, Lcom/android/server/wm/ActivityRecord;->mIsAppLockExceptionActivity:Z

    .line 2857
    .line 2858
    goto :goto_38

    .line 2859
    :cond_8e
    const/4 v1, 0x0

    .line 2860
    :goto_38
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 2861
    .line 2862
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskSupervisor;->mBalController:Lcom/android/server/wm/BackgroundActivityStartController;

    .line 2863
    .line 2864
    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2865
    .line 2866
    invoke-virtual {v2, v0}, Lcom/android/server/wm/BackgroundActivityStartController;->onNewActivityLaunched(Lcom/android/server/wm/ActivityRecord;)V

    .line 2867
    .line 2868
    .line 2869
    return v1
.end method

.method public final startActivityUnchecked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ILandroid/app/ActivityOptions;Lcom/android/server/wm/Task;Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;Lcom/android/server/uri/NeededUriGrants;I)I
    .locals 17

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    move-object/from16 v9, p2

    .line 6
    .line 7
    iget-object v0, v8, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->getCollectingTransition()Lcom/android/server/wm/Transition;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->isLaunchAdjacent()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    if-eqz v9, :cond_0

    .line 20
    .line 21
    iget-boolean v2, v9, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 22
    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v2}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-nez v2, :cond_0

    .line 40
    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    iget v2, v1, Lcom/android/server/wm/Transition;->mType:I

    .line 44
    .line 45
    const/4 v3, 0x2

    .line 46
    if-ne v2, v3, :cond_0

    .line 47
    .line 48
    const-string v2, "ActivityTaskManager"

    .line 49
    .line 50
    const-string v3, "Start Adjacent Activity, Collecting Transition is TRANSIT_CLOSE"

    .line 51
    .line 52
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Lcom/android/server/wm/Transition;->abort()V

    .line 56
    .line 57
    .line 58
    :cond_0
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_MODE:Z

    .line 59
    .line 60
    const/4 v10, 0x1

    .line 61
    const/4 v3, 0x0

    .line 62
    if-eqz v2, :cond_9

    .line 63
    .line 64
    iget-object v2, v8, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 65
    .line 66
    if-eqz v2, :cond_9

    .line 67
    .line 68
    const-string v4, "android.intent.action.AUTORUN_FLEX_PANEL"

    .line 69
    .line 70
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-eqz v2, :cond_9

    .line 79
    .line 80
    if-eqz v1, :cond_9

    .line 81
    .line 82
    invoke-virtual {v1}, Lcom/android/server/wm/Transition;->isCollecting()Z

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    if-eqz v2, :cond_9

    .line 87
    .line 88
    iget v2, v1, Lcom/android/server/wm/Transition;->mType:I

    .line 89
    .line 90
    const/4 v4, 0x3

    .line 91
    if-eq v2, v4, :cond_1

    .line 92
    .line 93
    if-ne v2, v10, :cond_9

    .line 94
    .line 95
    :cond_1
    move v2, v3

    .line 96
    :goto_0
    iget-object v5, v1, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    .line 97
    .line 98
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    .line 99
    .line 100
    .line 101
    move-result v5

    .line 102
    if-ge v2, v5, :cond_9

    .line 103
    .line 104
    iget-object v5, v1, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    .line 105
    .line 106
    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    check-cast v5, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 111
    .line 112
    iget-object v6, v5, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 113
    .line 114
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 115
    .line 116
    .line 117
    move-result-object v6

    .line 118
    if-nez v6, :cond_2

    .line 119
    .line 120
    goto :goto_3

    .line 121
    :cond_2
    iget-object v6, v5, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 122
    .line 123
    invoke-virtual {v5, v6}, Lcom/android/server/wm/Transition$ChangeInfo;->getTransitMode(Lcom/android/server/wm/WindowContainer;)I

    .line 124
    .line 125
    .line 126
    move-result v11

    .line 127
    if-eq v11, v10, :cond_3

    .line 128
    .line 129
    invoke-virtual {v5, v6}, Lcom/android/server/wm/Transition$ChangeInfo;->getTransitMode(Lcom/android/server/wm/WindowContainer;)I

    .line 130
    .line 131
    .line 132
    move-result v6

    .line 133
    if-ne v6, v4, :cond_8

    .line 134
    .line 135
    :cond_3
    iget v5, v5, Lcom/android/server/wm/Transition$ChangeInfo;->mWindowingMode:I

    .line 136
    .line 137
    if-ne v5, v10, :cond_8

    .line 138
    .line 139
    move v2, v3

    .line 140
    :goto_1
    iget-object v5, v1, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    .line 141
    .line 142
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    .line 143
    .line 144
    .line 145
    move-result v5

    .line 146
    if-ge v2, v5, :cond_7

    .line 147
    .line 148
    iget-object v5, v1, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    .line 149
    .line 150
    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v5

    .line 154
    check-cast v5, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 155
    .line 156
    iget-object v6, v5, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 157
    .line 158
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 159
    .line 160
    .line 161
    move-result-object v6

    .line 162
    if-nez v6, :cond_4

    .line 163
    .line 164
    goto :goto_2

    .line 165
    :cond_4
    iget-object v6, v5, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 166
    .line 167
    invoke-virtual {v5, v6}, Lcom/android/server/wm/Transition$ChangeInfo;->getTransitMode(Lcom/android/server/wm/WindowContainer;)I

    .line 168
    .line 169
    .line 170
    move-result v11

    .line 171
    if-eq v11, v10, :cond_5

    .line 172
    .line 173
    invoke-virtual {v5, v6}, Lcom/android/server/wm/Transition$ChangeInfo;->getTransitMode(Lcom/android/server/wm/WindowContainer;)I

    .line 174
    .line 175
    .line 176
    move-result v5

    .line 177
    if-ne v5, v4, :cond_6

    .line 178
    .line 179
    :cond_5
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 180
    .line 181
    .line 182
    move-result-object v5

    .line 183
    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHomeOrRecents()Z

    .line 184
    .line 185
    .line 186
    move-result v5

    .line 187
    if-eqz v5, :cond_6

    .line 188
    .line 189
    goto :goto_4

    .line 190
    :cond_6
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 191
    .line 192
    goto :goto_1

    .line 193
    :cond_7
    const-string v2, "ActivityTaskManager"

    .line 194
    .line 195
    new-instance v4, Ljava/lang/StringBuilder;

    .line 196
    .line 197
    const-string/jumbo v5, "transition abort for flex panel, t="

    .line 198
    .line 199
    .line 200
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v4

    .line 210
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    .line 212
    .line 213
    invoke-virtual {v1}, Lcom/android/server/wm/Transition;->abort()V

    .line 214
    .line 215
    .line 216
    goto :goto_4

    .line 217
    :cond_8
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 218
    .line 219
    goto :goto_0

    .line 220
    :cond_9
    :goto_4
    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    .line 221
    .line 222
    .line 223
    move-result v2

    .line 224
    const/4 v4, 0x0

    .line 225
    if-eqz v2, :cond_10

    .line 226
    .line 227
    iget-object v2, v0, Lcom/android/server/wm/TransitionController;->mTransitionPlayers:Ljava/util/ArrayList;

    .line 228
    .line 229
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 230
    .line 231
    .line 232
    move-result v2

    .line 233
    if-eqz v2, :cond_b

    .line 234
    .line 235
    :cond_a
    :goto_5
    move-object v2, v4

    .line 236
    goto :goto_6

    .line 237
    :cond_b
    iget-object v2, v0, Lcom/android/server/wm/TransitionController;->mQueuedTransitions:Ljava/util/ArrayList;

    .line 238
    .line 239
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 240
    .line 241
    .line 242
    move-result v2

    .line 243
    if-nez v2, :cond_c

    .line 244
    .line 245
    goto :goto_5

    .line 246
    :cond_c
    iget-object v2, v0, Lcom/android/server/wm/TransitionController;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    .line 247
    .line 248
    invoke-virtual {v2}, Lcom/android/server/wm/BLASTSyncEngine;->hasActiveSync()Z

    .line 249
    .line 250
    .line 251
    move-result v2

    .line 252
    if-eqz v2, :cond_f

    .line 253
    .line 254
    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    .line 255
    .line 256
    .line 257
    move-result v2

    .line 258
    if-eqz v2, :cond_e

    .line 259
    .line 260
    invoke-virtual {v0, v4}, Lcom/android/server/wm/TransitionController;->canStartCollectingNow(Lcom/android/server/wm/Transition;)Z

    .line 261
    .line 262
    .line 263
    move-result v2

    .line 264
    if-eqz v2, :cond_a

    .line 265
    .line 266
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_MIN_enabled:[Z

    .line 267
    .line 268
    aget-boolean v2, v2, v10

    .line 269
    .line 270
    if-eqz v2, :cond_d

    .line 271
    .line 272
    iget-object v2, v0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 273
    .line 274
    iget v2, v2, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 275
    .line 276
    int-to-long v5, v2

    .line 277
    sget-object v11, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS_MIN:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 278
    .line 279
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 280
    .line 281
    .line 282
    move-result-object v2

    .line 283
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object v16

    .line 287
    const-string v15, "Moving #%d from collecting to waiting."

    .line 288
    .line 289
    const-wide v12, -0x165e91cdd667c4f0L    # -6.67107460160601E200

    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    const/4 v14, 0x1

    .line 295
    invoke-static/range {v11 .. v16}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 296
    .line 297
    .line 298
    :cond_d
    iget-object v2, v0, Lcom/android/server/wm/TransitionController;->mWaitingTransitions:Ljava/util/ArrayList;

    .line 299
    .line 300
    iget-object v5, v0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 301
    .line 302
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    .line 304
    .line 305
    iput-object v4, v0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 306
    .line 307
    new-instance v2, Lcom/android/server/wm/Transition;

    .line 308
    .line 309
    iget-object v5, v0, Lcom/android/server/wm/TransitionController;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    .line 310
    .line 311
    invoke-direct {v2, v10, v3, v0, v5}, Lcom/android/server/wm/Transition;-><init>(IILcom/android/server/wm/TransitionController;Lcom/android/server/wm/BLASTSyncEngine;)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {v0, v2}, Lcom/android/server/wm/TransitionController;->moveToCollecting(Lcom/android/server/wm/Transition;)V

    .line 315
    .line 316
    .line 317
    goto :goto_6

    .line 318
    :cond_e
    const-string v2, "TransitionController"

    .line 319
    .line 320
    const-string v5, "Ongoing Sync outside of transition."

    .line 321
    .line 322
    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    .line 324
    .line 325
    goto :goto_5

    .line 326
    :cond_f
    new-instance v2, Lcom/android/server/wm/Transition;

    .line 327
    .line 328
    iget-object v5, v0, Lcom/android/server/wm/TransitionController;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    .line 329
    .line 330
    invoke-direct {v2, v10, v3, v0, v5}, Lcom/android/server/wm/Transition;-><init>(IILcom/android/server/wm/TransitionController;Lcom/android/server/wm/BLASTSyncEngine;)V

    .line 331
    .line 332
    .line 333
    invoke-virtual {v0, v2}, Lcom/android/server/wm/TransitionController;->moveToCollecting(Lcom/android/server/wm/Transition;)V

    .line 334
    .line 335
    .line 336
    :goto_6
    move-object v5, v2

    .line 337
    goto :goto_7

    .line 338
    :cond_10
    move-object v5, v4

    .line 339
    :goto_7
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_MODE:Z

    .line 340
    .line 341
    if-eqz v2, :cond_14

    .line 342
    .line 343
    iget-boolean v2, v8, Lcom/android/server/wm/ActivityRecord;->mIsFlexPanel:Z

    .line 344
    .line 345
    if-eqz v2, :cond_14

    .line 346
    .line 347
    if-nez v5, :cond_14

    .line 348
    .line 349
    const-string v0, "ActivityTaskManager"

    .line 350
    .line 351
    new-instance v2, Ljava/lang/StringBuilder;

    .line 352
    .line 353
    const-string v5, "if the flex panel does not run with the new transition, cancel start activity, transition="

    .line 354
    .line 355
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v1

    .line 365
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    .line 367
    .line 368
    iget-object v0, v7, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 369
    .line 370
    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 371
    .line 372
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 373
    .line 374
    .line 375
    move-result-object v0

    .line 376
    if-eqz v0, :cond_11

    .line 377
    .line 378
    invoke-virtual {v0, v10, v3}, Lcom/android/server/wm/TaskDisplayArea;->getRootTask(II)Lcom/android/server/wm/Task;

    .line 379
    .line 380
    .line 381
    move-result-object v0

    .line 382
    goto :goto_8

    .line 383
    :cond_11
    move-object v0, v4

    .line 384
    :goto_8
    if-eqz v0, :cond_12

    .line 385
    .line 386
    invoke-virtual {v0, v10, v3}, Lcom/android/server/wm/Task;->getTopVisibleActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 387
    .line 388
    .line 389
    move-result-object v4

    .line 390
    :cond_12
    if-eqz v4, :cond_13

    .line 391
    .line 392
    const-string v1, "ActivityTaskManager"

    .line 393
    .line 394
    new-instance v2, Ljava/lang/StringBuilder;

    .line 395
    .line 396
    const-string v3, "flex panel cancel Task="

    .line 397
    .line 398
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 399
    .line 400
    .line 401
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 402
    .line 403
    .line 404
    const-string v0, " topActivity="

    .line 405
    .line 406
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    .line 408
    .line 409
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 410
    .line 411
    .line 412
    const-string v0, " orientation="

    .line 413
    .line 414
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    .line 416
    .line 417
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getOrientation()I

    .line 418
    .line 419
    .line 420
    move-result v0

    .line 421
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 422
    .line 423
    .line 424
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 425
    .line 426
    .line 427
    move-result-object v0

    .line 428
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    .line 430
    .line 431
    :cond_13
    const/16 v0, -0x60

    .line 432
    .line 433
    return v0

    .line 434
    :cond_14
    iget-object v1, v8, Lcom/android/server/wm/ActivityRecord;->mPendingRemoteTransition:Landroid/window/RemoteTransition;

    .line 435
    .line 436
    iput-object v4, v8, Lcom/android/server/wm/ActivityRecord;->mPendingRemoteTransition:Landroid/window/RemoteTransition;

    .line 437
    .line 438
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_BUG_FIX:Z

    .line 439
    .line 440
    if-eqz v2, :cond_15

    .line 441
    .line 442
    iget-object v2, v8, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 443
    .line 444
    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    .line 445
    .line 446
    .line 447
    move-result v2

    .line 448
    const/high16 v6, 0x10000

    .line 449
    .line 450
    and-int/2addr v2, v6

    .line 451
    if-eqz v2, :cond_15

    .line 452
    .line 453
    move-object v6, v4

    .line 454
    goto :goto_9

    .line 455
    :cond_15
    move-object v6, v1

    .line 456
    :goto_9
    if-eqz v5, :cond_17

    .line 457
    .line 458
    iget-object v1, v7, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 459
    .line 460
    iget-boolean v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->freezeScreen:Z

    .line 461
    .line 462
    if-eqz v1, :cond_17

    .line 463
    .line 464
    iget-object v1, v7, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 465
    .line 466
    iget-object v1, v1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 467
    .line 468
    if-eqz v1, :cond_16

    .line 469
    .line 470
    goto :goto_a

    .line 471
    :cond_16
    iget-object v1, v7, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 472
    .line 473
    iget-object v1, v1, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 474
    .line 475
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 476
    .line 477
    .line 478
    move-result-object v1

    .line 479
    :goto_a
    iget-object v2, v7, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 480
    .line 481
    iget-object v1, v1, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 482
    .line 483
    iget v1, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 484
    .line 485
    invoke-virtual {v2, v1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContentOrCreate(I)Lcom/android/server/wm/DisplayContent;

    .line 486
    .line 487
    .line 488
    move-result-object v1

    .line 489
    if-eqz v1, :cond_1c

    .line 490
    .line 491
    invoke-virtual {v0, v1}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 492
    .line 493
    .line 494
    invoke-virtual {v0, v1}, Lcom/android/server/wm/TransitionController;->collectVisibleChange(Lcom/android/server/wm/WindowContainer;)V

    .line 495
    .line 496
    .line 497
    goto/16 :goto_e

    .line 498
    .line 499
    :cond_17
    if-eqz v5, :cond_1c

    .line 500
    .line 501
    iget-object v1, v8, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 502
    .line 503
    if-eqz v1, :cond_1c

    .line 504
    .line 505
    const-string v2, "com.sec.intent.extra.FREEZE_TASK_DISPLAY_AREA"

    .line 506
    .line 507
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 508
    .line 509
    .line 510
    move-result v1

    .line 511
    if-eqz v1, :cond_1c

    .line 512
    .line 513
    iget-object v1, v7, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 514
    .line 515
    iget-object v1, v1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 516
    .line 517
    if-eqz v1, :cond_18

    .line 518
    .line 519
    goto :goto_b

    .line 520
    :cond_18
    iget-object v1, v7, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 521
    .line 522
    iget-object v1, v1, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 523
    .line 524
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 525
    .line 526
    .line 527
    move-result-object v1

    .line 528
    :goto_b
    iget-object v2, v7, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 529
    .line 530
    iget-object v4, v1, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 531
    .line 532
    iget v4, v4, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 533
    .line 534
    invoke-virtual {v2, v4}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContentOrCreate(I)Lcom/android/server/wm/DisplayContent;

    .line 535
    .line 536
    .line 537
    move-result-object v2

    .line 538
    invoke-virtual {v0, v1}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 539
    .line 540
    .line 541
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/android/server/wm/TransitionController;->isCollecting(Lcom/android/server/wm/WindowContainer;)Z

    .line 542
    .line 543
    .line 544
    move-result v4

    .line 545
    if-eqz v4, :cond_1a

    .line 546
    .line 547
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->FW_SCREENSHOT_FOR_HDR:Z

    .line 548
    .line 549
    if-eqz v4, :cond_19

    .line 550
    .line 551
    if-eqz v2, :cond_19

    .line 552
    .line 553
    iget-object v4, v2, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    .line 554
    .line 555
    invoke-virtual {v4}, Landroid/view/Display;->getHdrSdrRatio()F

    .line 556
    .line 557
    .line 558
    move-result v4

    .line 559
    const/high16 v11, 0x3f800000    # 1.0f

    .line 560
    .line 561
    cmpl-float v4, v4, v11

    .line 562
    .line 563
    if-lez v4, :cond_19

    .line 564
    .line 565
    iget-object v4, v7, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 566
    .line 567
    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 568
    .line 569
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    .line 570
    .line 571
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerServiceExt;->mScreenshotController:Lcom/android/server/wm/WmScreenshotController;

    .line 572
    .line 573
    invoke-virtual {v4, v2, v10}, Lcom/android/server/wm/WmScreenshotController;->invalidateForScreenShot(Lcom/android/server/wm/DisplayContent;Z)Z

    .line 574
    .line 575
    .line 576
    move-result v3

    .line 577
    goto :goto_c

    .line 578
    :catchall_0
    move-exception v0

    .line 579
    goto :goto_d

    .line 580
    :cond_19
    :goto_c
    invoke-virtual {v0, v1}, Lcom/android/server/wm/TransitionController;->collectVisibleChange(Lcom/android/server/wm/WindowContainer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 581
    .line 582
    .line 583
    :cond_1a
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_SCREENSHOT_FOR_HDR:Z

    .line 584
    .line 585
    if-eqz v1, :cond_1c

    .line 586
    .line 587
    if-eqz v3, :cond_1c

    .line 588
    .line 589
    iget-object v1, v7, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 590
    .line 591
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 592
    .line 593
    new-instance v3, Lcom/android/server/wm/ActivityStarter$$ExternalSyntheticLambda2;

    .line 594
    .line 595
    invoke-direct {v3, v7, v2}, Lcom/android/server/wm/ActivityStarter$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/ActivityStarter;Lcom/android/server/wm/DisplayContent;)V

    .line 596
    .line 597
    .line 598
    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 599
    .line 600
    .line 601
    goto :goto_e

    .line 602
    :goto_d
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_SCREENSHOT_FOR_HDR:Z

    .line 603
    .line 604
    if-eqz v1, :cond_1b

    .line 605
    .line 606
    if-eqz v3, :cond_1b

    .line 607
    .line 608
    iget-object v1, v7, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 609
    .line 610
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 611
    .line 612
    new-instance v3, Lcom/android/server/wm/ActivityStarter$$ExternalSyntheticLambda2;

    .line 613
    .line 614
    invoke-direct {v3, v7, v2}, Lcom/android/server/wm/ActivityStarter$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/ActivityStarter;Lcom/android/server/wm/DisplayContent;)V

    .line 615
    .line 616
    .line 617
    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 618
    .line 619
    .line 620
    :cond_1b
    throw v0

    .line 621
    :cond_1c
    :goto_e
    :try_start_1
    iget-object v1, v7, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 622
    .line 623
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 624
    .line 625
    .line 626
    invoke-virtual {v0, v8}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 627
    .line 628
    .line 629
    const-wide/16 v1, 0x20

    .line 630
    .line 631
    const/16 v11, -0x60

    .line 632
    .line 633
    :try_start_2
    const-string/jumbo v0, "startActivityInner"

    .line 634
    .line 635
    .line 636
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 637
    .line 638
    .line 639
    invoke-virtual/range {p0 .. p11}, Lcom/android/server/wm/ActivityStarter;->startActivityInner(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ILandroid/app/ActivityOptions;Lcom/android/server/wm/Task;Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;Lcom/android/server/uri/NeededUriGrants;I)I

    .line 640
    .line 641
    .line 642
    move-result v11
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 643
    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 644
    .line 645
    .line 646
    :goto_f
    move-object/from16 v1, p0

    .line 647
    .line 648
    move-object/from16 v2, p1

    .line 649
    .line 650
    move-object/from16 v3, p6

    .line 651
    .line 652
    move v4, v11

    .line 653
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/ActivityStarter;->handleStartResult(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;ILcom/android/server/wm/Transition;Landroid/window/RemoteTransition;)Lcom/android/server/wm/Task;

    .line 654
    .line 655
    .line 656
    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 657
    goto :goto_10

    .line 658
    :catchall_1
    move-exception v0

    .line 659
    goto/16 :goto_17

    .line 660
    .line 661
    :catchall_2
    move-exception v0

    .line 662
    goto/16 :goto_16

    .line 663
    .line 664
    :catch_0
    move-exception v0

    .line 665
    :try_start_4
    const-string v3, "ActivityTaskManager"

    .line 666
    .line 667
    const-string v4, "Exception on startActivityInner"

    .line 668
    .line 669
    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 670
    .line 671
    .line 672
    :try_start_5
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 673
    .line 674
    .line 675
    goto :goto_f

    .line 676
    :goto_10
    iget-object v1, v7, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 677
    .line 678
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 679
    .line 680
    .line 681
    iget-object v1, v7, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 682
    .line 683
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 684
    .line 685
    iget-object v1, v1, Lcom/android/server/wm/WindowOrganizerController;->mEnterSplitWithSingleStage:Ljava/util/HashSet;

    .line 686
    .line 687
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    .line 688
    .line 689
    .line 690
    move-result v1

    .line 691
    xor-int/2addr v1, v10

    .line 692
    if-eqz v1, :cond_1d

    .line 693
    .line 694
    iget-object v1, v7, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 695
    .line 696
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 697
    .line 698
    const-string v2, "adjacent"

    .line 699
    .line 700
    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowOrganizerController;->onEnterSplitWithSingleStageFinished(Ljava/lang/String;)V

    .line 701
    .line 702
    .line 703
    :cond_1d
    invoke-virtual {v7, v11, v8, v0}, Lcom/android/server/wm/ActivityStarter;->postStartActivityProcessing(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)V

    .line 704
    .line 705
    .line 706
    iget-object v1, v7, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 707
    .line 708
    if-eqz v1, :cond_22

    .line 709
    .line 710
    if-eqz v0, :cond_22

    .line 711
    .line 712
    iget-object v2, v7, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 713
    .line 714
    if-eqz v2, :cond_22

    .line 715
    .line 716
    if-eqz v9, :cond_1e

    .line 717
    .line 718
    iget-object v2, v9, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 719
    .line 720
    if-eqz v2, :cond_1e

    .line 721
    .line 722
    iget v2, v2, Lcom/android/server/wm/Task;->mTaskId:I

    .line 723
    .line 724
    goto :goto_11

    .line 725
    :cond_1e
    const/4 v2, -0x1

    .line 726
    :goto_11
    iget v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    .line 727
    .line 728
    iget-object v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    .line 729
    .line 730
    if-eqz v1, :cond_20

    .line 731
    .line 732
    iget-object v1, v7, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 733
    .line 734
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 735
    .line 736
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 737
    .line 738
    .line 739
    monitor-enter v1

    .line 740
    :try_start_6
    iget-object v4, v7, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 741
    .line 742
    iget-object v5, v7, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 743
    .line 744
    iget-object v5, v5, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    .line 745
    .line 746
    invoke-virtual {v4, v5}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Landroid/app/IApplicationThread;)Lcom/android/server/wm/WindowProcessController;

    .line 747
    .line 748
    .line 749
    move-result-object v4

    .line 750
    if-eqz v4, :cond_1f

    .line 751
    .line 752
    iget-object v3, v4, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    .line 753
    .line 754
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 755
    .line 756
    goto :goto_12

    .line 757
    :catchall_3
    move-exception v0

    .line 758
    goto :goto_13

    .line 759
    :cond_1f
    :goto_12
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 760
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 761
    .line 762
    .line 763
    goto :goto_14

    .line 764
    :goto_13
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 765
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 766
    .line 767
    .line 768
    throw v0

    .line 769
    :cond_20
    :goto_14
    iget-object v1, v7, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 770
    .line 771
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContentDispatcher:Lcom/android/server/pm/ContentDispatcher;

    .line 772
    .line 773
    iget-object v4, v7, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 774
    .line 775
    iget-object v5, v4, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    .line 776
    .line 777
    iget-object v6, v4, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 778
    .line 779
    iget-object v4, v4, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 780
    .line 781
    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    .line 782
    .line 783
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 784
    .line 785
    .line 786
    if-eqz v4, :cond_22

    .line 787
    .line 788
    iget-object v7, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 789
    .line 790
    if-eqz v7, :cond_22

    .line 791
    .line 792
    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 793
    .line 794
    if-eqz v7, :cond_22

    .line 795
    .line 796
    if-nez v6, :cond_21

    .line 797
    .line 798
    goto :goto_15

    .line 799
    :cond_21
    invoke-virtual {v6}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    .line 800
    .line 801
    .line 802
    move-result-object v6

    .line 803
    check-cast v6, Landroid/content/Intent;

    .line 804
    .line 805
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 806
    .line 807
    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 808
    .line 809
    iget-object v7, v1, Lcom/android/server/pm/ContentDispatcher;->mHandler:Landroid/os/Handler;

    .line 810
    .line 811
    new-instance v8, Lcom/android/server/pm/ContentDispatcher$$ExternalSyntheticLambda1;

    .line 812
    .line 813
    move-object/from16 p0, v8

    .line 814
    .line 815
    move-object/from16 p1, v1

    .line 816
    .line 817
    move-object/from16 p2, v6

    .line 818
    .line 819
    move-object/from16 p3, v4

    .line 820
    .line 821
    move/from16 p4, v3

    .line 822
    .line 823
    move/from16 p5, v0

    .line 824
    .line 825
    move-object/from16 p6, v5

    .line 826
    .line 827
    move/from16 p7, v2

    .line 828
    .line 829
    invoke-direct/range {p0 .. p7}, Lcom/android/server/pm/ContentDispatcher$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/ContentDispatcher;Landroid/content/Intent;Ljava/lang/String;IILjava/lang/String;I)V

    .line 830
    .line 831
    .line 832
    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 833
    .line 834
    .line 835
    :cond_22
    :goto_15
    return v11

    .line 836
    :goto_16
    :try_start_8
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 837
    .line 838
    .line 839
    move-object/from16 v1, p0

    .line 840
    .line 841
    move-object/from16 v2, p1

    .line 842
    .line 843
    move-object/from16 v3, p6

    .line 844
    .line 845
    move v4, v11

    .line 846
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/ActivityStarter;->handleStartResult(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;ILcom/android/server/wm/Transition;Landroid/window/RemoteTransition;)Lcom/android/server/wm/Task;

    .line 847
    .line 848
    .line 849
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 850
    :goto_17
    iget-object v1, v7, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 851
    .line 852
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 853
    .line 854
    .line 855
    throw v0
.end method

.method public final useSpegDisplayIfNeeded()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSpeg:Lcom/android/server/pm/SpegService;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 9
    .line 10
    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 11
    .line 12
    if-eqz v2, :cond_5

    .line 13
    .line 14
    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    .line 15
    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    iget v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    .line 20
    .line 21
    const/4 v2, -0x1

    .line 22
    if-ne v1, v2, :cond_2

    .line 23
    .line 24
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    :cond_2
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSpeg:Lcom/android/server/pm/SpegService;

    .line 29
    .line 30
    iget-boolean v3, v0, Lcom/android/server/pm/SpegService;->mIsSpegInOpeartion:Z

    .line 31
    .line 32
    if-eqz v3, :cond_5

    .line 33
    .line 34
    iget v3, v0, Lcom/android/server/pm/SpegService;->mSpegUid:I

    .line 35
    .line 36
    if-ne v1, v3, :cond_5

    .line 37
    .line 38
    if-ne v1, v3, :cond_3

    .line 39
    .line 40
    iget v2, v0, Lcom/android/server/pm/SpegService;->mSpegDisplayId:I

    .line 41
    .line 42
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 43
    .line 44
    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->activityOptions:Lcom/android/server/wm/SafeActivityOptions;

    .line 45
    .line 46
    if-eqz v0, :cond_4

    .line 47
    .line 48
    const/4 v1, 0x0

    .line 49
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 50
    .line 51
    invoke-virtual {v0, v1, v1, v1, v3}, Lcom/android/server/wm/SafeActivityOptions;->getOptions(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityTaskSupervisor;)Landroid/app/ActivityOptions;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    goto :goto_0

    .line 56
    :cond_4
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    :goto_0
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eq v1, v2, :cond_5

    .line 65
    .line 66
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 67
    .line 68
    new-instance v3, Lcom/android/server/wm/SafeActivityOptions;

    .line 69
    .line 70
    invoke-virtual {v0, v2}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    .line 71
    .line 72
    .line 73
    const/4 v4, 0x1

    .line 74
    invoke-virtual {v0, v4}, Landroid/app/ActivityOptions;->setPendingIntentCreatorBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    .line 75
    .line 76
    .line 77
    invoke-direct {v3, v0}, Lcom/android/server/wm/SafeActivityOptions;-><init>(Landroid/app/ActivityOptions;)V

    .line 78
    .line 79
    .line 80
    iput-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->activityOptions:Lcom/android/server/wm/SafeActivityOptions;

    .line 81
    .line 82
    const-string v0, "Reuse hidden display #"

    .line 83
    .line 84
    const-string v1, " for "

    .line 85
    .line 86
    invoke-static {v2, v0, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 91
    .line 92
    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 93
    .line 94
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    const-string v0, "SPEG"

    .line 102
    .line 103
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    :cond_5
    :goto_1
    return-void
.end method

.method public final waitResultIfNeeded(Landroid/app/WaitResult;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;)I
    .locals 3

    .line 1
    iget v0, p1, Landroid/app/WaitResult;->result:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-eq v0, v1, :cond_4

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    iget-boolean v2, p2, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    sget-object v2, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    .line 14
    .line 15
    invoke-virtual {p2, v2}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    iget v2, p1, Landroid/app/WaitResult;->result:I

    .line 28
    .line 29
    if-eq v2, v1, :cond_1

    .line 30
    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    new-instance v2, Lcom/android/server/wm/ActivityTaskSupervisor$WaitInfo;

    .line 35
    .line 36
    iget-object p2, p2, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 37
    .line 38
    invoke-direct {v2, p1, p2, p3}, Lcom/android/server/wm/ActivityTaskSupervisor$WaitInfo;-><init>(Landroid/app/WaitResult;Landroid/content/ComponentName;Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;)V

    .line 39
    .line 40
    .line 41
    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    :cond_2
    :try_start_0
    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 47
    .line 48
    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 49
    .line 50
    invoke-virtual {p2}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    .line 53
    :catch_0
    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    if-nez p2, :cond_2

    .line 60
    .line 61
    :goto_0
    if-nez v0, :cond_3

    .line 62
    .line 63
    iget p0, p1, Landroid/app/WaitResult;->result:I

    .line 64
    .line 65
    if-ne p0, v1, :cond_3

    .line 66
    .line 67
    return v1

    .line 68
    :cond_3
    return v0

    .line 69
    :cond_4
    :goto_1
    const/4 p0, 0x0

    .line 70
    iput-boolean p0, p1, Landroid/app/WaitResult;->timeout:Z

    .line 71
    .line 72
    iget-object p0, p2, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 73
    .line 74
    iput-object p0, p1, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    .line 75
    .line 76
    const-wide/16 p2, 0x0

    .line 77
    .line 78
    iput-wide p2, p1, Landroid/app/WaitResult;->totalTime:J

    .line 79
    .line 80
    return v0
.end method
