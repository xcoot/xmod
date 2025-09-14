.class public final Lcom/android/server/pm/permission/LegacyPermissionState$UserState;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mPermissionStates:Landroid/util/ArrayMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionState$UserState;->mPermissionStates:Landroid/util/ArrayMap;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/permission/LegacyPermissionState$UserState;)V
    .locals 6

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionState$UserState;->mPermissionStates:Landroid/util/ArrayMap;

    .line 5
    iget-object v0, p1, Lcom/android/server/pm/permission/LegacyPermissionState$UserState;->mPermissionStates:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 6
    iget-object v2, p0, Lcom/android/server/pm/permission/LegacyPermissionState$UserState;->mPermissionStates:Landroid/util/ArrayMap;

    iget-object v3, p1, Lcom/android/server/pm/permission/LegacyPermissionState$UserState;->mPermissionStates:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;

    iget-object v5, p1, Lcom/android/server/pm/permission/LegacyPermissionState$UserState;->mPermissionStates:Landroid/util/ArrayMap;

    .line 7
    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;

    invoke-direct {v4, v5}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;-><init>(Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;)V

    .line 8
    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
