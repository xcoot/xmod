.class public final Lcom/android/server/RealTimeTokenService$1;
.super Ljava/util/TimerTask;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/RealTimeTokenService;


# direct methods
.method public constructor <init>(Lcom/android/server/RealTimeTokenService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/RealTimeTokenService$1;->this$0:Lcom/android/server/RealTimeTokenService;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    const-string v0, "RealTimeTokenService"

    .line 2
    .line 3
    const-string v1, "Time up: Check all tokens"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/RealTimeTokenService$1;->this$0:Lcom/android/server/RealTimeTokenService;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/server/RealTimeTokenService;->checkAllTokenExpiry()I

    .line 11
    .line 12
    .line 13
    return-void
.end method
