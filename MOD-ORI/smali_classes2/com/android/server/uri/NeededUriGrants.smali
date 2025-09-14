.class public final Lcom/android/server/uri/NeededUriGrants;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final flags:I

.field public final targetPkg:Ljava/lang/String;

.field public final targetUid:I

.field public final uris:Landroid/util/ArraySet;


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/android/server/uri/NeededUriGrants;->targetPkg:Ljava/lang/String;

    .line 5
    .line 6
    iput p1, p0, Lcom/android/server/uri/NeededUriGrants;->targetUid:I

    .line 7
    .line 8
    iput p2, p0, Lcom/android/server/uri/NeededUriGrants;->flags:I

    .line 9
    .line 10
    new-instance p1, Landroid/util/ArraySet;

    .line 11
    .line 12
    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lcom/android/server/uri/NeededUriGrants;->uris:Landroid/util/ArraySet;

    .line 16
    .line 17
    return-void
.end method
