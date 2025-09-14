.class public final Lcom/android/server/pm/KeySetHandle;
.super Landroid/os/Binder;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mId:J

.field public mRefCount:I


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/android/server/pm/KeySetHandle;->mId:J

    const/4 p1, 0x1

    .line 3
    iput p1, p0, Lcom/android/server/pm/KeySetHandle;->mRefCount:I

    return-void
.end method

.method public constructor <init>(JI)V
    .locals 0

    .line 4
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 5
    iput-wide p1, p0, Lcom/android/server/pm/KeySetHandle;->mId:J

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lcom/android/server/pm/KeySetHandle;->mRefCount:I

    return-void
.end method
