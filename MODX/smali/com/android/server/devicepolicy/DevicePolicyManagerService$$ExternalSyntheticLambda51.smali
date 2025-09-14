.class public final synthetic Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda51;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/content/ComponentName;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda51;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda51;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda51;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda51;->f$2:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 2
    iput p4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda51;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda51;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda51;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda51;->f$2:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda51;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda51;->f$0:Ljava/lang/Object;

    .line 8
    check-cast v0, Landroid/content/pm/CrossProfileApps;

    .line 10
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda51;->f$1:Ljava/lang/Object;

    .line 12
    check-cast v1, Ljava/util/List;

    .line 14
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda51;->f$2:Ljava/lang/Object;

    .line 16
    check-cast p0, Ljava/util/List;

    .line 18
    new-instance v2, Ljava/util/HashSet;

    .line 20
    invoke-direct {v2, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 23
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/CrossProfileApps;->resetInteractAcrossProfilesAppOps(Ljava/util/Collection;Ljava/util/Set;)V

    .line 26
    return-void

    .line 27
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda51;->f$0:Ljava/lang/Object;

    .line 29
    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 31
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda51;->f$1:Ljava/lang/Object;

    .line 33
    check-cast v1, Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 35
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda51;->f$2:Ljava/lang/Object;

    .line 37
    check-cast p0, Lcom/android/internal/infra/AndroidFuture;

    .line 39
    const-string/jumbo v2, "fused"

    .line 42
    const-string/jumbo v3, "network"

    .line 45
    const-string/jumbo v4, "gps"

    .line 48
    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    .line 51
    move-result-object v2

    .line 52
    const/4 v3, 0x0

    .line 53
    invoke-virtual {v0, v1, p0, v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->tryRetrieveAndSendLocationUpdate(Lcom/android/server/devicepolicy/ActiveAdmin;Lcom/android/internal/infra/AndroidFuture;[Ljava/lang/String;I)V

    .line 56
    return-void

    .line 57
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda51;->f$0:Ljava/lang/Object;

    .line 59
    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 61
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda51;->f$1:Ljava/lang/Object;

    .line 63
    check-cast v1, Lcom/android/server/devicepolicy/CallerIdentity;

    .line 65
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda51;->f$2:Ljava/lang/Object;

    .line 67
    check-cast p0, Landroid/graphics/Bitmap;

    .line 69
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 71
    iget v1, v1, Lcom/android/server/devicepolicy/CallerIdentity;->mUid:I

    .line 73
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 76
    move-result v1

    .line 77
    invoke-virtual {v0, v1, p0}, Lcom/android/server/pm/UserManagerInternal;->setUserIcon(ILandroid/graphics/Bitmap;)V

    .line 80
    return-void

    .line 81
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda51;->f$0:Ljava/lang/Object;

    .line 83
    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 85
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda51;->f$1:Ljava/lang/Object;

    .line 87
    move-object v4, v1

    .line 88
    check-cast v4, Landroid/os/ParcelFileDescriptor;

    .line 90
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda51;->f$2:Ljava/lang/Object;

    .line 92
    move-object v5, p0

    .line 93
    check-cast v5, Landroid/app/admin/StartInstallingUpdateCallback;

    .line 95
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    const-string/jumbo p0, "ro.build.ab_update"

    .line 101
    const-string v1, ""

    .line 103
    invoke-static {p0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 106
    move-result-object p0

    .line 107
    const-string/jumbo v1, "true"

    .line 110
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 113
    move-result p0

    .line 114
    if-eqz p0, :cond_0

    .line 116
    new-instance p0, Lcom/android/server/devicepolicy/AbUpdateInstaller;

    .line 118
    iget-object v3, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    .line 120
    iget-object v6, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 122
    iget-object v7, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mConstants:Lcom/android/server/devicepolicy/DevicePolicyConstants;

    .line 124
    move-object v2, p0

    .line 125
    invoke-direct/range {v2 .. v7}, Lcom/android/server/devicepolicy/UpdateInstaller;-><init>(Landroid/content/Context;Landroid/os/ParcelFileDescriptor;Landroid/app/admin/StartInstallingUpdateCallback;Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;Lcom/android/server/devicepolicy/DevicePolicyConstants;)V

    .line 128
    const/4 v0, 0x0

    .line 129
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/AbUpdateInstaller;->mUpdateInstalled:Z

    .line 131
    goto :goto_0

    .line 132
    :cond_0
    new-instance p0, Lcom/android/server/devicepolicy/NonAbUpdateInstaller;

    .line 134
    iget-object v3, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    .line 136
    iget-object v6, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 138
    iget-object v7, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mConstants:Lcom/android/server/devicepolicy/DevicePolicyConstants;

    .line 140
    move-object v2, p0

    .line 141
    invoke-direct/range {v2 .. v7}, Lcom/android/server/devicepolicy/UpdateInstaller;-><init>(Landroid/content/Context;Landroid/os/ParcelFileDescriptor;Landroid/app/admin/StartInstallingUpdateCallback;Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;Lcom/android/server/devicepolicy/DevicePolicyConstants;)V

    .line 144
    :goto_0
    const/4 v0, 0x0

    .line 145
    iput-object v0, p0, Lcom/android/server/devicepolicy/UpdateInstaller;->mCopiedUpdateFile:Ljava/io/File;

    .line 147
    iget-object v1, p0, Lcom/android/server/devicepolicy/UpdateInstaller;->mContext:Landroid/content/Context;

    .line 149
    new-instance v2, Landroid/content/IntentFilter;

    .line 151
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    .line 153
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 159
    move-result-object v0

    .line 160
    const-string/jumbo v1, "level"

    .line 163
    const/4 v2, -0x1

    .line 164
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 167
    move-result v1

    .line 168
    const-string/jumbo v3, "scale"

    .line 171
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 174
    move-result v3

    .line 175
    mul-int/lit8 v1, v1, 0x64

    .line 177
    int-to-float v1, v1

    .line 178
    int-to-float v3, v3

    .line 179
    div-float/2addr v1, v3

    .line 180
    const-string/jumbo v3, "plugged"

    .line 183
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 186
    move-result v0

    .line 187
    iget-object v2, p0, Lcom/android/server/devicepolicy/UpdateInstaller;->mConstants:Lcom/android/server/devicepolicy/DevicePolicyConstants;

    .line 189
    if-lez v0, :cond_1

    .line 191
    iget v0, v2, Lcom/android/server/devicepolicy/DevicePolicyConstants;->BATTERY_THRESHOLD_CHARGING:I

    .line 193
    int-to-float v0, v0

    .line 194
    cmpl-float v0, v1, v0

    .line 196
    if-ltz v0, :cond_2

    .line 198
    goto :goto_1

    .line 199
    :cond_1
    iget v0, v2, Lcom/android/server/devicepolicy/DevicePolicyConstants;->BATTERY_THRESHOLD_NOT_CHARGING:I

    .line 201
    int-to-float v0, v0

    .line 202
    cmpl-float v0, v1, v0

    .line 204
    if-ltz v0, :cond_2

    .line 206
    :goto_1
    new-instance v0, Ljava/lang/Thread;

    .line 208
    new-instance v1, Lcom/android/server/devicepolicy/UpdateInstaller$$ExternalSyntheticLambda0;

    .line 210
    invoke-direct {v1, p0}, Lcom/android/server/devicepolicy/UpdateInstaller$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/devicepolicy/UpdateInstaller;)V

    .line 213
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 216
    const/16 p0, 0xa

    .line 218
    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setPriority(I)V

    .line 221
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 224
    goto :goto_2

    .line 225
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 227
    const-string v1, "The battery level must be above "

    .line 229
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 232
    iget v1, v2, Lcom/android/server/devicepolicy/DevicePolicyConstants;->BATTERY_THRESHOLD_NOT_CHARGING:I

    .line 234
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 237
    const-string v1, " while not charging or above "

    .line 239
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    iget v1, v2, Lcom/android/server/devicepolicy/DevicePolicyConstants;->BATTERY_THRESHOLD_CHARGING:I

    .line 244
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 247
    const-string v1, " while charging"

    .line 249
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 255
    move-result-object v0

    .line 256
    const/4 v1, 0x5

    .line 257
    invoke-virtual {p0, v1, v0}, Lcom/android/server/devicepolicy/UpdateInstaller;->notifyCallbackOnError(ILjava/lang/String;)V

    .line 260
    :goto_2
    return-void

    .line 261
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda51;->f$0:Ljava/lang/Object;

    .line 263
    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 265
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda51;->f$1:Ljava/lang/Object;

    .line 267
    check-cast v1, Landroid/content/ComponentName;

    .line 269
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda51;->f$2:Ljava/lang/Object;

    .line 271
    check-cast p0, Landroid/os/Bundle;

    .line 273
    iget-object v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 275
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    .line 278
    move-result v2

    .line 279
    if-nez v2, :cond_3

    .line 281
    const/16 v2, 0x22

    .line 283
    invoke-static {v2}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    .line 286
    move-result-object v2

    .line 287
    invoke-virtual {v2, v1}, Landroid/app/admin/DevicePolicyEventLogger;->setAdmin(Landroid/content/ComponentName;)Landroid/app/admin/DevicePolicyEventLogger;

    .line 290
    move-result-object v1

    .line 291
    invoke-virtual {v1, p0}, Landroid/app/admin/DevicePolicyEventLogger;->setKnoxBundleValue(Landroid/os/Bundle;)Landroid/app/admin/DevicePolicyEventLogger;

    .line 294
    move-result-object p0

    .line 295
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    .line 298
    iget-object p0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 300
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    .line 302
    const-class v0, Landroid/os/PowerManager;

    .line 304
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 307
    move-result-object p0

    .line 308
    check-cast p0, Landroid/os/PowerManager;

    .line 310
    const-string/jumbo v0, "deviceowner"

    .line 313
    invoke-virtual {p0, v0}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 316
    return-void

    .line 317
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 319
    const-string v0, "Cannot be called with ongoing call on the device"

    .line 321
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 324
    throw p0

    .line 325
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
