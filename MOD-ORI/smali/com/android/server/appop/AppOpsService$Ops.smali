.class public final Lcom/android/server/appop/AppOpsService$Ops;
.super Landroid/util/SparseArray;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public bypass:Landroid/app/AppOpsManager$RestrictionBypass;

.field public final knownAttributionTags:Landroid/util/ArraySet;

.field public final packageName:Ljava/lang/String;

.field public final uidState:Lcom/android/server/appop/AppOpsService$UidState;

.field public final validAttributionTags:Landroid/util/ArraySet;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/server/appop/AppOpsService$UidState;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/ArraySet;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/appop/AppOpsService$Ops;->knownAttributionTags:Landroid/util/ArraySet;

    .line 10
    .line 11
    new-instance v0, Landroid/util/ArraySet;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/appop/AppOpsService$Ops;->validAttributionTags:Landroid/util/ArraySet;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$Ops;->packageName:Ljava/lang/String;

    .line 19
    .line 20
    iput-object p2, p0, Lcom/android/server/appop/AppOpsService$Ops;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    .line 21
    .line 22
    return-void
.end method
