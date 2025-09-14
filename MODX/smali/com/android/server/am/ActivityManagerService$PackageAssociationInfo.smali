.class public final Lcom/android/server/am/ActivityManagerService$PackageAssociationInfo;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAllowedPackageAssociations:Landroid/util/ArraySet;

.field public mIsDebuggable:Z


# direct methods
.method public constructor <init>(Landroid/util/ArraySet;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$PackageAssociationInfo;->mAllowedPackageAssociations:Landroid/util/ArraySet;

    .line 6
    iput-boolean p2, p0, Lcom/android/server/am/ActivityManagerService$PackageAssociationInfo;->mIsDebuggable:Z

    .line 8
    return-void
.end method
