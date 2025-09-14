.class public final Lcom/android/server/PinnerService$PinnedApp;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public active:Z

.field public final mFiles:Ljava/util/ArrayList;

.field public final uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/PinnerService;Landroid/content/pm/ApplicationInfo;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/PinnerService$PinnedApp;->mFiles:Ljava/util/ArrayList;

    .line 10
    .line 11
    iget p2, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 12
    .line 13
    iput p2, p0, Lcom/android/server/PinnerService$PinnedApp;->uid:I

    .line 14
    .line 15
    iget-object p1, p1, Lcom/android/server/PinnerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 16
    .line 17
    invoke-virtual {p1, p2}, Landroid/app/ActivityManagerInternal;->isUidActive(I)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    iput-boolean p1, p0, Lcom/android/server/PinnerService$PinnedApp;->active:Z

    .line 22
    .line 23
    return-void
.end method
