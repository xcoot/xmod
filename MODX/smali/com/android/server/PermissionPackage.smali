.class public Lcom/android/server/PermissionPackage;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final packages:Ljava/util/HashSet;

.field public final seinfos:Ljava/util/HashSet;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/HashSet;

    .line 6
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/PermissionPackage;->seinfos:Ljava/util/HashSet;

    .line 11
    new-instance v0, Ljava/util/HashSet;

    .line 13
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/server/PermissionPackage;->packages:Ljava/util/HashSet;

    .line 18
    new-instance p0, Ljava/util/HashSet;

    .line 20
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 23
    return-void
.end method
