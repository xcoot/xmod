.class public final synthetic Lcom/android/server/am/UserController$$ExternalSyntheticLambda23;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/UserController;

.field public final synthetic f$1:Landroid/content/Intent;

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/UserController;Landroid/content/Intent;III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda23;->f$0:Lcom/android/server/am/UserController;

    .line 6
    iput-object p2, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda23;->f$1:Landroid/content/Intent;

    .line 8
    iput p3, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda23;->f$2:I

    .line 10
    iput p4, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda23;->f$3:I

    .line 12
    iput p5, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda23;->f$4:I

    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget-object v1, v0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda23;->f$0:Lcom/android/server/am/UserController;

    .line 5
    iget-object v3, v0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda23;->f$1:Landroid/content/Intent;

    .line 7
    iget v10, v0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda23;->f$2:I

    .line 9
    iget v8, v0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda23;->f$3:I

    .line 11
    iget v9, v0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda23;->f$4:I

    .line 13
    iget-object v2, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 15
    new-instance v4, Lcom/android/server/am/UserController$5;

    .line 17
    invoke-direct {v4, v1, v10}, Lcom/android/server/am/UserController$5;-><init>(Lcom/android/server/am/UserController;I)V

    .line 20
    const-string v0, "android.permission.RECEIVE_BOOT_COMPLETED"

    .line 22
    filled-new-array {v0}, [Ljava/lang/String;

    .line 25
    move-result-object v5

    .line 26
    const-class v0, Landroid/app/ActivityManagerInternal;

    .line 28
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 34
    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->getBootTimeTempAllowListDuration()J

    .line 39
    move-result-wide v0

    .line 40
    :goto_0
    move-wide v12, v0

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    const-wide/16 v0, 0x2710

    .line 44
    goto :goto_0

    .line 45
    :goto_1
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    .line 48
    move-result-object v0

    .line 49
    const/4 v14, 0x0

    .line 50
    const-string v16, ""

    .line 52
    const/16 v15, 0xc8

    .line 54
    move-object v11, v0

    .line 55
    invoke-virtual/range {v11 .. v16}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    .line 58
    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    .line 61
    move-result-object v6

    .line 62
    sget v7, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 64
    invoke-virtual/range {v2 .. v10}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Landroid/content/IIntentReceiver;[Ljava/lang/String;Landroid/os/Bundle;IIII)V

    .line 67
    return-void
.end method
