.class public final synthetic Lcom/android/server/display/LogicalDisplayMapper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/LogicalDisplayMapper;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/LogicalDisplayMapper;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/display/LogicalDisplayMapper$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/display/LogicalDisplayMapper;

    .line 6
    iput p2, p0, Lcom/android/server/display/LogicalDisplayMapper$$ExternalSyntheticLambda1;->f$1:I

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/display/LogicalDisplayMapper;

    .line 3
    iget p0, p0, Lcom/android/server/display/LogicalDisplayMapper$$ExternalSyntheticLambda1;->f$1:I

    .line 5
    iget-object v0, v0, Lcom/android/server/display/LogicalDisplayMapper;->mPowerManager:Landroid/os/PowerManager;

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 10
    move-result-wide v1

    .line 11
    const/16 v3, 0xd

    .line 13
    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/os/PowerManager;->goToSleep(JII)V

    .line 16
    return-void
.end method
