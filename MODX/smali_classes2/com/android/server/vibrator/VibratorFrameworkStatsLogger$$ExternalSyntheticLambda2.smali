.class public final synthetic Lcom/android/server/vibrator/VibratorFrameworkStatsLogger$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger$$ExternalSyntheticLambda2;->f$0:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget p0, p0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger$$ExternalSyntheticLambda2;->f$0:I

    .line 2
    .line 3
    const/16 v0, 0x54

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-static {v0, p0, v1, v2, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;II)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
