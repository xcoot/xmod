.class public final Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal$1;
.super Landroid/app/ambientcontext/IAmbientContextObserver$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;


# direct methods
.method public constructor <init>(Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal$1;->this$0:Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;

    .line 3
    invoke-direct {p0}, Landroid/app/ambientcontext/IAmbientContextObserver$Stub;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onEvents(Ljava/util/List;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal$1;->this$0:Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    const-string v1, "Detection events available: "

    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public final onRegistrationComplete(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal$1;->this$0:Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;

    .line 3
    iput p1, p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;->mLastStatus:I

    .line 5
    return-void
.end method
