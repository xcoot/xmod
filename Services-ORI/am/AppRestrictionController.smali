.class public final Lcom/android/server/am/AppRestrictionController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final ROLES_IN_INTEREST:[Ljava/lang/String;


# instance fields
.field public errorMsg:Ljava/lang/String;

.field public final mActiveUids:Landroid/util/SparseArrayMap;

.field public final mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field public final mAppIdleStateChangeListener:Lcom/android/server/am/AppRestrictionController$4;

.field public final mAppStateTrackers:Ljava/util/ArrayList;

.field public final mBackgroundRestrictionListener:Lcom/android/server/am/AppRestrictionController$3;

.field public final mBgExecutor:Landroid/os/HandlerExecutor;

.field public final mBgHandler:Lcom/android/server/am/AppRestrictionController$BgHandler;

.field public final mBgHandlerThread:Landroid/os/HandlerThread;

.field public mBgRestrictionExemptioFromSysConfig:Landroid/util/ArraySet;

.field public final mBootReceiver:Lcom/android/server/am/AppRestrictionController$1;

.field public final mBroadcastReceiver:Lcom/android/server/am/AppRestrictionController$1;

.field public final mCarrierPrivilegedApps:Landroid/util/SparseArray;

.field public final mCarrierPrivilegedLock:Ljava/lang/Object;

.field public volatile mCarrierPrivilegesCallbacks:Ljava/util/ArrayList;

.field public final mConstantsObserver:Lcom/android/server/am/AppRestrictionController$ConstantsObserver;

.field public final mContext:Landroid/content/Context;

.field public mDeviceIdleAllowlist:[I

.field public mDeviceIdleExceptIdleAllowlist:[I

.field public final mEmptyTrackerInfo:Lcom/android/server/am/AppRestrictionController$TrackerInfo;

.field public final mExecutor:Landroid/os/HandlerExecutor;

.field public final mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

.field public final mLock:Ljava/lang/Object;

.field public volatile mLockedBootCompleted:Z

.field public final mNotificationHelper:Lcom/android/server/am/AppRestrictionController$NotificationHelper;

.field public final mRestrictionListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

.field final mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

.field public final mRestrictionSettingsXmlLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mRoleHolderChangedListener:Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda1;

.field public final mSettingsLock:Ljava/lang/Object;

.field public final mSystemDeviceIdleAllowlist:Landroid/util/ArraySet;

.field public final mSystemDeviceIdleExceptIdleAllowlist:Landroid/util/ArraySet;

.field public final mSystemModulesCache:Ljava/util/HashMap;

.field public final mTmpRunnables:Ljava/util/ArrayList;

.field public final mUidObserver:Lcom/android/server/am/AppRestrictionController$5;

.field public final mUidRolesMapping:Landroid/util/SparseArray;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "android.app.role.DIALER"

    .line 2
    .line 3
    const-string v1, "android.app.role.EMERGENCY"

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lcom/android/server/am/AppRestrictionController;->ROLES_IN_INTEREST:[Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    new-instance v2, Lcom/android/server/am/AppRestrictionController$Injector;

    .line 6
    .line 7
    invoke-direct {v2, v1}, Lcom/android/server/am/AppRestrictionController$Injector;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    new-instance v3, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v3, v0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    .line 19
    .line 20
    new-instance v4, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    .line 21
    .line 22
    invoke-direct {v4, v0}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;-><init>(Lcom/android/server/am/AppRestrictionController;)V

    .line 23
    .line 24
    .line 25
    iput-object v4, v0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    .line 26
    .line 27
    new-instance v4, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 28
    .line 29
    invoke-direct {v4}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v4, v0, Lcom/android/server/am/AppRestrictionController;->mRestrictionListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 33
    .line 34
    new-instance v4, Landroid/util/SparseArrayMap;

    .line 35
    .line 36
    invoke-direct {v4}, Landroid/util/SparseArrayMap;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v4, v0, Lcom/android/server/am/AppRestrictionController;->mActiveUids:Landroid/util/SparseArrayMap;

    .line 40
    .line 41
    new-instance v4, Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object v4, v0, Lcom/android/server/am/AppRestrictionController;->mTmpRunnables:Ljava/util/ArrayList;

    .line 47
    .line 48
    const/4 v4, 0x0

    .line 49
    new-array v5, v4, [I

    .line 50
    .line 51
    iput-object v5, v0, Lcom/android/server/am/AppRestrictionController;->mDeviceIdleAllowlist:[I

    .line 52
    .line 53
    new-array v5, v4, [I

    .line 54
    .line 55
    iput-object v5, v0, Lcom/android/server/am/AppRestrictionController;->mDeviceIdleExceptIdleAllowlist:[I

    .line 56
    .line 57
    new-instance v5, Landroid/util/ArraySet;

    .line 58
    .line 59
    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 60
    .line 61
    .line 62
    iput-object v5, v0, Lcom/android/server/am/AppRestrictionController;->mSystemDeviceIdleAllowlist:Landroid/util/ArraySet;

    .line 63
    .line 64
    new-instance v5, Landroid/util/ArraySet;

    .line 65
    .line 66
    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 67
    .line 68
    .line 69
    iput-object v5, v0, Lcom/android/server/am/AppRestrictionController;->mSystemDeviceIdleExceptIdleAllowlist:Landroid/util/ArraySet;

    .line 70
    .line 71
    new-instance v5, Ljava/lang/Object;

    .line 72
    .line 73
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 74
    .line 75
    .line 76
    iput-object v5, v0, Lcom/android/server/am/AppRestrictionController;->mLock:Ljava/lang/Object;

    .line 77
    .line 78
    new-instance v5, Ljava/lang/Object;

    .line 79
    .line 80
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 81
    .line 82
    .line 83
    iput-object v5, v0, Lcom/android/server/am/AppRestrictionController;->mSettingsLock:Ljava/lang/Object;

    .line 84
    .line 85
    new-instance v5, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda1;

    .line 86
    .line 87
    invoke-direct {v5, v0}, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/AppRestrictionController;)V

    .line 88
    .line 89
    .line 90
    iput-object v5, v0, Lcom/android/server/am/AppRestrictionController;->mRoleHolderChangedListener:Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda1;

    .line 91
    .line 92
    new-instance v5, Landroid/util/SparseArray;

    .line 93
    .line 94
    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    .line 95
    .line 96
    .line 97
    iput-object v5, v0, Lcom/android/server/am/AppRestrictionController;->mUidRolesMapping:Landroid/util/SparseArray;

    .line 98
    .line 99
    new-instance v5, Ljava/util/HashMap;

    .line 100
    .line 101
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 102
    .line 103
    .line 104
    iput-object v5, v0, Lcom/android/server/am/AppRestrictionController;->mSystemModulesCache:Ljava/util/HashMap;

    .line 105
    .line 106
    new-instance v5, Ljava/lang/Object;

    .line 107
    .line 108
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 109
    .line 110
    .line 111
    iput-object v5, v0, Lcom/android/server/am/AppRestrictionController;->mCarrierPrivilegedLock:Ljava/lang/Object;

    .line 112
    .line 113
    new-instance v5, Landroid/util/SparseArray;

    .line 114
    .line 115
    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    .line 116
    .line 117
    .line 118
    iput-object v5, v0, Lcom/android/server/am/AppRestrictionController;->mCarrierPrivilegedApps:Landroid/util/SparseArray;

    .line 119
    .line 120
    new-instance v5, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 121
    .line 122
    invoke-direct {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 123
    .line 124
    .line 125
    iput-object v5, v0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettingsXmlLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 126
    .line 127
    iput-boolean v4, v0, Lcom/android/server/am/AppRestrictionController;->mLockedBootCompleted:Z

    .line 128
    .line 129
    const/4 v4, 0x0

    .line 130
    iput-object v4, v0, Lcom/android/server/am/AppRestrictionController;->errorMsg:Ljava/lang/String;

    .line 131
    .line 132
    new-instance v4, Lcom/android/server/am/AppRestrictionController$TrackerInfo;

    .line 133
    .line 134
    invoke-direct {v4}, Lcom/android/server/am/AppRestrictionController$TrackerInfo;-><init>()V

    .line 135
    .line 136
    .line 137
    iput-object v4, v0, Lcom/android/server/am/AppRestrictionController;->mEmptyTrackerInfo:Lcom/android/server/am/AppRestrictionController$TrackerInfo;

    .line 138
    .line 139
    new-instance v4, Lcom/android/server/am/AppRestrictionController$1;

    .line 140
    .line 141
    const/4 v5, 0x0

    .line 142
    invoke-direct {v4, v5, v0}, Lcom/android/server/am/AppRestrictionController$1;-><init>(ILjava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    iput-object v4, v0, Lcom/android/server/am/AppRestrictionController;->mBroadcastReceiver:Lcom/android/server/am/AppRestrictionController$1;

    .line 146
    .line 147
    new-instance v4, Lcom/android/server/am/AppRestrictionController$1;

    .line 148
    .line 149
    const/4 v5, 0x1

    .line 150
    invoke-direct {v4, v5, v0}, Lcom/android/server/am/AppRestrictionController$1;-><init>(ILjava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    iput-object v4, v0, Lcom/android/server/am/AppRestrictionController;->mBootReceiver:Lcom/android/server/am/AppRestrictionController$1;

    .line 154
    .line 155
    new-instance v4, Lcom/android/server/am/AppRestrictionController$3;

    .line 156
    .line 157
    invoke-direct {v4, v0}, Lcom/android/server/am/AppRestrictionController$3;-><init>(Lcom/android/server/am/AppRestrictionController;)V

    .line 158
    .line 159
    .line 160
    iput-object v4, v0, Lcom/android/server/am/AppRestrictionController;->mBackgroundRestrictionListener:Lcom/android/server/am/AppRestrictionController$3;

    .line 161
    .line 162
    new-instance v4, Lcom/android/server/am/AppRestrictionController$4;

    .line 163
    .line 164
    invoke-direct {v4, v0}, Lcom/android/server/am/AppRestrictionController$4;-><init>(Lcom/android/server/am/AppRestrictionController;)V

    .line 165
    .line 166
    .line 167
    iput-object v4, v0, Lcom/android/server/am/AppRestrictionController;->mAppIdleStateChangeListener:Lcom/android/server/am/AppRestrictionController$4;

    .line 168
    .line 169
    new-instance v4, Lcom/android/server/am/AppRestrictionController$5;

    .line 170
    .line 171
    invoke-direct {v4, v0}, Lcom/android/server/am/AppRestrictionController$5;-><init>(Lcom/android/server/am/AppRestrictionController;)V

    .line 172
    .line 173
    .line 174
    iput-object v4, v0, Lcom/android/server/am/AppRestrictionController;->mUidObserver:Lcom/android/server/am/AppRestrictionController$5;

    .line 175
    .line 176
    iput-object v2, v0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    .line 177
    .line 178
    iput-object v1, v0, Lcom/android/server/am/AppRestrictionController;->mContext:Landroid/content/Context;

    .line 179
    .line 180
    move-object/from16 v4, p2

    .line 181
    .line 182
    iput-object v4, v0, Lcom/android/server/am/AppRestrictionController;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 183
    .line 184
    new-instance v4, Landroid/os/HandlerThread;

    .line 185
    .line 186
    const-string v5, "bgres-controller"

    .line 187
    .line 188
    const/16 v6, 0xa

    .line 189
    .line 190
    invoke-direct {v4, v5, v6}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 191
    .line 192
    .line 193
    iput-object v4, v0, Lcom/android/server/am/AppRestrictionController;->mBgHandlerThread:Landroid/os/HandlerThread;

    .line 194
    .line 195
    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    .line 196
    .line 197
    .line 198
    new-instance v5, Lcom/android/server/am/AppRestrictionController$BgHandler;

    .line 199
    .line 200
    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 201
    .line 202
    .line 203
    move-result-object v4

    .line 204
    invoke-direct {v5, v4, v2}, Lcom/android/server/am/AppRestrictionController$BgHandler;-><init>(Landroid/os/Looper;Lcom/android/server/am/AppRestrictionController$Injector;)V

    .line 205
    .line 206
    .line 207
    iput-object v5, v0, Lcom/android/server/am/AppRestrictionController;->mBgHandler:Lcom/android/server/am/AppRestrictionController$BgHandler;

    .line 208
    .line 209
    new-instance v4, Landroid/os/HandlerExecutor;

    .line 210
    .line 211
    invoke-direct {v4, v5}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 212
    .line 213
    .line 214
    iput-object v4, v0, Lcom/android/server/am/AppRestrictionController;->mBgExecutor:Landroid/os/HandlerExecutor;

    .line 215
    .line 216
    new-instance v4, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;

    .line 217
    .line 218
    invoke-direct {v4, v1, v0}, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;-><init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;)V

    .line 219
    .line 220
    .line 221
    iput-object v4, v0, Lcom/android/server/am/AppRestrictionController;->mConstantsObserver:Lcom/android/server/am/AppRestrictionController$ConstantsObserver;

    .line 222
    .line 223
    new-instance v4, Lcom/android/server/am/AppRestrictionController$NotificationHelper;

    .line 224
    .line 225
    invoke-direct {v4, v0}, Lcom/android/server/am/AppRestrictionController$NotificationHelper;-><init>(Lcom/android/server/am/AppRestrictionController;)V

    .line 226
    .line 227
    .line 228
    iput-object v4, v0, Lcom/android/server/am/AppRestrictionController;->mNotificationHelper:Lcom/android/server/am/AppRestrictionController$NotificationHelper;

    .line 229
    .line 230
    iput-object v0, v2, Lcom/android/server/am/AppRestrictionController$Injector;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    .line 231
    .line 232
    new-instance v4, Lcom/android/server/am/AppBatteryTracker;

    .line 233
    .line 234
    invoke-direct {v4, v1, v0}, Lcom/android/server/am/AppBatteryTracker;-><init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;)V

    .line 235
    .line 236
    .line 237
    iput-object v4, v2, Lcom/android/server/am/AppRestrictionController$Injector;->mAppBatteryTracker:Lcom/android/server/am/AppBatteryTracker;

    .line 238
    .line 239
    new-instance v4, Lcom/android/server/am/AppBatteryExemptionTracker;

    .line 240
    .line 241
    invoke-direct {v4, v1, v0}, Lcom/android/server/am/BaseAppStateDurationsTracker;-><init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;)V

    .line 242
    .line 243
    .line 244
    new-instance v5, Lcom/android/server/am/UidProcessMap;

    .line 245
    .line 246
    invoke-direct {v5}, Lcom/android/server/am/UidProcessMap;-><init>()V

    .line 247
    .line 248
    .line 249
    iput-object v5, v4, Lcom/android/server/am/AppBatteryExemptionTracker;->mUidPackageStates:Lcom/android/server/am/UidProcessMap;

    .line 250
    .line 251
    new-instance v13, Lcom/android/server/am/AppBatteryExemptionTracker$AppBatteryExemptionPolicy;

    .line 252
    .line 253
    iget-object v5, v4, Lcom/android/server/am/BaseAppStateTracker;->mContext:Landroid/content/Context;

    .line 254
    .line 255
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 256
    .line 257
    .line 258
    move-result-object v5

    .line 259
    const v6, 0x10e0048

    .line 260
    .line 261
    .line 262
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    .line 263
    .line 264
    .line 265
    move-result v5

    .line 266
    int-to-long v11, v5

    .line 267
    iget-object v14, v4, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    .line 268
    .line 269
    const/4 v9, 0x0

    .line 270
    const-string v10, "bg_current_drain_window"

    .line 271
    .line 272
    const-string v8, "bg_battery_exemption_enabled"

    .line 273
    .line 274
    move-object v5, v13

    .line 275
    move-object v6, v14

    .line 276
    move-object v7, v4

    .line 277
    invoke-direct/range {v5 .. v12}, Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;-><init>(Lcom/android/server/am/BaseAppStateTracker$Injector;Lcom/android/server/am/BaseAppStateEventsTracker;Ljava/lang/String;ZLjava/lang/String;J)V

    .line 278
    .line 279
    .line 280
    iput-object v13, v14, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    .line 281
    .line 282
    iput-object v4, v2, Lcom/android/server/am/AppRestrictionController$Injector;->mAppBatteryExemptionTracker:Lcom/android/server/am/AppBatteryExemptionTracker;

    .line 283
    .line 284
    new-instance v4, Lcom/android/server/am/AppFGSTracker;

    .line 285
    .line 286
    invoke-direct {v4, v1, v0}, Lcom/android/server/am/AppFGSTracker;-><init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;)V

    .line 287
    .line 288
    .line 289
    iput-object v4, v2, Lcom/android/server/am/AppRestrictionController$Injector;->mAppFGSTracker:Lcom/android/server/am/AppFGSTracker;

    .line 290
    .line 291
    new-instance v4, Lcom/android/server/am/AppMediaSessionTracker;

    .line 292
    .line 293
    invoke-direct {v4, v1, v0}, Lcom/android/server/am/AppMediaSessionTracker;-><init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;)V

    .line 294
    .line 295
    .line 296
    iput-object v4, v2, Lcom/android/server/am/AppRestrictionController$Injector;->mAppMediaSessionTracker:Lcom/android/server/am/AppMediaSessionTracker;

    .line 297
    .line 298
    new-instance v4, Lcom/android/server/am/AppPermissionTracker;

    .line 299
    .line 300
    invoke-direct {v4, v1, v0}, Lcom/android/server/am/AppPermissionTracker;-><init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;)V

    .line 301
    .line 302
    .line 303
    iput-object v4, v2, Lcom/android/server/am/AppRestrictionController$Injector;->mAppPermissionTracker:Lcom/android/server/am/AppPermissionTracker;

    .line 304
    .line 305
    iget-object v4, v2, Lcom/android/server/am/AppRestrictionController$Injector;->mAppBatteryTracker:Lcom/android/server/am/AppBatteryTracker;

    .line 306
    .line 307
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    .line 309
    .line 310
    iget-object v4, v2, Lcom/android/server/am/AppRestrictionController$Injector;->mAppBatteryExemptionTracker:Lcom/android/server/am/AppBatteryExemptionTracker;

    .line 311
    .line 312
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    .line 314
    .line 315
    iget-object v4, v2, Lcom/android/server/am/AppRestrictionController$Injector;->mAppFGSTracker:Lcom/android/server/am/AppFGSTracker;

    .line 316
    .line 317
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    .line 319
    .line 320
    iget-object v4, v2, Lcom/android/server/am/AppRestrictionController$Injector;->mAppMediaSessionTracker:Lcom/android/server/am/AppMediaSessionTracker;

    .line 321
    .line 322
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    .line 324
    .line 325
    iget-object v4, v2, Lcom/android/server/am/AppRestrictionController$Injector;->mAppPermissionTracker:Lcom/android/server/am/AppPermissionTracker;

    .line 326
    .line 327
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    .line 329
    .line 330
    new-instance v4, Lcom/android/server/am/AppBroadcastEventsTracker;

    .line 331
    .line 332
    invoke-direct {v4, v1, v0}, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;-><init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;)V

    .line 333
    .line 334
    .line 335
    new-instance v11, Lcom/android/server/am/AppBroadcastEventsTracker$AppBroadcastEventsPolicy;

    .line 336
    .line 337
    iget-object v12, v4, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    .line 338
    .line 339
    const-string v8, "bg_broadcast_monitor_enabled"

    .line 340
    .line 341
    const-string v10, "bg_ex_broadcast_threshold"

    .line 342
    .line 343
    const-string v9, "bg_broadcast_window"

    .line 344
    .line 345
    move-object v5, v11

    .line 346
    move-object v6, v12

    .line 347
    move-object v7, v4

    .line 348
    invoke-direct/range {v5 .. v10}, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;-><init>(Lcom/android/server/am/BaseAppStateTracker$Injector;Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    iput-object v11, v12, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    .line 352
    .line 353
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    .line 355
    .line 356
    new-instance v4, Lcom/android/server/am/AppBindServiceEventsTracker;

    .line 357
    .line 358
    invoke-direct {v4, v1, v0}, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;-><init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;)V

    .line 359
    .line 360
    .line 361
    new-instance v1, Lcom/android/server/am/AppBindServiceEventsTracker$AppBindServiceEventsPolicy;

    .line 362
    .line 363
    iget-object v5, v4, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    .line 364
    .line 365
    const-string v16, "bg_bind_svc_monitor_enabled"

    .line 366
    .line 367
    const-string v18, "bg_ex_bind_svc_threshold"

    .line 368
    .line 369
    const-string v17, "bg_bind_svc_window"

    .line 370
    .line 371
    move-object v13, v1

    .line 372
    move-object v14, v5

    .line 373
    move-object v15, v4

    .line 374
    invoke-direct/range {v13 .. v18}, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;-><init>(Lcom/android/server/am/BaseAppStateTracker$Injector;Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    .line 376
    .line 377
    iput-object v1, v5, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    .line 378
    .line 379
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    .line 381
    .line 382
    new-instance v1, Landroid/os/HandlerExecutor;

    .line 383
    .line 384
    iget-object v2, v2, Lcom/android/server/am/AppRestrictionController$Injector;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    .line 385
    .line 386
    iget-object v2, v2, Lcom/android/server/am/AppRestrictionController;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 387
    .line 388
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 389
    .line 390
    invoke-direct {v1, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 391
    .line 392
    .line 393
    iput-object v1, v0, Lcom/android/server/am/AppRestrictionController;->mExecutor:Landroid/os/HandlerExecutor;

    .line 394
    .line 395
    return-void
.end method

.method public static getRestrictionLevelStatsd(I)I
    .locals 1

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    if-eq p0, v0, :cond_5

    .line 4
    .line 5
    const/16 v0, 0x14

    .line 6
    .line 7
    if-eq p0, v0, :cond_4

    .line 8
    .line 9
    const/16 v0, 0x1e

    .line 10
    .line 11
    if-eq p0, v0, :cond_3

    .line 12
    .line 13
    const/16 v0, 0x28

    .line 14
    .line 15
    if-eq p0, v0, :cond_2

    .line 16
    .line 17
    const/16 v0, 0x32

    .line 18
    .line 19
    if-eq p0, v0, :cond_1

    .line 20
    .line 21
    const/16 v0, 0x3c

    .line 22
    .line 23
    if-eq p0, v0, :cond_0

    .line 24
    .line 25
    const/4 p0, 0x0

    .line 26
    return p0

    .line 27
    :cond_0
    const/4 p0, 0x6

    .line 28
    return p0

    .line 29
    :cond_1
    const/4 p0, 0x5

    .line 30
    return p0

    .line 31
    :cond_2
    const/4 p0, 0x4

    .line 32
    return p0

    .line 33
    :cond_3
    const/4 p0, 0x3

    .line 34
    return p0

    .line 35
    :cond_4
    const/4 p0, 0x2

    .line 36
    return p0

    .line 37
    :cond_5
    const/4 p0, 0x1

    .line 38
    return p0
.end method


# virtual methods
.method public addAppStateTracker(Lcom/android/server/am/BaseAppStateTracker;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final applyRestrictionLevel(Ljava/lang/String;IILcom/android/server/am/AppRestrictionController$TrackerInfo;IZII)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v11, p1

    .line 4
    .line 5
    move/from16 v12, p2

    .line 6
    .line 7
    move/from16 v13, p3

    .line 8
    .line 9
    move/from16 v7, p5

    .line 10
    .line 11
    iget-object v1, v0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppStandbyInternal()Lcom/android/server/usage/AppStandbyInternal;

    .line 14
    .line 15
    .line 16
    move-result-object v14

    .line 17
    if-nez p4, :cond_0

    .line 18
    .line 19
    iget-object v1, v0, Lcom/android/server/am/AppRestrictionController;->mEmptyTrackerInfo:Lcom/android/server/am/AppRestrictionController$TrackerInfo;

    .line 20
    .line 21
    move-object v15, v1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move-object/from16 v15, p4

    .line 24
    .line 25
    :goto_0
    iget-object v8, v0, Lcom/android/server/am/AppRestrictionController;->mSettingsLock:Ljava/lang/Object;

    .line 26
    .line 27
    monitor-enter v8

    .line 28
    :try_start_0
    iget-object v1, v0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    .line 29
    .line 30
    invoke-virtual {v1, v12, v11}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->getRestrictionLevel(ILjava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result v10

    .line 34
    if-ne v10, v13, :cond_1

    .line 35
    .line 36
    monitor-exit v8

    .line 37
    return-void

    .line 38
    :catchall_0
    move-exception v0

    .line 39
    goto/16 :goto_c

    .line 40
    .line 41
    :cond_1
    const/16 v16, 0x0

    .line 42
    .line 43
    const/16 v9, 0x2d

    .line 44
    .line 45
    const/4 v6, 0x5

    .line 46
    const/16 v5, 0x28

    .line 47
    .line 48
    const/16 v1, 0x14

    .line 49
    .line 50
    if-eq v7, v6, :cond_5

    .line 51
    .line 52
    const/16 v2, 0xa

    .line 53
    .line 54
    const/16 v3, 0x1e

    .line 55
    .line 56
    if-eq v7, v2, :cond_4

    .line 57
    .line 58
    if-eq v7, v1, :cond_4

    .line 59
    .line 60
    if-eq v7, v3, :cond_4

    .line 61
    .line 62
    if-eq v7, v5, :cond_4

    .line 63
    .line 64
    if-eq v7, v9, :cond_3

    .line 65
    .line 66
    const/16 v1, 0x32

    .line 67
    .line 68
    if-eq v7, v1, :cond_2

    .line 69
    .line 70
    move/from16 v1, v16

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    invoke-static {}, Landroid/app/Flags;->appRestrictionsApi()Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-nez v2, :cond_4

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_3
    move v1, v5

    .line 81
    goto :goto_1

    .line 82
    :cond_4
    move v1, v3

    .line 83
    :cond_5
    :goto_1
    const v17, 0xff00

    .line 84
    .line 85
    .line 86
    if-ne v1, v13, :cond_6

    .line 87
    .line 88
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 93
    .line 94
    .line 95
    move-result-wide v2

    .line 96
    invoke-interface {v14, v11, v1, v2, v3}, Lcom/android/server/usage/AppStandbyInternal;->getAppStandbyBucketReason(Ljava/lang/String;IJ)I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    if-eqz v1, :cond_6

    .line 101
    .line 102
    and-int v2, v1, v17

    .line 103
    .line 104
    and-int/lit16 v1, v1, 0xff

    .line 105
    .line 106
    move v4, v1

    .line 107
    move v3, v2

    .line 108
    goto :goto_2

    .line 109
    :cond_6
    move/from16 v3, p7

    .line 110
    .line 111
    move/from16 v4, p8

    .line 112
    .line 113
    :goto_2
    iget-object v1, v0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    .line 114
    .line 115
    iget-object v2, v1, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    .line 116
    .line 117
    iget-object v2, v2, Lcom/android/server/am/AppRestrictionController;->mSettingsLock:Ljava/lang/Object;

    .line 118
    .line 119
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    :try_start_1
    iget-object v1, v1, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    .line 121
    .line 122
    invoke-virtual {v1, v12, v11}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    check-cast v1, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;

    .line 127
    .line 128
    if-eqz v1, :cond_7

    .line 129
    .line 130
    iget v1, v1, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mReason:I

    .line 131
    .line 132
    goto :goto_3

    .line 133
    :cond_7
    const/16 v1, 0x100

    .line 134
    .line 135
    :goto_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 136
    :try_start_2
    iget-object v2, v0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    .line 137
    .line 138
    move/from16 v18, v1

    .line 139
    .line 140
    move-object v1, v2

    .line 141
    move/from16 v2, p2

    .line 142
    .line 143
    move/from16 p4, v3

    .line 144
    .line 145
    move/from16 v3, p3

    .line 146
    .line 147
    move/from16 p7, v4

    .line 148
    .line 149
    move/from16 v4, p4

    .line 150
    .line 151
    move v9, v5

    .line 152
    move/from16 v5, p7

    .line 153
    .line 154
    move v9, v6

    .line 155
    move-object/from16 v6, p1

    .line 156
    .line 157
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->update(IIIILjava/lang/String;)V

    .line 158
    .line 159
    .line 160
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 161
    invoke-static {}, Landroid/app/Flags;->appRestrictionsApi()Z

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    if-nez v1, :cond_9

    .line 166
    .line 167
    if-eqz p6, :cond_8

    .line 168
    .line 169
    if-ne v7, v9, :cond_9

    .line 170
    .line 171
    :cond_8
    return-void

    .line 172
    :cond_9
    const/4 v8, 0x1

    .line 173
    const/16 v1, 0x28

    .line 174
    .line 175
    if-lt v13, v1, :cond_10

    .line 176
    .line 177
    if-ge v10, v1, :cond_10

    .line 178
    .line 179
    const/16 v2, 0x2d

    .line 180
    .line 181
    if-eq v7, v2, :cond_f

    .line 182
    .line 183
    iget-object v2, v0, Lcom/android/server/am/AppRestrictionController;->mConstantsObserver:Lcom/android/server/am/AppRestrictionController$ConstantsObserver;

    .line 184
    .line 185
    iget-boolean v2, v2, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgAutoRestrictedBucket:Z

    .line 186
    .line 187
    if-nez v2, :cond_b

    .line 188
    .line 189
    if-ne v13, v1, :cond_a

    .line 190
    .line 191
    goto :goto_4

    .line 192
    :cond_a
    move/from16 v9, p4

    .line 193
    .line 194
    move/from16 v19, v13

    .line 195
    .line 196
    move-object v13, v0

    .line 197
    move v0, v10

    .line 198
    move/from16 v10, v19

    .line 199
    .line 200
    goto/16 :goto_b

    .line 201
    .line 202
    :cond_b
    :goto_4
    iget-object v9, v0, Lcom/android/server/am/AppRestrictionController;->mSettingsLock:Ljava/lang/Object;

    .line 203
    .line 204
    monitor-enter v9

    .line 205
    :try_start_3
    iget-object v1, v0, Lcom/android/server/am/AppRestrictionController;->mActiveUids:Landroid/util/SparseArrayMap;

    .line 206
    .line 207
    invoke-virtual {v1, v12, v11}, Landroid/util/SparseArrayMap;->indexOfKey(ILjava/lang/Object;)I

    .line 208
    .line 209
    .line 210
    move-result v1

    .line 211
    if-ltz v1, :cond_c

    .line 212
    .line 213
    iget-object v8, v0, Lcom/android/server/am/AppRestrictionController;->mActiveUids:Landroid/util/SparseArrayMap;

    .line 214
    .line 215
    new-instance v7, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda0;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 216
    .line 217
    move-object v1, v7

    .line 218
    move-object/from16 v2, p0

    .line 219
    .line 220
    move-object v3, v14

    .line 221
    move-object/from16 v4, p1

    .line 222
    .line 223
    move/from16 v5, p2

    .line 224
    .line 225
    move/from16 v6, p4

    .line 226
    .line 227
    move-object v0, v7

    .line 228
    move/from16 v7, p7

    .line 229
    .line 230
    move-object v13, v8

    .line 231
    move v8, v10

    .line 232
    move-object/from16 v17, v9

    .line 233
    .line 234
    move/from16 v9, p3

    .line 235
    .line 236
    move/from16 p5, v10

    .line 237
    .line 238
    move-object v10, v15

    .line 239
    :try_start_4
    invoke-direct/range {v1 .. v10}, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/AppRestrictionController;Lcom/android/server/usage/AppStandbyInternal;Ljava/lang/String;IIIIILcom/android/server/am/AppRestrictionController$TrackerInfo;)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v13, v12, v11, v0}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    goto :goto_5

    .line 246
    :catchall_1
    move-exception v0

    .line 247
    goto :goto_7

    .line 248
    :catchall_2
    move-exception v0

    .line 249
    move-object/from16 v17, v9

    .line 250
    .line 251
    goto :goto_7

    .line 252
    :cond_c
    move-object/from16 v17, v9

    .line 253
    .line 254
    move/from16 p5, v10

    .line 255
    .line 256
    move/from16 v16, v8

    .line 257
    .line 258
    :goto_5
    monitor-exit v17
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 259
    if-eqz v16, :cond_d

    .line 260
    .line 261
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 262
    .line 263
    .line 264
    move-result v0

    .line 265
    move/from16 v9, p4

    .line 266
    .line 267
    move/from16 v7, p7

    .line 268
    .line 269
    invoke-interface {v14, v11, v0, v9, v7}, Lcom/android/server/usage/AppStandbyInternal;->restrictApp(Ljava/lang/String;III)V

    .line 270
    .line 271
    .line 272
    invoke-static {}, Landroid/app/Flags;->appRestrictionsApi()Z

    .line 273
    .line 274
    .line 275
    move-result v0

    .line 276
    if-nez v0, :cond_e

    .line 277
    .line 278
    move-object/from16 v1, p0

    .line 279
    .line 280
    move-object/from16 v2, p1

    .line 281
    .line 282
    move/from16 v3, p2

    .line 283
    .line 284
    move/from16 v4, p5

    .line 285
    .line 286
    move/from16 v5, p3

    .line 287
    .line 288
    move-object v6, v15

    .line 289
    move v7, v9

    .line 290
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/AppRestrictionController;->logAppBackgroundRestrictionInfo(Ljava/lang/String;IIILcom/android/server/am/AppRestrictionController$TrackerInfo;I)V

    .line 291
    .line 292
    .line 293
    goto :goto_6

    .line 294
    :cond_d
    move/from16 v9, p4

    .line 295
    .line 296
    :cond_e
    :goto_6
    move-object/from16 v13, p0

    .line 297
    .line 298
    move/from16 v10, p3

    .line 299
    .line 300
    move/from16 v0, p5

    .line 301
    .line 302
    move/from16 v8, v16

    .line 303
    .line 304
    goto/16 :goto_b

    .line 305
    .line 306
    :goto_7
    :try_start_5
    monitor-exit v17
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 307
    throw v0

    .line 308
    :cond_f
    move/from16 v9, p4

    .line 309
    .line 310
    move-object/from16 v13, p0

    .line 311
    .line 312
    move v0, v10

    .line 313
    :goto_8
    move/from16 v10, p3

    .line 314
    .line 315
    goto :goto_b

    .line 316
    :cond_10
    move/from16 v9, p4

    .line 317
    .line 318
    move/from16 v7, p7

    .line 319
    .line 320
    move v0, v10

    .line 321
    if-lt v0, v1, :cond_12

    .line 322
    .line 323
    move/from16 v10, p3

    .line 324
    .line 325
    move-object/from16 v13, p0

    .line 326
    .line 327
    if-ge v10, v1, :cond_13

    .line 328
    .line 329
    iget-object v1, v13, Lcom/android/server/am/AppRestrictionController;->mSettingsLock:Ljava/lang/Object;

    .line 330
    .line 331
    monitor-enter v1

    .line 332
    :try_start_6
    iget-object v2, v13, Lcom/android/server/am/AppRestrictionController;->mActiveUids:Landroid/util/SparseArrayMap;

    .line 333
    .line 334
    invoke-virtual {v2, v12, v11}, Landroid/util/SparseArrayMap;->indexOfKey(ILjava/lang/Object;)I

    .line 335
    .line 336
    .line 337
    move-result v2

    .line 338
    if-ltz v2, :cond_11

    .line 339
    .line 340
    iget-object v2, v13, Lcom/android/server/am/AppRestrictionController;->mActiveUids:Landroid/util/SparseArrayMap;

    .line 341
    .line 342
    const/4 v3, 0x0

    .line 343
    invoke-virtual {v2, v12, v11, v3}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    .line 345
    .line 346
    goto :goto_9

    .line 347
    :catchall_3
    move-exception v0

    .line 348
    goto :goto_a

    .line 349
    :cond_11
    :goto_9
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 350
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 351
    .line 352
    .line 353
    move-result v3

    .line 354
    move/from16 v1, v18

    .line 355
    .line 356
    and-int v4, v1, v17

    .line 357
    .line 358
    and-int/lit16 v5, v1, 0xff

    .line 359
    .line 360
    move-object v1, v14

    .line 361
    move-object/from16 v2, p1

    .line 362
    .line 363
    move v6, v9

    .line 364
    invoke-interface/range {v1 .. v7}, Lcom/android/server/usage/AppStandbyInternal;->maybeUnrestrictApp(Ljava/lang/String;IIIII)V

    .line 365
    .line 366
    .line 367
    invoke-static {}, Landroid/app/Flags;->appRestrictionsApi()Z

    .line 368
    .line 369
    .line 370
    move-result v1

    .line 371
    if-nez v1, :cond_13

    .line 372
    .line 373
    move-object/from16 v1, p0

    .line 374
    .line 375
    move-object/from16 v2, p1

    .line 376
    .line 377
    move/from16 v3, p2

    .line 378
    .line 379
    move v4, v0

    .line 380
    move/from16 v5, p3

    .line 381
    .line 382
    move-object v6, v15

    .line 383
    move v7, v9

    .line 384
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/AppRestrictionController;->logAppBackgroundRestrictionInfo(Ljava/lang/String;IIILcom/android/server/am/AppRestrictionController$TrackerInfo;I)V

    .line 385
    .line 386
    .line 387
    goto :goto_b

    .line 388
    :goto_a
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 389
    throw v0

    .line 390
    :cond_12
    move-object/from16 v13, p0

    .line 391
    .line 392
    goto :goto_8

    .line 393
    :cond_13
    :goto_b
    if-eqz v8, :cond_14

    .line 394
    .line 395
    invoke-static {}, Landroid/app/Flags;->appRestrictionsApi()Z

    .line 396
    .line 397
    .line 398
    move-result v1

    .line 399
    if-eqz v1, :cond_14

    .line 400
    .line 401
    if-eqz v0, :cond_14

    .line 402
    .line 403
    move-object/from16 v1, p0

    .line 404
    .line 405
    move-object/from16 v2, p1

    .line 406
    .line 407
    move/from16 v3, p2

    .line 408
    .line 409
    move v4, v0

    .line 410
    move/from16 v5, p3

    .line 411
    .line 412
    move-object v6, v15

    .line 413
    move v7, v9

    .line 414
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/AppRestrictionController;->logAppBackgroundRestrictionInfo(Ljava/lang/String;IIILcom/android/server/am/AppRestrictionController$TrackerInfo;I)V

    .line 415
    .line 416
    .line 417
    :cond_14
    return-void

    .line 418
    :catchall_4
    move-exception v0

    .line 419
    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 420
    :try_start_9
    throw v0

    .line 421
    :goto_c
    monitor-exit v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 422
    throw v0
.end method

.method public final calcAppRestrictionLevel(Ljava/lang/String;IIIZZ)Landroid/util/Pair;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppHibernationInternal:Lcom/android/server/apphibernation/AppHibernationService$LocalService;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    const-class v1, Lcom/android/server/apphibernation/AppHibernationService$LocalService;

    .line 8
    .line 9
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lcom/android/server/apphibernation/AppHibernationService$LocalService;

    .line 14
    .line 15
    iput-object v1, v0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppHibernationInternal:Lcom/android/server/apphibernation/AppHibernationService$LocalService;

    .line 16
    .line 17
    :cond_0
    iget-object v1, v0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppHibernationInternal:Lcom/android/server/apphibernation/AppHibernationService$LocalService;

    .line 18
    .line 19
    iget-object v1, v1, Lcom/android/server/apphibernation/AppHibernationService$LocalService;->mService:Lcom/android/server/apphibernation/AppHibernationService;

    .line 20
    .line 21
    invoke-virtual {v1, p1, p2}, Lcom/android/server/apphibernation/AppHibernationService;->isHibernatingForUser(Ljava/lang/String;I)Z

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mEmptyTrackerInfo:Lcom/android/server/am/AppRestrictionController$TrackerInfo;

    .line 26
    .line 27
    if-eqz p2, :cond_1

    .line 28
    .line 29
    new-instance p0, Landroid/util/Pair;

    .line 30
    .line 31
    const/16 p1, 0x3c

    .line 32
    .line 33
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-direct {p0, p1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    return-object p0

    .line 41
    :cond_1
    const/4 p2, 0x5

    .line 42
    const/16 v2, 0x14

    .line 43
    .line 44
    const/4 v3, 0x0

    .line 45
    if-eq p4, p2, :cond_b

    .line 46
    .line 47
    const/16 p2, 0x32

    .line 48
    .line 49
    if-eq p4, p2, :cond_2

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    invoke-static {}, Landroid/app/Flags;->appRestrictionsApi()Z

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-nez v4, :cond_3

    .line 57
    .line 58
    move v2, p2

    .line 59
    goto/16 :goto_3

    .line 60
    .line 61
    :cond_3
    :goto_0
    iget-object v4, v0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    .line 62
    .line 63
    if-nez v4, :cond_4

    .line 64
    .line 65
    const-class v4, Lcom/android/server/AppStateTracker;

    .line 66
    .line 67
    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    check-cast v4, Lcom/android/server/AppStateTracker;

    .line 72
    .line 73
    iput-object v4, v0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    .line 74
    .line 75
    :cond_4
    iget-object v0, v0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    .line 76
    .line 77
    invoke-interface {v0, p3, p1}, Lcom/android/server/AppStateTracker;->isAppBackgroundRestricted(ILjava/lang/String;)Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_5

    .line 82
    .line 83
    new-instance p0, Landroid/util/Pair;

    .line 84
    .line 85
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-direct {p0, p1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    return-object p0

    .line 93
    :cond_5
    const/16 v0, 0x2d

    .line 94
    .line 95
    if-ne p4, v0, :cond_6

    .line 96
    .line 97
    const/16 p4, 0x28

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_6
    const/16 p4, 0x1e

    .line 101
    .line 102
    :goto_1
    if-eqz p6, :cond_a

    .line 103
    .line 104
    const/16 p6, 0x64

    .line 105
    .line 106
    invoke-virtual {p0, p3, p6, p1}, Lcom/android/server/am/AppRestrictionController;->calcAppRestrictionLevelFromTackers(IILjava/lang/String;)Landroid/util/Pair;

    .line 107
    .line 108
    .line 109
    move-result-object p6

    .line 110
    iget-object v0, p6, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 111
    .line 112
    check-cast v0, Ljava/lang/Integer;

    .line 113
    .line 114
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-ne v0, v2, :cond_7

    .line 119
    .line 120
    new-instance p0, Landroid/util/Pair;

    .line 121
    .line 122
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    iget-object p2, p6, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 127
    .line 128
    check-cast p2, Lcom/android/server/am/AppRestrictionController$TrackerInfo;

    .line 129
    .line 130
    invoke-direct {p0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    return-object p0

    .line 134
    :cond_7
    if-le v0, p4, :cond_8

    .line 135
    .line 136
    iget-object p4, p6, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 137
    .line 138
    move-object v3, p4

    .line 139
    check-cast v3, Lcom/android/server/am/AppRestrictionController$TrackerInfo;

    .line 140
    .line 141
    move v2, v0

    .line 142
    goto :goto_2

    .line 143
    :cond_8
    move v2, p4

    .line 144
    :goto_2
    if-ne v2, p2, :cond_b

    .line 145
    .line 146
    if-eqz p5, :cond_9

    .line 147
    .line 148
    const/4 p4, 0x0

    .line 149
    iget-object p5, p0, Lcom/android/server/am/AppRestrictionController;->mBgHandler:Lcom/android/server/am/AppRestrictionController$BgHandler;

    .line 150
    .line 151
    const/4 p6, 0x4

    .line 152
    invoke-virtual {p5, p6, p3, p4, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 153
    .line 154
    .line 155
    move-result-object p4

    .line 156
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    .line 157
    .line 158
    .line 159
    :cond_9
    invoke-virtual {p0, p3, p2, p1}, Lcom/android/server/am/AppRestrictionController;->calcAppRestrictionLevelFromTackers(IILjava/lang/String;)Landroid/util/Pair;

    .line 160
    .line 161
    .line 162
    move-result-object p0

    .line 163
    iget-object p1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 164
    .line 165
    check-cast p1, Ljava/lang/Integer;

    .line 166
    .line 167
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 168
    .line 169
    .line 170
    move-result v2

    .line 171
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 172
    .line 173
    move-object v3, p0

    .line 174
    check-cast v3, Lcom/android/server/am/AppRestrictionController$TrackerInfo;

    .line 175
    .line 176
    goto :goto_3

    .line 177
    :cond_a
    move v2, p4

    .line 178
    :cond_b
    :goto_3
    new-instance p0, Landroid/util/Pair;

    .line 179
    .line 180
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    invoke-direct {p0, p1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 185
    .line 186
    .line 187
    return-object p0
.end method

.method public final calcAppRestrictionLevelFromTackers(IILjava/lang/String;)Landroid/util/Pair;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x0

    .line 11
    move-object v3, v2

    .line 12
    move v2, v1

    .line 13
    :goto_0
    if-ltz v0, :cond_1

    .line 14
    .line 15
    iget-object v4, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    check-cast v4, Lcom/android/server/am/BaseAppStateTracker;

    .line 22
    .line 23
    iget-object v4, v4, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    .line 24
    .line 25
    iget-object v4, v4, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    .line 26
    .line 27
    invoke-virtual {v4, p1, p2, p3}, Lcom/android/server/am/BaseAppStatePolicy;->getProposedRestrictionLevel(IILjava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eq v1, v2, :cond_0

    .line 36
    .line 37
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Lcom/android/server/am/BaseAppStateTracker;

    .line 44
    .line 45
    move-object v3, v2

    .line 46
    move v2, v1

    .line 47
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    if-nez v3, :cond_2

    .line 51
    .line 52
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mEmptyTrackerInfo:Lcom/android/server/am/AppRestrictionController$TrackerInfo;

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_2
    new-instance p0, Lcom/android/server/am/AppRestrictionController$TrackerInfo;

    .line 56
    .line 57
    invoke-virtual {v3}, Lcom/android/server/am/BaseAppStateTracker;->getType()I

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    invoke-virtual {v3, p1}, Lcom/android/server/am/BaseAppStateTracker;->getTrackerInfoForStatsd(I)[B

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-direct {p0, p2, p1}, Lcom/android/server/am/AppRestrictionController$TrackerInfo;-><init>(I[B)V

    .line 66
    .line 67
    .line 68
    :goto_1
    new-instance p1, Landroid/util/Pair;

    .line 69
    .line 70
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    invoke-direct {p1, p2, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    return-object p1
.end method

.method public getBackgroundHandlerThread()Landroid/os/HandlerThread;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mBgHandlerThread:Landroid/os/HandlerThread;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getBackgroundRestrictionExemptionReason(I)I
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRestrictionController;->getPotentialSystemExemptionReason(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/android/server/am/AppRestrictionController$Injector;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_4

    .line 22
    .line 23
    array-length v2, v0

    .line 24
    const/4 v3, 0x0

    .line 25
    move v4, v3

    .line 26
    :goto_0
    if-ge v4, v2, :cond_2

    .line 27
    .line 28
    aget-object v5, v0, v4

    .line 29
    .line 30
    invoke-virtual {p0, p1, v5}, Lcom/android/server/am/AppRestrictionController;->getPotentialSystemExemptionReason(ILjava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    if-eq v5, v1, :cond_1

    .line 35
    .line 36
    return v5

    .line 37
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    array-length v2, v0

    .line 41
    :goto_1
    if-ge v3, v2, :cond_4

    .line 42
    .line 43
    aget-object v4, v0, v3

    .line 44
    .line 45
    invoke-virtual {p0, p1, v4}, Lcom/android/server/am/AppRestrictionController;->getPotentialUserAllowedExemptionReason(ILjava/lang/String;)I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    if-eq v4, v1, :cond_3

    .line 50
    .line 51
    return v4

    .line 52
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_4
    return v1
.end method

.method public final getPotentialSystemExemptionReason(I)I
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0x33

    return p0

    .line 2
    :cond_0
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mSystemDeviceIdleAllowlist:Landroid/util/ArraySet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mSystemDeviceIdleExceptIdleAllowlist:Landroid/util/ArraySet;

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 p0, 0x3f

    return p0

    .line 6
    :cond_2
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 7
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v1

    const-string/jumbo v2, "no_control_apps"

    .line 8
    invoke-virtual {v1, v2, v0}, Lcom/android/server/pm/UserManagerInternal;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 p0, 0x143

    return p0

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    if-nez v0, :cond_4

    .line 10
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 11
    :cond_4
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 12
    invoke-virtual {p0, p1}, Landroid/app/ActivityManagerInternal;->isDeviceOwner(I)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 p0, 0x37

    return p0

    .line 13
    :cond_5
    invoke-virtual {p0, p1}, Landroid/app/ActivityManagerInternal;->isProfileOwner(I)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 p0, 0x38

    return p0

    .line 14
    :cond_6
    invoke-virtual {p0, p1}, Landroid/app/ActivityManagerInternal;->getUidProcessState(I)I

    move-result p0

    if-gtz p0, :cond_7

    const/16 p0, 0xa

    return p0

    :cond_7
    const/4 p1, 0x1

    if-gt p0, p1, :cond_8

    const/16 p0, 0xb

    return p0

    :cond_8
    const/4 p0, -0x1

    return p0

    :cond_9
    :goto_0
    const/16 p0, 0x12c

    return p0
.end method

.method public final getPotentialSystemExemptionReason(ILjava/lang/String;)I
    .locals 11

    .line 15
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppStandbyInternal()Lcom/android/server/usage/AppStandbyInternal;

    move-result-object v1

    .line 17
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    .line 18
    iget-object v3, v2, Lcom/android/server/am/AppRestrictionController$Injector;->mAppOpsManager:Landroid/app/AppOpsManager;

    if-nez v3, :cond_0

    .line 19
    iget-object v3, v2, Lcom/android/server/am/AppRestrictionController$Injector;->mContext:Landroid/content/Context;

    .line 20
    const-class v4, Landroid/app/AppOpsManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager;

    iput-object v3, v2, Lcom/android/server/am/AppRestrictionController$Injector;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 21
    :cond_0
    iget-object v2, v2, Lcom/android/server/am/AppRestrictionController$Injector;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 22
    iget-object v3, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    .line 23
    iget-object v3, v3, Lcom/android/server/am/AppRestrictionController$Injector;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    .line 24
    iget-object v3, v3, Lcom/android/server/am/AppRestrictionController;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 25
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 26
    iget-object v5, p0, Lcom/android/server/am/AppRestrictionController;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 27
    :try_start_0
    iget-object v6, p0, Lcom/android/server/am/AppRestrictionController;->mSystemModulesCache:Ljava/util/HashMap;

    invoke-virtual {v6, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v6, :cond_1

    .line 28
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    monitor-exit v5

    goto :goto_2

    :catchall_0
    move-exception p0

    goto/16 :goto_7

    .line 29
    :cond_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    iget-object v5, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    .line 31
    iget-object v5, v5, Lcom/android/server/am/AppRestrictionController$Injector;->mContext:Landroid/content/Context;

    .line 32
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 33
    :try_start_1
    invoke-virtual {v5, p2, v7}, Landroid/content/pm/PackageManager;->getModuleInfo(Ljava/lang/String;I)Landroid/content/pm/ModuleInfo;

    move-result-object v6
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v6, :cond_2

    move v6, v8

    goto :goto_0

    :catch_0
    :cond_2
    move v6, v7

    :goto_0
    if-nez v6, :cond_4

    .line 34
    :try_start_2
    invoke-virtual {v5, p2, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 35
    iget-object v5, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 36
    invoke-static {}, Landroid/os/Environment;->getApexDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    .line 37
    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v5, :cond_3

    move v5, v8

    goto :goto_1

    :cond_3
    move v5, v7

    :goto_1
    move v6, v5

    .line 38
    :catch_1
    :cond_4
    iget-object v9, p0, Lcom/android/server/am/AppRestrictionController;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 39
    :try_start_3
    iget-object v5, p0, Lcom/android/server/am/AppRestrictionController;->mSystemModulesCache:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v5, p2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_2
    if-eqz v6, :cond_5

    const/16 p0, 0x140

    return p0

    .line 41
    :cond_5
    iget-object v5, p0, Lcom/android/server/am/AppRestrictionController;->mCarrierPrivilegedLock:Ljava/lang/Object;

    monitor-enter v5

    .line 42
    :try_start_4
    iget-object v6, p0, Lcom/android/server/am/AppRestrictionController;->mCarrierPrivilegedApps:Landroid/util/SparseArray;

    if-eqz v6, :cond_7

    .line 43
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    sub-int/2addr v6, v8

    :goto_3
    if-ltz v6, :cond_7

    .line 44
    iget-object v9, p0, Lcom/android/server/am/AppRestrictionController;->mCarrierPrivilegedApps:Landroid/util/SparseArray;

    invoke-virtual {v9, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Set;

    invoke-interface {v9, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 45
    monitor-exit v5

    move v5, v8

    goto :goto_4

    :catchall_1
    move-exception p0

    goto/16 :goto_6

    :cond_6
    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    .line 46
    :cond_7
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move v5, v7

    :goto_4
    if-eqz v5, :cond_8

    const/16 p0, 0x141

    return p0

    .line 47
    :cond_8
    iget-object v5, p0, Lcom/android/server/am/AppRestrictionController;->mBgRestrictionExemptioFromSysConfig:Landroid/util/ArraySet;

    if-eqz v5, :cond_9

    .line 48
    invoke-virtual {v5, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    move v5, v8

    goto :goto_5

    :cond_9
    move v5, v7

    :goto_5
    const/16 v6, 0x12c

    if-eqz v5, :cond_a

    return v6

    .line 49
    :cond_a
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mConstantsObserver:Lcom/android/server/am/AppRestrictionController$ConstantsObserver;

    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgRestrictionExemptedPackages:Ljava/util/Set;

    invoke-interface {p0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    return v6

    .line 50
    :cond_b
    check-cast v0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 51
    iget-object p0, v0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 52
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    .line 53
    invoke-virtual {p0, v4, p2}, Lcom/android/server/pm/ProtectedPackages;->isPackageStateProtected(ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/16 p0, 0x142

    return p0

    .line 54
    :cond_c
    invoke-interface {v1, p2, v4}, Lcom/android/server/usage/AppStandbyInternal;->isActiveDeviceAdmin(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_d

    const/16 p0, 0x144

    return p0

    .line 55
    :cond_d
    iget-object p0, v3, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean p0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFlagSystemExemptPowerRestrictionsEnabled:Z

    if-eqz p0, :cond_e

    const/16 p0, 0x80

    .line 56
    invoke-virtual {v2, p0, p1, p2}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result p0

    if-nez p0, :cond_e

    const/16 p0, 0x147

    return p0

    .line 57
    :cond_e
    sget-object p0, Ljava/com/android/server/am/mars/database/MARsListManager$ListManagerHolder;->INSTANCE:Ljava/com/android/server/am/mars/database/MARsListManager;

    .line 58
    iget-object p0, p0, Ljava/com/android/server/am/mars/database/MARsListManager;->mFgsExemptionPackages:Ljava/util/Set;

    .line 59
    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_10

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 60
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 61
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is exempted from MARs"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MARsListManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v8

    :cond_10
    if-eqz v7, :cond_11

    const/16 p0, 0x15e

    return p0

    :cond_11
    const/4 p0, -0x1

    return p0

    .line 62
    :goto_6
    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p0

    :catchall_2
    move-exception p0

    .line 63
    :try_start_6
    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p0

    .line 64
    :goto_7
    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw p0
.end method

.method public final getPotentialUserAllowedExemptionReason(ILjava/lang/String;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    iget-object v1, v0, Lcom/android/server/am/AppRestrictionController$Injector;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    const-class v2, Landroid/app/AppOpsManager;

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Landroid/app/AppOpsManager;

    .line 16
    .line 17
    iput-object v1, v0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 18
    .line 19
    :cond_0
    iget-object v1, v0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 20
    .line 21
    const/16 v2, 0x2f

    .line 22
    .line 23
    invoke-virtual {v1, v2, p1, p2}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-nez v2, :cond_1

    .line 28
    .line 29
    const/16 p0, 0x44

    .line 30
    .line 31
    return p0

    .line 32
    :cond_1
    const/16 v2, 0x5e

    .line 33
    .line 34
    invoke-virtual {v1, v2, p1, p2}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    if-nez p2, :cond_2

    .line 39
    .line 40
    const/16 p0, 0x45

    .line 41
    .line 42
    return p0

    .line 43
    :cond_2
    const-string p2, "android.app.role.DIALER"

    .line 44
    .line 45
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/AppRestrictionController;->isRoleHeldByUid(ILjava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    move-result p2

    .line 49
    if-eqz p2, :cond_3

    .line 50
    .line 51
    const/16 p0, 0x13e

    .line 52
    .line 53
    return p0

    .line 54
    :cond_3
    const-string p2, "android.app.role.EMERGENCY"

    .line 55
    .line 56
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/AppRestrictionController;->isRoleHeldByUid(ILjava/lang/String;)Z

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    if-eqz p2, :cond_4

    .line 61
    .line 62
    const/16 p0, 0x13f

    .line 63
    .line 64
    return p0

    .line 65
    :cond_4
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    .line 66
    .line 67
    .line 68
    move-result p2

    .line 69
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mDeviceIdleAllowlist:[I

    .line 70
    .line 71
    invoke-static {v1, p2}, Ljava/util/Arrays;->binarySearch([II)I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-gez v1, :cond_8

    .line 76
    .line 77
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mDeviceIdleExceptIdleAllowlist:[I

    .line 78
    .line 79
    invoke-static {p0, p2}, Ljava/util/Arrays;->binarySearch([II)I

    .line 80
    .line 81
    .line 82
    move-result p0

    .line 83
    if-ltz p0, :cond_5

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_5
    iget-object p0, v0, Lcom/android/server/am/AppRestrictionController$Injector;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 87
    .line 88
    if-nez p0, :cond_6

    .line 89
    .line 90
    const-class p0, Landroid/app/ActivityManagerInternal;

    .line 91
    .line 92
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    check-cast p0, Landroid/app/ActivityManagerInternal;

    .line 97
    .line 98
    iput-object p0, v0, Lcom/android/server/am/AppRestrictionController$Injector;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 99
    .line 100
    :cond_6
    iget-object p0, v0, Lcom/android/server/am/AppRestrictionController$Injector;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 101
    .line 102
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 103
    .line 104
    .line 105
    move-result p2

    .line 106
    invoke-virtual {p0, p2, p1}, Landroid/app/ActivityManagerInternal;->isAssociatedCompanionApp(II)Z

    .line 107
    .line 108
    .line 109
    move-result p0

    .line 110
    if-eqz p0, :cond_7

    .line 111
    .line 112
    const/16 p0, 0x39

    .line 113
    .line 114
    return p0

    .line 115
    :cond_7
    const/4 p0, -0x1

    .line 116
    return p0

    .line 117
    :cond_8
    :goto_0
    const/16 p0, 0x41

    .line 118
    .line 119
    return p0
.end method

.method public final getUidBatteryExemptedUsageSince(IIJJ)Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;
    .locals 8

    .line 1
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppBatteryExemptionTracker:Lcom/android/server/am/AppBatteryExemptionTracker;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    .line 8
    .line 9
    check-cast v0, Lcom/android/server/am/AppBatteryExemptionTracker$AppBatteryExemptionPolicy;

    .line 10
    .line 11
    iget-boolean v0, v0, Lcom/android/server/am/BaseAppStatePolicy;->mTrackerEnabled:Z

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    sget-object p0, Lcom/android/server/am/AppBatteryTracker;->BATTERY_USAGE_NONE:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    .line 19
    .line 20
    monitor-enter v0

    .line 21
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BaseAppStateEventsTracker;->mPkgEvents:Lcom/android/server/am/UidProcessMap;

    .line 22
    .line 23
    const-string v2, ""

    .line 24
    .line 25
    invoke-virtual {v1, p1, v2}, Lcom/android/server/am/UidProcessMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    move-object v2, v1

    .line 30
    check-cast v2, Lcom/android/server/am/AppBatteryExemptionTracker$UidBatteryStates;

    .line 31
    .line 32
    if-nez v2, :cond_1

    .line 33
    .line 34
    sget-object p0, Lcom/android/server/am/AppBatteryTracker;->BATTERY_USAGE_NONE:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    .line 35
    .line 36
    monitor-exit v0

    .line 37
    goto :goto_1

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    goto :goto_2

    .line 40
    :cond_1
    move v3, p2

    .line 41
    move-wide v4, p3

    .line 42
    move-wide v6, p5

    .line 43
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/AppBatteryExemptionTracker$UidBatteryStates;->getBatteryUsageSince(IJJ)Landroid/util/Pair;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    iget-object p3, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast p3, Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    .line 51
    .line 52
    const/4 p4, 0x0

    .line 53
    :goto_0
    iget-object p5, p3, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mUsage:[D

    .line 54
    .line 55
    array-length p6, p5

    .line 56
    if-ge p4, p6, :cond_3

    .line 57
    .line 58
    aget-wide p5, p5, p4

    .line 59
    .line 60
    const-wide/16 v0, 0x0

    .line 61
    .line 62
    cmpl-double p5, p5, v0

    .line 63
    .line 64
    if-lez p5, :cond_2

    .line 65
    .line 66
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    .line 67
    .line 68
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRestrictionController;->getUidBatteryUsage(I)Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    iget-object p1, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast p1, Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    .line 75
    .line 76
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    new-instance p3, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    .line 80
    .line 81
    invoke-direct {p3, p1}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;-><init>(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p3, p0}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->add(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)V

    .line 85
    .line 86
    .line 87
    iget-object p0, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast p0, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    .line 90
    .line 91
    invoke-virtual {p3, p0}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->subtract(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    .line 92
    .line 93
    .line 94
    new-instance p0, Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    .line 95
    .line 96
    invoke-direct {p0, p3}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;-><init>(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)V

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_2
    add-int/lit8 p4, p4, 0x1

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_3
    iget-object p0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast p0, Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    .line 106
    .line 107
    :goto_1
    return-object p0

    .line 108
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    throw p0
.end method

.method public final getUidBatteryUsage(I)Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppBatteryTracker:Lcom/android/server/am/AppBatteryTracker;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/am/AppBatteryTracker;->updateBatteryUsageStatsIfNecessary(JZ)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iget-object v1, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    .line 20
    .line 21
    monitor-enter v1

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mBgHandler:Lcom/android/server/am/AppRestrictionController$BgHandler;

    .line 25
    .line 26
    iget-object v2, p0, Lcom/android/server/am/AppBatteryTracker;->mBgBatteryUsageStatsPolling:Lcom/android/server/am/AppBatteryTracker$$ExternalSyntheticLambda0;

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/android/server/am/AppBatteryTracker;->scheduleBgBatteryUsageStatsCheck()V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_2

    .line 37
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsage:Landroid/util/SparseArray;

    .line 38
    .line 39
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    check-cast p0, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    .line 44
    .line 45
    if-eqz p0, :cond_1

    .line 46
    .line 47
    new-instance p1, Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    .line 48
    .line 49
    invoke-direct {p1, p0}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;-><init>(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)V

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    sget-object p1, Lcom/android/server/am/AppBatteryTracker;->BATTERY_USAGE_NONE:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    .line 54
    .line 55
    :goto_1
    monitor-exit v1

    .line 56
    return-object p1

    .line 57
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    throw p0
.end method

.method public final handleUidInactive(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mTmpRunnables:Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mSettingsLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mActiveUids:Landroid/util/SparseArrayMap;

    .line 7
    .line 8
    invoke-virtual {v2, p1}, Landroid/util/SparseArrayMap;->indexOfKey(I)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-gez p1, :cond_0

    .line 13
    .line 14
    monitor-exit v1

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_2

    .line 18
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mActiveUids:Landroid/util/SparseArrayMap;

    .line 19
    .line 20
    invoke-virtual {v2, p1}, Landroid/util/SparseArrayMap;->numElementsForKeyAt(I)I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const/4 v3, 0x0

    .line 25
    move v4, v3

    .line 26
    :goto_0
    if-ge v4, v2, :cond_2

    .line 27
    .line 28
    iget-object v5, p0, Lcom/android/server/am/AppRestrictionController;->mActiveUids:Landroid/util/SparseArrayMap;

    .line 29
    .line 30
    invoke-virtual {v5, p1, v4}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    check-cast v5, Ljava/lang/Runnable;

    .line 35
    .line 36
    if-eqz v5, :cond_1

    .line 37
    .line 38
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mActiveUids:Landroid/util/SparseArrayMap;

    .line 45
    .line 46
    invoke-virtual {p0, p1}, Landroid/util/SparseArrayMap;->deleteAt(I)V

    .line 47
    .line 48
    .line 49
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    :goto_1
    if-ge v3, p0, :cond_3

    .line 55
    .line 56
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    check-cast p1, Ljava/lang/Runnable;

    .line 61
    .line 62
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 63
    .line 64
    .line 65
    add-int/lit8 v3, v3, 0x1

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    throw p0
.end method

.method public final hasForegroundServices(ILjava/lang/String;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppFGSTracker:Lcom/android/server/am/AppFGSTracker;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateEventsTracker;->mPkgEvents:Lcom/android/server/am/UidProcessMap;

    .line 9
    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/UidProcessMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Lcom/android/server/am/AppFGSTracker$PackageDurations;

    .line 15
    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    sget p1, Lcom/android/server/am/AppFGSTracker$PackageDurations;->DEFAULT_INDEX:I

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lcom/android/server/am/BaseAppStateDurations;->isActive(I)Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    if-eqz p0, :cond_0

    .line 25
    .line 26
    const/4 p0, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 p0, 0x0

    .line 29
    :goto_0
    monitor-exit v0

    .line 30
    return p0

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw p0
.end method

.method public final initRestrictionStates()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    array-length v1, v0

    .line 12
    const/4 v2, 0x0

    .line 13
    move v3, v2

    .line 14
    :goto_0
    if-ge v3, v1, :cond_0

    .line 15
    .line 16
    aget v4, v0, v3

    .line 17
    .line 18
    invoke-virtual {p0, v4}, Lcom/android/server/am/AppRestrictionController;->refreshAppRestrictionLevelForUser(I)V

    .line 19
    .line 20
    .line 21
    add-int/lit8 v3, v3, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->scheduleLoadFromXml()V

    .line 27
    .line 28
    .line 29
    array-length v1, v0

    .line 30
    :goto_1
    if-ge v2, v1, :cond_1

    .line 31
    .line 32
    aget v3, v0, v2

    .line 33
    .line 34
    iget-object v4, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    .line 35
    .line 36
    invoke-virtual {v4, v3}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->schedulePersistToXml(I)V

    .line 37
    .line 38
    .line 39
    add-int/lit8 v2, v2, 0x1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    return-void
.end method

.method public final isRoleHeldByUid(ILjava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mUidRolesMapping:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Ljava/util/ArrayList;

    .line 11
    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-ltz p0, :cond_0

    .line 19
    .line 20
    const/4 p0, 0x1

    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    :goto_0
    monitor-exit v0

    .line 26
    return p0

    .line 27
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw p0
.end method

.method public final loadAppIdsFromPackageList(Landroid/util/ArraySet;Landroid/util/ArraySet;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    add-int/lit8 v0, v0, -0x1

    .line 14
    .line 15
    :goto_0
    if-ltz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/lang/String;

    .line 22
    .line 23
    const/high16 v2, 0x100000

    .line 24
    .line 25
    :try_start_0
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    if-nez v1, :cond_0

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_0
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 33
    .line 34
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {p2, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    .line 45
    :catch_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    return-void
.end method

.method public final logAppBackgroundRestrictionInfo(Ljava/lang/String;IIILcom/android/server/am/AppRestrictionController$TrackerInfo;I)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p4

    .line 4
    .line 5
    move-object/from16 v2, p5

    .line 6
    .line 7
    move/from16 v3, p6

    .line 8
    .line 9
    invoke-static/range {p4 .. p4}, Lcom/android/server/am/AppRestrictionController;->getRestrictionLevelStatsd(I)I

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    const/16 v5, 0x400

    .line 14
    .line 15
    const/4 v6, 0x2

    .line 16
    const/4 v7, 0x0

    .line 17
    const/4 v8, 0x1

    .line 18
    if-eq v3, v5, :cond_1

    .line 19
    .line 20
    const/16 v5, 0x600

    .line 21
    .line 22
    if-eq v3, v5, :cond_0

    .line 23
    .line 24
    move v3, v7

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move v3, v8

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    move v3, v6

    .line 29
    :goto_0
    iget v5, v2, Lcom/android/server/am/AppRestrictionController$TrackerInfo;->mType:I

    .line 30
    .line 31
    const/4 v9, 0x6

    .line 32
    const/4 v10, 0x7

    .line 33
    const/4 v11, 0x3

    .line 34
    packed-switch v5, :pswitch_data_0

    .line 35
    .line 36
    .line 37
    move v12, v7

    .line 38
    goto :goto_1

    .line 39
    :pswitch_0
    move v12, v10

    .line 40
    goto :goto_1

    .line 41
    :pswitch_1
    move v12, v9

    .line 42
    goto :goto_1

    .line 43
    :pswitch_2
    const/4 v12, 0x5

    .line 44
    goto :goto_1

    .line 45
    :pswitch_3
    const/4 v12, 0x4

    .line 46
    goto :goto_1

    .line 47
    :pswitch_4
    move v12, v11

    .line 48
    goto :goto_1

    .line 49
    :pswitch_5
    move v12, v6

    .line 50
    goto :goto_1

    .line 51
    :pswitch_6
    move v12, v8

    .line 52
    :goto_1
    const/4 v13, 0x0

    .line 53
    iget-object v2, v2, Lcom/android/server/am/AppRestrictionController$TrackerInfo;->mInfo:[B

    .line 54
    .line 55
    if-ne v5, v11, :cond_2

    .line 56
    .line 57
    move-object v14, v2

    .line 58
    goto :goto_2

    .line 59
    :cond_2
    move-object v14, v13

    .line 60
    :goto_2
    if-ne v5, v8, :cond_3

    .line 61
    .line 62
    move-object v15, v2

    .line 63
    goto :goto_3

    .line 64
    :cond_3
    move-object v15, v13

    .line 65
    :goto_3
    if-ne v5, v9, :cond_4

    .line 66
    .line 67
    move-object v9, v2

    .line 68
    goto :goto_4

    .line 69
    :cond_4
    move-object v9, v13

    .line 70
    :goto_4
    if-ne v5, v10, :cond_5

    .line 71
    .line 72
    move-object v13, v2

    .line 73
    :cond_5
    const/16 v2, 0x14

    .line 74
    .line 75
    if-eq v1, v2, :cond_6

    .line 76
    .line 77
    move/from16 v2, p2

    .line 78
    .line 79
    move v10, v8

    .line 80
    goto :goto_5

    .line 81
    :cond_6
    move/from16 v2, p2

    .line 82
    .line 83
    invoke-virtual {v0, v2}, Lcom/android/server/am/AppRestrictionController;->getBackgroundRestrictionExemptionReason(I)I

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    invoke-static {v5}, Landroid/os/PowerExemptionManager;->getExemptionReasonForStatsd(I)I

    .line 88
    .line 89
    .line 90
    move-result v5

    .line 91
    move v10, v5

    .line 92
    :goto_5
    const/16 v5, 0xa

    .line 93
    .line 94
    if-eq v1, v5, :cond_9

    .line 95
    .line 96
    const/16 v5, 0x1e

    .line 97
    .line 98
    if-eq v1, v5, :cond_8

    .line 99
    .line 100
    const/16 v5, 0x32

    .line 101
    .line 102
    if-eq v1, v5, :cond_7

    .line 103
    .line 104
    move/from16 v16, v7

    .line 105
    .line 106
    goto :goto_6

    .line 107
    :cond_7
    move/from16 v16, v6

    .line 108
    .line 109
    goto :goto_6

    .line 110
    :cond_8
    move/from16 v16, v8

    .line 111
    .line 112
    goto :goto_6

    .line 113
    :cond_9
    move/from16 v16, v11

    .line 114
    .line 115
    :goto_6
    iget-object v0, v0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    .line 116
    .line 117
    iget-object v0, v0, Lcom/android/server/am/AppRestrictionController$Injector;->mContext:Landroid/content/Context;

    .line 118
    .line 119
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    if-nez v0, :cond_b

    .line 124
    .line 125
    :catch_0
    :cond_a
    :goto_7
    move v11, v7

    .line 126
    goto :goto_8

    .line 127
    :cond_b
    move-object/from16 v1, p1

    .line 128
    .line 129
    :try_start_0
    invoke-virtual {v0, v1, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    if-eqz v0, :cond_a

    .line 134
    .line 135
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 136
    .line 137
    if-nez v0, :cond_c

    .line 138
    .line 139
    goto :goto_7

    .line 140
    :cond_c
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    .line 142
    const/16 v1, 0x1f

    .line 143
    .line 144
    if-ge v0, v1, :cond_d

    .line 145
    .line 146
    move v11, v8

    .line 147
    goto :goto_8

    .line 148
    :cond_d
    const/16 v1, 0x21

    .line 149
    .line 150
    if-ge v0, v1, :cond_e

    .line 151
    .line 152
    move v11, v6

    .line 153
    goto :goto_8

    .line 154
    :cond_e
    if-ne v0, v1, :cond_a

    .line 155
    .line 156
    :goto_8
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    .line 157
    .line 158
    .line 159
    move-result v17

    .line 160
    invoke-static/range {p3 .. p3}, Lcom/android/server/am/AppRestrictionController;->getRestrictionLevelStatsd(I)I

    .line 161
    .line 162
    .line 163
    move-result v18

    .line 164
    const/16 v0, 0x1b9

    .line 165
    .line 166
    move/from16 v1, p2

    .line 167
    .line 168
    move v2, v4

    .line 169
    move v4, v12

    .line 170
    move-object v5, v14

    .line 171
    move-object v6, v15

    .line 172
    move-object v7, v9

    .line 173
    move-object v8, v13

    .line 174
    move v9, v10

    .line 175
    move/from16 v10, v16

    .line 176
    .line 177
    move/from16 v12, v17

    .line 178
    .line 179
    move/from16 v13, v18

    .line 180
    .line 181
    invoke-static/range {v0 .. v13}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIII[B[B[B[BIIIZI)V

    .line 182
    .line 183
    .line 184
    return-void

    .line 185
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onRoleHoldersChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getRoleManager()Landroid/app/role/RoleManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1, p2}, Landroid/app/role/RoleManager;->getRoleHoldersAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Landroid/util/ArraySet;

    .line 12
    .line 13
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    .line 23
    .line 24
    invoke-virtual {v2}, Lcom/android/server/am/AppRestrictionController$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_0

    .line 37
    .line 38
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Ljava/lang/String;

    .line 43
    .line 44
    const-wide/32 v4, 0xc8000

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, v3, v4, v5, p2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mLock:Ljava/lang/Object;

    .line 60
    .line 61
    monitor-enter v0

    .line 62
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mUidRolesMapping:Landroid/util/SparseArray;

    .line 63
    .line 64
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    add-int/lit8 v2, v2, -0x1

    .line 69
    .line 70
    :goto_1
    if-ltz v2, :cond_4

    .line 71
    .line 72
    iget-object v3, p0, Lcom/android/server/am/AppRestrictionController;->mUidRolesMapping:Landroid/util/SparseArray;

    .line 73
    .line 74
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    if-eq v4, p2, :cond_1

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_1
    iget-object v4, p0, Lcom/android/server/am/AppRestrictionController;->mUidRolesMapping:Landroid/util/SparseArray;

    .line 86
    .line 87
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    check-cast v4, Ljava/util/ArrayList;

    .line 92
    .line 93
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 94
    .line 95
    .line 96
    move-result v5

    .line 97
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 98
    .line 99
    .line 100
    move-result-object v6

    .line 101
    invoke-virtual {v1, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v6

    .line 105
    if-ltz v5, :cond_2

    .line 106
    .line 107
    if-nez v6, :cond_3

    .line 108
    .line 109
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    if-eqz v3, :cond_3

    .line 117
    .line 118
    iget-object v3, p0, Lcom/android/server/am/AppRestrictionController;->mUidRolesMapping:Landroid/util/SparseArray;

    .line 119
    .line 120
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->removeAt(I)V

    .line 121
    .line 122
    .line 123
    goto :goto_2

    .line 124
    :catchall_0
    move-exception p0

    .line 125
    goto :goto_4

    .line 126
    :cond_2
    if-eqz v6, :cond_3

    .line 127
    .line 128
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, -0x1

    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_4
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 142
    .line 143
    .line 144
    move-result p2

    .line 145
    add-int/lit8 p2, p2, -0x1

    .line 146
    .line 147
    :goto_3
    if-ltz p2, :cond_5

    .line 148
    .line 149
    new-instance v2, Ljava/util/ArrayList;

    .line 150
    .line 151
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    iget-object v3, p0, Lcom/android/server/am/AppRestrictionController;->mUidRolesMapping:Landroid/util/SparseArray;

    .line 158
    .line 159
    invoke-virtual {v1, p2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v4

    .line 163
    check-cast v4, Ljava/lang/Integer;

    .line 164
    .line 165
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 166
    .line 167
    .line 168
    move-result v4

    .line 169
    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 170
    .line 171
    .line 172
    add-int/lit8 p2, p2, -0x1

    .line 173
    .line 174
    goto :goto_3

    .line 175
    :cond_5
    monitor-exit v0

    .line 176
    return-void

    .line 177
    :goto_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    throw p0
.end method

.method public final onSystemReady()V
    .locals 11

    .line 1
    const-string v0, "activity_manager"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mBgExecutor:Landroid/os/HandlerExecutor;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mConstantsObserver:Lcom/android/server/am/AppRestrictionController$ConstantsObserver;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mConstantsObserver:Lcom/android/server/am/AppRestrictionController$ConstantsObserver;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->updateBgAutoRestrictedBucketChanged()V

    .line 13
    .line 14
    .line 15
    const-string v1, "bg_auto_restrict_abusive_apps"

    .line 16
    .line 17
    const-string v2, "activity_manager"

    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    invoke-static {v2, v1, v3}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    iput-boolean v1, v0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgAutoRestrictAbusiveApps:Z

    .line 25
    .line 26
    const-string v1, "bg_abusive_notification_minimal_interval"

    .line 27
    .line 28
    const-string v2, "activity_manager"

    .line 29
    .line 30
    const-wide v3, 0x9a7ec800L

    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    invoke-static {v2, v1, v3, v4}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 36
    .line 37
    .line 38
    move-result-wide v1

    .line 39
    iput-wide v1, v0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgAbusiveNotificationMinIntervalMs:J

    .line 40
    .line 41
    const-string v1, "bg_long_fgs_notification_minimal_interval"

    .line 42
    .line 43
    const-string v2, "activity_manager"

    .line 44
    .line 45
    invoke-static {v2, v1, v3, v4}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 46
    .line 47
    .line 48
    move-result-wide v1

    .line 49
    iput-wide v1, v0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgLongFgsNotificationMinIntervalMs:J

    .line 50
    .line 51
    const-string v1, "bg_prompt_fgs_with_noti_to_bg_restricted"

    .line 52
    .line 53
    iget-boolean v2, v0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mDefaultBgPromptFgsWithNotiToBgRestricted:Z

    .line 54
    .line 55
    const-string v3, "activity_manager"

    .line 56
    .line 57
    invoke-static {v3, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    iput-boolean v1, v0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgPromptFgsWithNotiToBgRestricted:Z

    .line 62
    .line 63
    const-string v1, "bg_prompt_fgs_with_noti_on_long_running"

    .line 64
    .line 65
    const-string v2, "activity_manager"

    .line 66
    .line 67
    const/4 v3, 0x0

    .line 68
    invoke-static {v2, v1, v3}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    iput-boolean v1, v0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgPromptFgsWithNotiOnLongRunning:Z

    .line 73
    .line 74
    const-string v1, "bg_prompt_fgs_on_long_running"

    .line 75
    .line 76
    const-string v2, "activity_manager"

    .line 77
    .line 78
    invoke-static {v2, v1, v3}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    iput-boolean v1, v0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgPromptFgsOnLongRunning:Z

    .line 83
    .line 84
    const-string v1, "bg_prompt_abusive_apps_to_bg_restricted"

    .line 85
    .line 86
    iget-boolean v2, v0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mDefaultBgPromptAbusiveAppToBgRestricted:Z

    .line 87
    .line 88
    const-string v4, "activity_manager"

    .line 89
    .line 90
    invoke-static {v4, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    iput-boolean v1, v0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgPromptAbusiveAppsToBgRestricted:Z

    .line 95
    .line 96
    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->updateBgRestrictionExemptedPackages()V

    .line 97
    .line 98
    .line 99
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    iget-object v1, v0, Lcom/android/server/SystemConfig;->mBgRestrictionExemption:Landroid/util/ArraySet;

    .line 104
    .line 105
    iput-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mBgRestrictionExemptioFromSysConfig:Landroid/util/ArraySet;

    .line 106
    .line 107
    iget-object v1, v0, Lcom/android/server/SystemConfig;->mAllowInPowerSaveExceptIdle:Landroid/util/ArraySet;

    .line 108
    .line 109
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mSystemDeviceIdleExceptIdleAllowlist:Landroid/util/ArraySet;

    .line 110
    .line 111
    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/AppRestrictionController;->loadAppIdsFromPackageList(Landroid/util/ArraySet;Landroid/util/ArraySet;)V

    .line 112
    .line 113
    .line 114
    iget-object v0, v0, Lcom/android/server/SystemConfig;->mAllowInPowerSave:Landroid/util/ArraySet;

    .line 115
    .line 116
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mSystemDeviceIdleAllowlist:Landroid/util/ArraySet;

    .line 117
    .line 118
    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/AppRestrictionController;->loadAppIdsFromPackageList(Landroid/util/ArraySet;Landroid/util/ArraySet;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController;->initRestrictionStates()V

    .line 122
    .line 123
    .line 124
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    .line 125
    .line 126
    iget-object v0, v0, Lcom/android/server/am/AppRestrictionController$Injector;->mContext:Landroid/content/Context;

    .line 127
    .line 128
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getInstalledModules(I)Ljava/util/List;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    if-nez v0, :cond_0

    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mLock:Ljava/lang/Object;

    .line 140
    .line 141
    monitor-enter v1

    .line 142
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 147
    .line 148
    .line 149
    move-result v2

    .line 150
    if-eqz v2, :cond_1

    .line 151
    .line 152
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    check-cast v2, Landroid/content/pm/ModuleInfo;

    .line 157
    .line 158
    iget-object v4, p0, Lcom/android/server/am/AppRestrictionController;->mSystemModulesCache:Ljava/util/HashMap;

    .line 159
    .line 160
    invoke-virtual {v2}, Landroid/content/pm/ModuleInfo;->getPackageName()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 165
    .line 166
    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    goto :goto_0

    .line 170
    :catchall_0
    move-exception p0

    .line 171
    goto/16 :goto_4

    .line 172
    .line 173
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    :goto_1
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    .line 175
    .line 176
    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    sget-object v2, Lcom/android/server/am/AppRestrictionController;->ROLES_IN_INTEREST:[Ljava/lang/String;

    .line 185
    .line 186
    move v4, v3

    .line 187
    :goto_2
    const/4 v5, 0x2

    .line 188
    if-ge v4, v5, :cond_3

    .line 189
    .line 190
    aget-object v5, v2, v4

    .line 191
    .line 192
    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getRoleManager()Landroid/app/role/RoleManager;

    .line 193
    .line 194
    .line 195
    move-result-object v6

    .line 196
    invoke-virtual {v6, v5}, Landroid/app/role/RoleManager;->isRoleAvailable(Ljava/lang/String;)Z

    .line 197
    .line 198
    .line 199
    move-result v6

    .line 200
    if-eqz v6, :cond_2

    .line 201
    .line 202
    array-length v6, v1

    .line 203
    move v7, v3

    .line 204
    :goto_3
    if-ge v7, v6, :cond_2

    .line 205
    .line 206
    aget v8, v1, v7

    .line 207
    .line 208
    invoke-static {v8}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 209
    .line 210
    .line 211
    move-result-object v8

    .line 212
    invoke-virtual {p0, v5, v8}, Lcom/android/server/am/AppRestrictionController;->onRoleHoldersChanged(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 213
    .line 214
    .line 215
    add-int/lit8 v7, v7, 0x1

    .line 216
    .line 217
    goto :goto_3

    .line 218
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 219
    .line 220
    goto :goto_2

    .line 221
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    .line 222
    .line 223
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 224
    .line 225
    .line 226
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mUidObserver:Lcom/android/server/am/AppRestrictionController$5;

    .line 231
    .line 232
    const-string v2, "android"

    .line 233
    .line 234
    const/16 v3, 0xf

    .line 235
    .line 236
    const/4 v4, 0x4

    .line 237
    invoke-interface {v0, v1, v3, v4, v2}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 238
    .line 239
    .line 240
    :catch_0
    new-instance v0, Landroid/content/IntentFilter;

    .line 241
    .line 242
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 243
    .line 244
    .line 245
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 246
    .line 247
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    const-string v1, "android.intent.action.PACKAGE_FULLY_REMOVED"

    .line 251
    .line 252
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    const-string/jumbo v1, "package"

    .line 256
    .line 257
    .line 258
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mContext:Landroid/content/Context;

    .line 262
    .line 263
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mBroadcastReceiver:Lcom/android/server/am/AppRestrictionController$1;

    .line 264
    .line 265
    iget-object v3, p0, Lcom/android/server/am/AppRestrictionController;->mBgHandler:Lcom/android/server/am/AppRestrictionController$BgHandler;

    .line 266
    .line 267
    const/4 v4, 0x0

    .line 268
    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 269
    .line 270
    .line 271
    new-instance v0, Landroid/content/IntentFilter;

    .line 272
    .line 273
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 274
    .line 275
    .line 276
    const-string v1, "android.intent.action.USER_ADDED"

    .line 277
    .line 278
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    const-string v1, "android.intent.action.USER_REMOVED"

    .line 282
    .line 283
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    const-string v1, "android.intent.action.UID_REMOVED"

    .line 287
    .line 288
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mContext:Landroid/content/Context;

    .line 292
    .line 293
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mBroadcastReceiver:Lcom/android/server/am/AppRestrictionController$1;

    .line 294
    .line 295
    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 296
    .line 297
    .line 298
    new-instance v8, Landroid/content/IntentFilter;

    .line 299
    .line 300
    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 301
    .line 302
    .line 303
    const-string v0, "android.intent.action.LOCKED_BOOT_COMPLETED"

    .line 304
    .line 305
    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    iget-object v5, p0, Lcom/android/server/am/AppRestrictionController;->mContext:Landroid/content/Context;

    .line 309
    .line 310
    iget-object v6, p0, Lcom/android/server/am/AppRestrictionController;->mBootReceiver:Lcom/android/server/am/AppRestrictionController$1;

    .line 311
    .line 312
    sget-object v7, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 313
    .line 314
    const/4 v9, 0x0

    .line 315
    iget-object v10, p0, Lcom/android/server/am/AppRestrictionController;->mBgHandler:Lcom/android/server/am/AppRestrictionController$BgHandler;

    .line 316
    .line 317
    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 318
    .line 319
    .line 320
    new-instance v0, Landroid/content/IntentFilter;

    .line 321
    .line 322
    const-string v1, "android.telephony.action.MULTI_SIM_CONFIG_CHANGED"

    .line 323
    .line 324
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mContext:Landroid/content/Context;

    .line 328
    .line 329
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mBroadcastReceiver:Lcom/android/server/am/AppRestrictionController$1;

    .line 330
    .line 331
    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 332
    .line 333
    .line 334
    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController;->registerCarrierPrivilegesCallbacks()V

    .line 335
    .line 336
    .line 337
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mNotificationHelper:Lcom/android/server/am/AppRestrictionController$NotificationHelper;

    .line 338
    .line 339
    iget-object v1, v0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mContext:Landroid/content/Context;

    .line 340
    .line 341
    iget-object v2, v0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mActionButtonReceiver:Lcom/android/server/am/AppRestrictionController$1;

    .line 342
    .line 343
    new-instance v3, Landroid/content/IntentFilter;

    .line 344
    .line 345
    const-string/jumbo v4, "com.android.server.am.ACTION_FGS_MANAGER_TRAMPOLINE"

    .line 346
    .line 347
    .line 348
    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    iget-object v0, v0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mBgController:Lcom/android/server/am/AppRestrictionController;

    .line 352
    .line 353
    iget-object v5, v0, Lcom/android/server/am/AppRestrictionController;->mBgHandler:Lcom/android/server/am/AppRestrictionController$BgHandler;

    .line 354
    .line 355
    const/4 v6, 0x4

    .line 356
    const-string v4, "android.permission.MANAGE_ACTIVITY_TASKS"

    .line 357
    .line 358
    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 359
    .line 360
    .line 361
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    .line 362
    .line 363
    iget-object v1, v0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    .line 364
    .line 365
    if-nez v1, :cond_4

    .line 366
    .line 367
    const-class v1, Lcom/android/server/AppStateTracker;

    .line 368
    .line 369
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 370
    .line 371
    .line 372
    move-result-object v1

    .line 373
    check-cast v1, Lcom/android/server/AppStateTracker;

    .line 374
    .line 375
    iput-object v1, v0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    .line 376
    .line 377
    :cond_4
    iget-object v0, v0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    .line 378
    .line 379
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mBackgroundRestrictionListener:Lcom/android/server/am/AppRestrictionController$3;

    .line 380
    .line 381
    invoke-interface {v0, v1}, Lcom/android/server/AppStateTracker;->addBackgroundRestrictedAppListener(Lcom/android/server/AppStateTracker$BackgroundRestrictedAppListener;)V

    .line 382
    .line 383
    .line 384
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    .line 385
    .line 386
    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppStandbyInternal()Lcom/android/server/usage/AppStandbyInternal;

    .line 387
    .line 388
    .line 389
    move-result-object v0

    .line 390
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mAppIdleStateChangeListener:Lcom/android/server/am/AppRestrictionController$4;

    .line 391
    .line 392
    invoke-interface {v0, v1}, Lcom/android/server/usage/AppStandbyInternal;->addListener(Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;)V

    .line 393
    .line 394
    .line 395
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    .line 396
    .line 397
    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getRoleManager()Landroid/app/role/RoleManager;

    .line 398
    .line 399
    .line 400
    move-result-object v0

    .line 401
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mExecutor:Landroid/os/HandlerExecutor;

    .line 402
    .line 403
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mRoleHolderChangedListener:Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda1;

    .line 404
    .line 405
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 406
    .line 407
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/role/RoleManager;->addOnRoleHoldersChangedListenerAsUser(Ljava/util/concurrent/Executor;Landroid/app/role/OnRoleHoldersChangedListener;Landroid/os/UserHandle;)V

    .line 408
    .line 409
    .line 410
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    .line 411
    .line 412
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mBgHandler:Lcom/android/server/am/AppRestrictionController$BgHandler;

    .line 413
    .line 414
    new-instance v2, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda4;

    .line 415
    .line 416
    invoke-direct {v2, p0}, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/am/AppRestrictionController;)V

    .line 417
    .line 418
    .line 419
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 420
    .line 421
    .line 422
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 423
    .line 424
    .line 425
    return-void

    .line 426
    :goto_4
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 427
    throw p0
.end method

.method public final refreshAppRestrictionLevelForUid(IIIZ)V
    .locals 18

    .line 1
    move-object/from16 v9, p0

    .line 2
    .line 3
    iget-object v0, v9, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/server/am/AppRestrictionController$Injector;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    move/from16 v10, p1

    .line 12
    .line 13
    invoke-virtual {v1, v10}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v11

    .line 17
    invoke-static {v11}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppStandbyInternal()Lcom/android/server/usage/AppStandbyInternal;

    .line 25
    .line 26
    .line 27
    move-result-object v12

    .line 28
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 29
    .line 30
    .line 31
    move-result v13

    .line 32
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 33
    .line 34
    .line 35
    move-result-wide v14

    .line 36
    array-length v8, v11

    .line 37
    const/4 v0, 0x0

    .line 38
    move v1, v0

    .line 39
    :goto_0
    if-ge v1, v8, :cond_1

    .line 40
    .line 41
    aget-object v16, v11, v1

    .line 42
    .line 43
    const/4 v7, 0x0

    .line 44
    move-object v2, v12

    .line 45
    move-object/from16 v3, v16

    .line 46
    .line 47
    move v4, v13

    .line 48
    move-wide v5, v14

    .line 49
    invoke-interface/range {v2 .. v7}, Lcom/android/server/usage/AppStandbyInternal;->getAppStandbyBucket(Ljava/lang/String;IJZ)I

    .line 50
    .line 51
    .line 52
    move-result v7

    .line 53
    const/4 v6, 0x1

    .line 54
    move-object/from16 v0, p0

    .line 55
    .line 56
    move/from16 v17, v1

    .line 57
    .line 58
    move-object/from16 v1, v16

    .line 59
    .line 60
    move v2, v13

    .line 61
    move/from16 v3, p1

    .line 62
    .line 63
    move v4, v7

    .line 64
    move/from16 v5, p4

    .line 65
    .line 66
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/AppRestrictionController;->calcAppRestrictionLevel(Ljava/lang/String;IIIZZ)Landroid/util/Pair;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v1, Ljava/lang/Integer;

    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 79
    .line 80
    move-object v4, v0

    .line 81
    check-cast v4, Lcom/android/server/am/AppRestrictionController$TrackerInfo;

    .line 82
    .line 83
    move-object/from16 v0, p0

    .line 84
    .line 85
    move-object/from16 v1, v16

    .line 86
    .line 87
    move/from16 v2, p1

    .line 88
    .line 89
    move v5, v7

    .line 90
    move/from16 v7, p2

    .line 91
    .line 92
    move/from16 v16, v8

    .line 93
    .line 94
    move/from16 v8, p3

    .line 95
    .line 96
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/AppRestrictionController;->applyRestrictionLevel(Ljava/lang/String;IILcom/android/server/am/AppRestrictionController$TrackerInfo;IZII)V

    .line 97
    .line 98
    .line 99
    add-int/lit8 v1, v17, 0x1

    .line 100
    .line 101
    move/from16 v8, v16

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_1
    return-void
.end method

.method public final refreshAppRestrictionLevelForUser(I)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppStandbyInternal()Lcom/android/server/usage/AppStandbyInternal;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v1, p1}, Lcom/android/server/usage/AppStandbyInternal;->getAppStandbyBuckets(I)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    .line 19
    .line 20
    .line 21
    move-result-object v9

    .line 22
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v10

    .line 26
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    move-object v7, v0

    .line 37
    check-cast v7, Landroid/app/usage/AppStandbyInfo;

    .line 38
    .line 39
    iget-object v0, v7, Landroid/app/usage/AppStandbyInfo;->mPackageName:Ljava/lang/String;

    .line 40
    .line 41
    const-wide/32 v1, 0xc8000

    .line 42
    .line 43
    .line 44
    invoke-virtual {v9, v0, v1, v2, p1}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    .line 45
    .line 46
    .line 47
    move-result v8

    .line 48
    if-gez v8, :cond_1

    .line 49
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string v1, "Unable to find "

    .line 53
    .line 54
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget-object v1, v7, Landroid/app/usage/AppStandbyInfo;->mPackageName:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v1, "/u"

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    const-string v1, "ActivityManager"

    .line 75
    .line 76
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_1
    iget-object v1, v7, Landroid/app/usage/AppStandbyInfo;->mPackageName:Ljava/lang/String;

    .line 81
    .line 82
    iget v4, v7, Landroid/app/usage/AppStandbyInfo;->mStandbyBucket:I

    .line 83
    .line 84
    const/4 v5, 0x0

    .line 85
    const/4 v6, 0x0

    .line 86
    move-object v0, p0

    .line 87
    move v2, p1

    .line 88
    move v3, v8

    .line 89
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/AppRestrictionController;->calcAppRestrictionLevel(Ljava/lang/String;IIIZZ)Landroid/util/Pair;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    iget-object v1, v7, Landroid/app/usage/AppStandbyInfo;->mPackageName:Ljava/lang/String;

    .line 94
    .line 95
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast v2, Ljava/lang/Integer;

    .line 98
    .line 99
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 104
    .line 105
    move-object v4, v0

    .line 106
    check-cast v4, Lcom/android/server/am/AppRestrictionController$TrackerInfo;

    .line 107
    .line 108
    iget v5, v7, Landroid/app/usage/AppStandbyInfo;->mStandbyBucket:I

    .line 109
    .line 110
    const/4 v6, 0x1

    .line 111
    const/16 v7, 0x400

    .line 112
    .line 113
    const/4 v11, 0x2

    .line 114
    move-object v0, p0

    .line 115
    move v2, v8

    .line 116
    move v8, v11

    .line 117
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/AppRestrictionController;->applyRestrictionLevel(Ljava/lang/String;IILcom/android/server/am/AppRestrictionController$TrackerInfo;IZII)V

    .line 118
    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_2
    return-void
.end method

.method public final registerCarrierPrivilegesCallbacks()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/am/AppRestrictionController$Injector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    iget-object v1, v0, Lcom/android/server/am/AppRestrictionController$Injector;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    const-class v2, Landroid/telephony/TelephonyManager;

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 16
    .line 17
    iput-object v1, v0, Lcom/android/server/am/AppRestrictionController$Injector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 18
    .line 19
    :cond_0
    iget-object v0, v0, Lcom/android/server/am/AppRestrictionController$Injector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    new-instance v2, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    :goto_0
    if-ge v3, v1, :cond_2

    .line 35
    .line 36
    new-instance v4, Lcom/android/server/am/AppRestrictionController$PhoneCarrierPrivilegesCallback;

    .line 37
    .line 38
    invoke-direct {v4, p0, v3}, Lcom/android/server/am/AppRestrictionController$PhoneCarrierPrivilegesCallback;-><init>(Lcom/android/server/am/AppRestrictionController;I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    iget-object v5, p0, Lcom/android/server/am/AppRestrictionController;->mExecutor:Landroid/os/HandlerExecutor;

    .line 45
    .line 46
    invoke-virtual {v0, v3, v5, v4}, Landroid/telephony/TelephonyManager;->registerCarrierPrivilegesCallback(ILjava/util/concurrent/Executor;Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;)V

    .line 47
    .line 48
    .line 49
    add-int/lit8 v3, v3, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    iput-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mCarrierPrivilegesCallbacks:Ljava/util/ArrayList;

    .line 53
    .line 54
    return-void
.end method

.method public resetRestrictionSettings()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mSettingsLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    .line 5
    .line 6
    invoke-virtual {v1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->reset()V

    .line 7
    .line 8
    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController;->initRestrictionStates()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    throw p0
.end method

.method public tearDown()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mConstantsObserver:Lcom/android/server/am/AppRestrictionController$ConstantsObserver;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/provider/DeviceConfig;->removeOnPropertiesChangedListener(Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mUidObserver:Lcom/android/server/am/AppRestrictionController$5;

    .line 16
    .line 17
    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->unregisterUidObserver(Landroid/app/IUidObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    :catch_0
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mBroadcastReceiver:Lcom/android/server/am/AppRestrictionController$1;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mContext:Landroid/content/Context;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mBootReceiver:Lcom/android/server/am/AppRestrictionController$1;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 32
    .line 33
    .line 34
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->removeXml()V

    .line 37
    .line 38
    .line 39
    return-void
.end method
