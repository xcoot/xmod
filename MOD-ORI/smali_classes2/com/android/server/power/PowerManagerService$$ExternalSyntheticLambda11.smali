.class public final synthetic Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/PowerManagerService;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/PowerManagerService;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/power/PowerManagerService;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda11;->f$1:I

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda11;->f$2:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/power/PowerManagerService;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda11;->f$1:I

    .line 4
    .line 5
    iget p0, p0, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda11;->f$2:I

    .line 6
    .line 7
    iput v1, v0, Lcom/android/server/power/PowerManagerService;->mHdrBrightnessUpperLimit:I

    .line 8
    .line 9
    iput p0, v0, Lcom/android/server/power/PowerManagerService;->mHdrBrightnessLimitPeriod:I

    .line 10
    .line 11
    return-void
.end method
