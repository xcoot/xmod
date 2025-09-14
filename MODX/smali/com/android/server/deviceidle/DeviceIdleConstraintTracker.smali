.class public final Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public active:Z

.field public final minState:I

.field public monitoring:Z

.field public final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->active:Z

    .line 7
    iput-boolean v0, p0, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->monitoring:Z

    .line 9
    iput-object p1, p0, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->name:Ljava/lang/String;

    .line 11
    iput p2, p0, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->minState:I

    .line 13
    return-void
.end method
