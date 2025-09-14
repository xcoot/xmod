.class public final Landroid/net/UidRangeParcel$Builder;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field private start:I

.field private stop:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroid/net/UidRangeParcel$Builder;->start:I

    .line 6
    .line 7
    iput v0, p0, Landroid/net/UidRangeParcel$Builder;->stop:I

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public build()Landroid/net/UidRangeParcel;
    .locals 2

    .line 1
    new-instance v0, Landroid/net/UidRangeParcel;

    .line 2
    .line 3
    iget v1, p0, Landroid/net/UidRangeParcel$Builder;->start:I

    .line 4
    .line 5
    iget p0, p0, Landroid/net/UidRangeParcel$Builder;->stop:I

    .line 6
    .line 7
    invoke-direct {v0, v1, p0}, Landroid/net/UidRangeParcel;-><init>(II)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public setStart(I)Landroid/net/UidRangeParcel$Builder;
    .locals 0

    .line 1
    iput p1, p0, Landroid/net/UidRangeParcel$Builder;->start:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setStop(I)Landroid/net/UidRangeParcel$Builder;
    .locals 0

    .line 1
    iput p1, p0, Landroid/net/UidRangeParcel$Builder;->stop:I

    .line 2
    .line 3
    return-object p0
.end method
