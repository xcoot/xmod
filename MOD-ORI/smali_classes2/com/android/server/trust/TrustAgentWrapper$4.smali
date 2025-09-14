.class public final Lcom/android/server/trust/TrustAgentWrapper$4;
.super Landroid/service/trust/ITrustAgentServiceCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/trust/TrustAgentWrapper;


# direct methods
.method public constructor <init>(Lcom/android/server/trust/TrustAgentWrapper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/trust/TrustAgentWrapper$4;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/service/trust/ITrustAgentServiceCallback$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final addEscrowToken([BI)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/server/trust/TrustAgentWrapper;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "TrustAgentWrapper"

    .line 14
    .line 15
    const-string v2, "addEscrowToken(userId=%d)"

    .line 16
    .line 17
    invoke-static {v1, v2, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$4;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/android/server/trust/TrustAgentWrapper;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const v1, 0x111001f

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_1

    .line 36
    .line 37
    iget-object p0, p0, Lcom/android/server/trust/TrustAgentWrapper$4;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mHandler:Lcom/android/server/trust/TrustAgentWrapper$3;

    .line 40
    .line 41
    const/4 v0, 0x7

    .line 42
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const-string v1, "escrow_token"

    .line 51
    .line 52
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    const-string/jumbo v0, "user_id"

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 70
    .line 71
    const-string p1, "Escrow token API is not allowed."

    .line 72
    .line 73
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw p0
.end method

.method public final grantTrust(Ljava/lang/CharSequence;JILcom/android/internal/infra/AndroidFuture;)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/server/trust/TrustAgentWrapper;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    filled-new-array {p1, v0, v1}, [Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "TrustAgentWrapper"

    .line 18
    .line 19
    const-string v2, "grantTrust(message=\"%s\", durationMs=%d, flags=0x%x)"

    .line 20
    .line 21
    invoke-static {v1, v2, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object p0, p0, Lcom/android/server/trust/TrustAgentWrapper$4;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mHandler:Lcom/android/server/trust/TrustAgentWrapper$3;

    .line 27
    .line 28
    invoke-static {p1, p5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const/4 p5, 0x1

    .line 33
    const/4 v0, 0x0

    .line 34
    invoke-virtual {p0, p5, p4, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    const-string p4, "duration"

    .line 43
    .line 44
    invoke-virtual {p1, p4, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public final isEscrowTokenActive(JI)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/server/trust/TrustAgentWrapper;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "TrustAgentWrapper"

    .line 18
    .line 19
    const-string v2, "isEscrowTokenActive(handle=%016x, userId=%d)"

    .line 20
    .line 21
    invoke-static {v1, v2, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$4;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/android/server/trust/TrustAgentWrapper;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const v1, 0x111001f

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_1

    .line 40
    .line 41
    iget-object p0, p0, Lcom/android/server/trust/TrustAgentWrapper$4;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    .line 42
    .line 43
    iget-object p0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mHandler:Lcom/android/server/trust/TrustAgentWrapper$3;

    .line 44
    .line 45
    const/16 v0, 0x9

    .line 46
    .line 47
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    const-string v1, "handle"

    .line 56
    .line 57
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    const-string/jumbo p2, "user_id"

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 75
    .line 76
    const-string p1, "Escrow token API is not allowed."

    .line 77
    .line 78
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw p0
.end method

.method public final lockUser()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/server/trust/TrustAgentWrapper;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "TrustAgentWrapper"

    .line 6
    .line 7
    const-string v1, "lockUser()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object p0, p0, Lcom/android/server/trust/TrustAgentWrapper$4;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mHandler:Lcom/android/server/trust/TrustAgentWrapper$3;

    .line 15
    .line 16
    const/16 v0, 0xc

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final onConfigureCompleted(ZLandroid/os/IBinder;)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/server/trust/TrustAgentWrapper;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "TrustAgentWrapper"

    .line 14
    .line 15
    const-string/jumbo v2, "onConfigureCompleted(result=%s)"

    .line 16
    .line 17
    .line 18
    invoke-static {v1, v2, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object p0, p0, Lcom/android/server/trust/TrustAgentWrapper$4;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mHandler:Lcom/android/server/trust/TrustAgentWrapper$3;

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    const/4 v1, 0x5

    .line 27
    invoke-virtual {p0, v1, p1, v0, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final removeEscrowToken(JI)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/server/trust/TrustAgentWrapper;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "TrustAgentWrapper"

    .line 18
    .line 19
    const-string/jumbo v2, "removeEscrowToken(handle=%016x, userId=%d)"

    .line 20
    .line 21
    .line 22
    invoke-static {v1, v2, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$4;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/android/server/trust/TrustAgentWrapper;->mContext:Landroid/content/Context;

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const v1, 0x111001f

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_1

    .line 41
    .line 42
    iget-object p0, p0, Lcom/android/server/trust/TrustAgentWrapper$4;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    .line 43
    .line 44
    iget-object p0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mHandler:Lcom/android/server/trust/TrustAgentWrapper$3;

    .line 45
    .line 46
    const/16 v0, 0x8

    .line 47
    .line 48
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    const-string v1, "handle"

    .line 57
    .line 58
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    const-string/jumbo p2, "user_id"

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 76
    .line 77
    const-string p1, "Escrow token API is not allowed."

    .line 78
    .line 79
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw p0
.end method

.method public final revokeTrust()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/server/trust/TrustAgentWrapper;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "TrustAgentWrapper"

    .line 6
    .line 7
    const-string/jumbo v1, "revokeTrust()"

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object p0, p0, Lcom/android/server/trust/TrustAgentWrapper$4;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mHandler:Lcom/android/server/trust/TrustAgentWrapper$3;

    .line 16
    .line 17
    const/4 v0, 0x2

    .line 18
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final setManagingTrust(Z)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/server/trust/TrustAgentWrapper;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "TrustAgentWrapper"

    .line 14
    .line 15
    const-string/jumbo v2, "setManagingTrust(%s)"

    .line 16
    .line 17
    .line 18
    invoke-static {v1, v2, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object p0, p0, Lcom/android/server/trust/TrustAgentWrapper$4;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mHandler:Lcom/android/server/trust/TrustAgentWrapper$3;

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    const/4 v1, 0x6

    .line 27
    invoke-virtual {p0, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final showKeyguardErrorMessage(Ljava/lang/CharSequence;)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/server/trust/TrustAgentWrapper;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "TrustAgentWrapper"

    .line 10
    .line 11
    const-string/jumbo v2, "showKeyguardErrorMessage(\"%s\")"

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v2, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object p0, p0, Lcom/android/server/trust/TrustAgentWrapper$4;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mHandler:Lcom/android/server/trust/TrustAgentWrapper$3;

    .line 20
    .line 21
    const/16 v0, 0xb

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string/jumbo v1, "message"

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final unlockUserWithToken(J[BI)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/server/trust/TrustAgentWrapper;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "TrustAgentWrapper"

    .line 18
    .line 19
    const-string/jumbo v2, "unlockUserWithToken(handle=%016x, userId=%d)"

    .line 20
    .line 21
    .line 22
    invoke-static {v1, v2, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$4;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/android/server/trust/TrustAgentWrapper;->mContext:Landroid/content/Context;

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const v1, 0x111001f

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_1

    .line 41
    .line 42
    iget-object p0, p0, Lcom/android/server/trust/TrustAgentWrapper$4;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    .line 43
    .line 44
    iget-object p0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mHandler:Lcom/android/server/trust/TrustAgentWrapper$3;

    .line 45
    .line 46
    const/16 v0, 0xa

    .line 47
    .line 48
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    const-string/jumbo v1, "user_id"

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 63
    .line 64
    .line 65
    move-result-object p4

    .line 66
    const-string v0, "handle"

    .line 67
    .line 68
    invoke-virtual {p4, v0, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    const-string p2, "escrow_token"

    .line 76
    .line 77
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 85
    .line 86
    const-string p1, "Escrow token API is not allowed."

    .line 87
    .line 88
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw p0
.end method
