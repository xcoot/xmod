.class public final Lcom/android/server/display/ExternalDisplayPolicy;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEBUG:Z

.field static final ENABLE_ON_CONNECT:Ljava/lang/String; = "persist.sys.display.enable_on_connect.external"


# instance fields
.field public final mDisplayIdsWaitingForBootCompletion:Ljava/util/Set;

.field public final mDisplayNotificationManager:Lcom/android/server/display/notifications/DisplayNotificationManager;

.field public final mExternalDisplayStatsService:Lcom/android/server/display/ExternalDisplayStatsService;

.field public final mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

.field public final mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

.field public final mInjector:Lcom/android/server/display/DisplayManagerService$1;

.field public mIsBootCompleted:Z

.field public final mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

.field public volatile mStatus:I

.field public final mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "ExternalDisplayPolicy"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/display/utils/DebugUtils;->isDebuggable(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sput-boolean v0, Lcom/android/server/display/ExternalDisplayPolicy;->DEBUG:Z

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/DisplayManagerService$1;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mStatus:I

    .line 6
    .line 7
    new-instance v0, Ljava/util/HashSet;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mDisplayIdsWaitingForBootCompletion:Ljava/util/Set;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mInjector:Lcom/android/server/display/DisplayManagerService$1;

    .line 15
    .line 16
    iget-object p1, p1, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 17
    .line 18
    iget-object v0, p1, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    .line 21
    .line 22
    iget-object v0, p1, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 25
    .line 26
    iget-object v0, p1, Lcom/android/server/display/DisplayManagerService;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 27
    .line 28
    iput-object v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 29
    .line 30
    iget-object v0, p1, Lcom/android/server/display/DisplayManagerService;->mDisplayNotificationManager:Lcom/android/server/display/notifications/DisplayNotificationManager;

    .line 31
    .line 32
    iput-object v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mDisplayNotificationManager:Lcom/android/server/display/notifications/DisplayNotificationManager;

    .line 33
    .line 34
    iget-object v0, p1, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    .line 35
    .line 36
    iput-object v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    .line 37
    .line 38
    iget-object p1, p1, Lcom/android/server/display/DisplayManagerService;->mExternalDisplayStatsService:Lcom/android/server/display/ExternalDisplayStatsService;

    .line 39
    .line 40
    iput-object p1, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mExternalDisplayStatsService:Lcom/android/server/display/ExternalDisplayStatsService;

    .line 41
    .line 42
    return-void
.end method

.method public static isExternalDisplayLocked(Lcom/android/server/display/LogicalDisplay;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget p0, p0, Landroid/view/DisplayInfo;->type:I

    .line 6
    .line 7
    const/4 v0, 0x2

    .line 8
    if-ne p0, v0, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    return p0
.end method


# virtual methods
.method public final handleExternalDisplayConnectedLocked(Lcom/android/server/display/LogicalDisplay;)V
    .locals 8

    .line 1
    invoke-static {p1}, Lcom/android/server/display/ExternalDisplayPolicy;->isExternalDisplayLocked(Lcom/android/server/display/LogicalDisplay;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string p0, "ExternalDisplayPolicy"

    .line 8
    .line 9
    const-string/jumbo p1, "handleExternalDisplayConnectedLocked called for non-external display"

    .line 10
    .line 11
    .line 12
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/android/server/display/feature/DisplayManagerFlags;->mConnectedDisplayManagementFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    sget-boolean p0, Lcom/android/server/display/ExternalDisplayPolicy;->DEBUG:Z

    .line 27
    .line 28
    if-eqz p0, :cond_1

    .line 29
    .line 30
    const-string p0, "ExternalDisplayPolicy"

    .line 31
    .line 32
    const-string/jumbo p1, "handleExternalDisplayConnectedLocked connected display management flag is off"

    .line 33
    .line 34
    .line 35
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    :cond_1
    return-void

    .line 39
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mIsBootCompleted:Z

    .line 40
    .line 41
    if-nez v0, :cond_3

    .line 42
    .line 43
    iget-object p0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mDisplayIdsWaitingForBootCompletion:Ljava/util/Set;

    .line 44
    .line 45
    iget p1, p1, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    .line 46
    .line 47
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    check-cast p0, Ljava/util/HashSet;

    .line 52
    .line 53
    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_3
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mExternalDisplayStatsService:Lcom/android/server/display/ExternalDisplayStatsService;

    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    if-eqz v1, :cond_7

    .line 67
    .line 68
    iget v1, v1, Landroid/view/DisplayInfo;->type:I

    .line 69
    .line 70
    const/4 v2, 0x2

    .line 71
    if-eq v1, v2, :cond_4

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_4
    iget v1, p1, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    .line 75
    .line 76
    iget-object v3, v0, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    .line 77
    .line 78
    monitor-enter v3

    .line 79
    :try_start_0
    iget-object v4, v0, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    .line 80
    .line 81
    const/4 v5, 0x1

    .line 82
    invoke-virtual {v4, v1, v5}, Landroid/util/SparseIntArray;->get(II)I

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    if-eq v4, v5, :cond_5

    .line 87
    .line 88
    monitor-exit v3

    .line 89
    goto :goto_1

    .line 90
    :catchall_0
    move-exception p0

    .line 91
    goto :goto_0

    .line 92
    :cond_5
    iget-object v6, v0, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    .line 93
    .line 94
    invoke-virtual {v6, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 95
    .line 96
    .line 97
    iget-object v6, v0, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    .line 98
    .line 99
    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    .line 100
    .line 101
    .line 102
    move-result v6

    .line 103
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    if-ne v6, v5, :cond_6

    .line 105
    .line 106
    iget-object v3, v0, Lcom/android/server/display/ExternalDisplayStatsService;->mInjector:Lcom/android/server/display/ExternalDisplayStatsService$Injector;

    .line 107
    .line 108
    iget-object v3, v3, Lcom/android/server/display/ExternalDisplayStatsService$Injector;->mHandler:Landroid/os/Handler;

    .line 109
    .line 110
    new-instance v5, Lcom/android/server/display/ExternalDisplayStatsService$$ExternalSyntheticLambda0;

    .line 111
    .line 112
    const/4 v7, 0x1

    .line 113
    invoke-direct {v5, v0, v7}, Lcom/android/server/display/ExternalDisplayStatsService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/ExternalDisplayStatsService;I)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 117
    .line 118
    .line 119
    :cond_6
    iget-object v3, v0, Lcom/android/server/display/ExternalDisplayStatsService;->mInjector:Lcom/android/server/display/ExternalDisplayStatsService$Injector;

    .line 120
    .line 121
    iget-boolean v5, v0, Lcom/android/server/display/ExternalDisplayStatsService;->mIsExternalDisplayUsedForAudio:Z

    .line 122
    .line 123
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    .line 125
    .line 126
    const/16 v3, 0x326

    .line 127
    .line 128
    invoke-static {v3, v2, v6, v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIZ)V

    .line 129
    .line 130
    .line 131
    sget-boolean v2, Lcom/android/server/display/ExternalDisplayStatsService;->DEBUG:Z

    .line 132
    .line 133
    if-eqz v2, :cond_7

    .line 134
    .line 135
    const-string v2, "ExternalDisplayStatsService"

    .line 136
    .line 137
    const-string/jumbo v3, "logStateConnected displayId="

    .line 138
    .line 139
    .line 140
    const-string v5, " countOfExternalDisplays="

    .line 141
    .line 142
    const-string v7, " currentState="

    .line 143
    .line 144
    invoke-static {v1, v6, v3, v5, v7}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    const-string v3, " state=2 mIsExternalDisplayUsedForAudio="

    .line 152
    .line 153
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    iget-boolean v0, v0, Lcom/android/server/display/ExternalDisplayStatsService;->mIsExternalDisplayUsedForAudio:Z

    .line 157
    .line 158
    invoke-static {v2, v1, v0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 159
    .line 160
    .line 161
    goto :goto_1

    .line 162
    :goto_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    throw p0

    .line 164
    :cond_7
    :goto_1
    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    .line 165
    .line 166
    const/4 v1, 0x6

    .line 167
    const/4 v2, 0x0

    .line 168
    if-nez v0, :cond_8

    .line 169
    .line 170
    sget-boolean v0, Landroid/os/Build;->IS_USERDEBUG:Z

    .line 171
    .line 172
    if-eqz v0, :cond_9

    .line 173
    .line 174
    :cond_8
    const-string/jumbo v0, "persist.sys.display.enable_on_connect.external"

    .line 175
    .line 176
    .line 177
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    if-eqz v0, :cond_9

    .line 182
    .line 183
    const-string v0, "ExternalDisplayPolicy"

    .line 184
    .line 185
    const-string v2, "External display is enabled by default, bypassing user consent."

    .line 186
    .line 187
    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    .line 189
    .line 190
    iget-object p0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mInjector:Lcom/android/server/display/DisplayManagerService$1;

    .line 191
    .line 192
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 193
    .line 194
    invoke-virtual {p0, p1, v1}, Lcom/android/server/display/DisplayManagerService;->sendDisplayEventLocked(Lcom/android/server/display/LogicalDisplay;I)V

    .line 195
    .line 196
    .line 197
    return-void

    .line 198
    :cond_9
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    .line 199
    .line 200
    invoke-virtual {v0, p1, v2}, Lcom/android/server/display/LogicalDisplayMapper;->setEnabledLocked(Lcom/android/server/display/LogicalDisplay;Z)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {p0}, Lcom/android/server/display/ExternalDisplayPolicy;->isExternalDisplayAllowed()Z

    .line 204
    .line 205
    .line 206
    move-result v0

    .line 207
    if-nez v0, :cond_a

    .line 208
    .line 209
    const-string p1, "ExternalDisplayPolicy"

    .line 210
    .line 211
    const-string/jumbo v0, "handleExternalDisplayConnectedLocked: External display can not be used because it is currently not allowed."

    .line 212
    .line 213
    .line 214
    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    .line 216
    .line 217
    iget-object p1, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    .line 218
    .line 219
    iget-object p0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mDisplayNotificationManager:Lcom/android/server/display/notifications/DisplayNotificationManager;

    .line 220
    .line 221
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    new-instance v0, Lcom/android/server/display/ExternalDisplayPolicy$$ExternalSyntheticLambda0;

    .line 225
    .line 226
    invoke-direct {v0, p0}, Lcom/android/server/display/ExternalDisplayPolicy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/notifications/DisplayNotificationManager;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 230
    .line 231
    .line 232
    return-void

    .line 233
    :cond_a
    iget-object p0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mInjector:Lcom/android/server/display/DisplayManagerService$1;

    .line 234
    .line 235
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 236
    .line 237
    invoke-virtual {p0, p1, v1}, Lcom/android/server/display/DisplayManagerService;->sendDisplayEventLocked(Lcom/android/server/display/LogicalDisplay;I)V

    .line 238
    .line 239
    .line 240
    sget-boolean p0, Lcom/android/server/display/ExternalDisplayPolicy;->DEBUG:Z

    .line 241
    .line 242
    if-eqz p0, :cond_b

    .line 243
    .line 244
    const-string p0, "ExternalDisplayPolicy"

    .line 245
    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    .line 247
    .line 248
    const-string/jumbo v1, "handleExternalDisplayConnectedLocked complete displayId="

    .line 249
    .line 250
    .line 251
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    iget p1, p1, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    .line 255
    .line 256
    invoke-static {v0, p1, p0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 257
    .line 258
    .line 259
    :cond_b
    return-void
.end method

.method public isExternalDisplayAllowed()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final setExternalDisplayEnabledLocked(Lcom/android/server/display/LogicalDisplay;Z)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/android/server/display/ExternalDisplayPolicy;->isExternalDisplayLocked(Lcom/android/server/display/LogicalDisplay;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "ExternalDisplayPolicy"

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string/jumbo p0, "setExternalDisplayEnabledLocked called for non external display"

    .line 10
    .line 11
    .line 12
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/android/server/display/feature/DisplayManagerFlags;->mConnectedDisplayManagementFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    sget-boolean p0, Lcom/android/server/display/ExternalDisplayPolicy;->DEBUG:Z

    .line 27
    .line 28
    if-eqz p0, :cond_1

    .line 29
    .line 30
    const-string/jumbo p0, "setExternalDisplayEnabledLocked: External display management is not enabled on your device, cannot enable/disable display."

    .line 31
    .line 32
    .line 33
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    :cond_1
    return-void

    .line 37
    :cond_2
    if-eqz p2, :cond_3

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/android/server/display/ExternalDisplayPolicy;->isExternalDisplayAllowed()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_3

    .line 44
    .line 45
    const-string/jumbo p1, "setExternalDisplayEnabledLocked: External display can not be enabled because it is currently not allowed."

    .line 46
    .line 47
    .line 48
    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mDisplayNotificationManager:Lcom/android/server/display/notifications/DisplayNotificationManager;

    .line 52
    .line 53
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    new-instance p2, Lcom/android/server/display/ExternalDisplayPolicy$$ExternalSyntheticLambda0;

    .line 57
    .line 58
    invoke-direct {p2, p1}, Lcom/android/server/display/ExternalDisplayPolicy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/notifications/DisplayNotificationManager;)V

    .line 59
    .line 60
    .line 61
    iget-object p0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    .line 62
    .line 63
    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_3
    iget-object p0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    .line 68
    .line 69
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/LogicalDisplayMapper;->setDisplayEnabledLocked(Lcom/android/server/display/LogicalDisplay;Z)V

    .line 70
    .line 71
    .line 72
    return-void
.end method
