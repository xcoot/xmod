.class public final Lcom/android/server/companion/virtual/VirtualDeviceLog$UidToPackageNameCache;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mUidToPackagesCache:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceLog$UidToPackageNameCache;->mUidToPackagesCache:Landroid/util/SparseArray;

    .line 11
    iput-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceLog$UidToPackageNameCache;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 13
    return-void
.end method
