.class public final Lcom/android/server/pm/permission/PermissionAllowlist;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mApexPrivilegedAppAllowlists:Landroid/util/ArrayMap;

.field public final mApexSignatureAppAllowlist:Landroid/util/ArrayMap;

.field public final mOemAppAllowlist:Landroid/util/ArrayMap;

.field public final mPrivilegedAppAllowlist:Landroid/util/ArrayMap;

.field public final mProductPrivilegedAppAllowlist:Landroid/util/ArrayMap;

.field public final mProductSignatureAppAllowlist:Landroid/util/ArrayMap;

.field public final mSignatureAppAllowlist:Landroid/util/ArrayMap;

.field public final mSystemExtPrivilegedAppAllowlist:Landroid/util/ArrayMap;

.field public final mSystemExtSignatureAppAllowlist:Landroid/util/ArrayMap;

.field public final mVendorPrivilegedAppAllowlist:Landroid/util/ArrayMap;

.field public final mVendorSignatureAppAllowlist:Landroid/util/ArrayMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionAllowlist;->mOemAppAllowlist:Landroid/util/ArrayMap;

    .line 10
    .line 11
    new-instance v0, Landroid/util/ArrayMap;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionAllowlist;->mPrivilegedAppAllowlist:Landroid/util/ArrayMap;

    .line 17
    .line 18
    new-instance v0, Landroid/util/ArrayMap;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionAllowlist;->mVendorPrivilegedAppAllowlist:Landroid/util/ArrayMap;

    .line 24
    .line 25
    new-instance v0, Landroid/util/ArrayMap;

    .line 26
    .line 27
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionAllowlist;->mProductPrivilegedAppAllowlist:Landroid/util/ArrayMap;

    .line 31
    .line 32
    new-instance v0, Landroid/util/ArrayMap;

    .line 33
    .line 34
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionAllowlist;->mSystemExtPrivilegedAppAllowlist:Landroid/util/ArrayMap;

    .line 38
    .line 39
    new-instance v0, Landroid/util/ArrayMap;

    .line 40
    .line 41
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionAllowlist;->mApexPrivilegedAppAllowlists:Landroid/util/ArrayMap;

    .line 45
    .line 46
    new-instance v0, Landroid/util/ArrayMap;

    .line 47
    .line 48
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionAllowlist;->mSignatureAppAllowlist:Landroid/util/ArrayMap;

    .line 52
    .line 53
    new-instance v0, Landroid/util/ArrayMap;

    .line 54
    .line 55
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionAllowlist;->mVendorSignatureAppAllowlist:Landroid/util/ArrayMap;

    .line 59
    .line 60
    new-instance v0, Landroid/util/ArrayMap;

    .line 61
    .line 62
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionAllowlist;->mProductSignatureAppAllowlist:Landroid/util/ArrayMap;

    .line 66
    .line 67
    new-instance v0, Landroid/util/ArrayMap;

    .line 68
    .line 69
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 70
    .line 71
    .line 72
    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionAllowlist;->mSystemExtSignatureAppAllowlist:Landroid/util/ArrayMap;

    .line 73
    .line 74
    new-instance v0, Landroid/util/ArrayMap;

    .line 75
    .line 76
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 77
    .line 78
    .line 79
    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionAllowlist;->mApexSignatureAppAllowlist:Landroid/util/ArrayMap;

    .line 80
    .line 81
    return-void
.end method


# virtual methods
.method public final getPrivilegedAppAllowlistState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionAllowlist;->mPrivilegedAppAllowlist:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/util/ArrayMap;

    .line 8
    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0

    .line 13
    :cond_0
    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Ljava/lang/Boolean;

    .line 18
    .line 19
    return-object p0
.end method
