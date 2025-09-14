.class public final synthetic Lcom/android/server/display/LogicalDisplayMapper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/LogicalDisplayMapper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/LogicalDisplayMapper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/display/LogicalDisplayMapper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/LogicalDisplayMapper;

    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplayMapper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/LogicalDisplayMapper;

    .line 3
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPowerManager:Landroid/os/PowerManager;

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 8
    move-result-wide v0

    .line 9
    const/16 v2, 0xc

    .line 11
    const-string/jumbo v3, "server.display:unfold"

    .line 14
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    .line 17
    return-void
.end method
