.class public final synthetic Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

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
    iget v0, p0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;->safeUnbind()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    check-cast p0, Lcom/android/server/appfunctions/RunAppFunctionServiceCallback;

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    const-string v0, "RunAppFunctionServiceCallback"

    .line 20
    .line 21
    const-string v1, "Failed to connect to service"

    .line 22
    .line 23
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/server/appfunctions/RunAppFunctionServiceCallback;->mSafeExecuteAppFunctionCallback:Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;

    .line 27
    .line 28
    new-instance v0, Landroid/app/appfunctions/AppFunctionException;

    .line 29
    .line 30
    const/16 v1, 0xbb8

    .line 31
    .line 32
    const-string v2, "Failed to connect to AppFunctionService"

    .line 33
    .line 34
    invoke-direct {v0, v1, v2}, Landroid/app/appfunctions/AppFunctionException;-><init>(ILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v0}, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->onError(Landroid/app/appfunctions/AppFunctionException;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
