.class public final synthetic Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    invoke-static {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mstemPrimaryPress(Lcom/android/server/policy/PhoneWindowManager;I)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 16
    .line 17
    const-string v0, "StemPrimaryKeyRule: executing deferred onKeyUp"

    .line 18
    .line 19
    const-string v1, "WindowManager"

    .line 20
    .line 21
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mActivityManagerService:Landroid/app/IActivityManager;

    .line 25
    .line 26
    invoke-interface {v0}, Landroid/app/IActivityManager;->getFocusedRootTaskInfo()Landroid/app/ActivityTaskManager$RootTaskInfo;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedTaskInfoOnStemPrimarySingleKeyUp:Landroid/app/ActivityTaskManager$RootTaskInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception v0

    .line 34
    const-string v2, "StemPrimaryKeyRule: onKeyUp: error while getting focused task info."

    .line 35
    .line 36
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 37
    .line 38
    .line 39
    :goto_0
    const/4 v0, 0x1

    .line 40
    invoke-static {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mstemPrimaryPress(Lcom/android/server/policy/PhoneWindowManager;I)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    nop

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
