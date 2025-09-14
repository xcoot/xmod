.class public final synthetic Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/display/DisplayPowerController$Clock;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda11;->$r8$classId:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final uptimeMillis()J
    .locals 2

    .line 1
    iget p0, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda11;->$r8$classId:I

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method
