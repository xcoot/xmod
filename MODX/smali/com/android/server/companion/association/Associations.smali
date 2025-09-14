.class public final Lcom/android/server/companion/association/Associations;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mAssociations:Ljava/util/List;

.field public mMaxId:I

.field public mVersion:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/server/companion/association/Associations;->mVersion:I

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    .line 9
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    iput-object v1, p0, Lcom/android/server/companion/association/Associations;->mAssociations:Ljava/util/List;

    .line 14
    iput v0, p0, Lcom/android/server/companion/association/Associations;->mMaxId:I

    .line 16
    return-void
.end method
