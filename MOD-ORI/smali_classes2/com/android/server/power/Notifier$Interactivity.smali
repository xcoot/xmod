.class public final Lcom/android/server/power/Notifier$Interactivity;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public changeOffReason:I

.field public changeOnReason:I

.field public changeStartTime:J

.field public isChanging:Z

.field public isInteractive:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/android/server/power/Notifier$Interactivity;->isInteractive:Z

    .line 6
    .line 7
    return-void
.end method
