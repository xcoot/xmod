.class public final Lcom/android/server/devicepolicy/OwnerShellData;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final admin:Landroid/content/ComponentName;

.field public isAffiliated:Z

.field public final isDeviceOwner:Z

.field public final isManagedProfileOwner:Z

.field public final isProfileOwner:Z

.field public final parentUserId:I

.field public final userId:I


# direct methods
.method public constructor <init>(IILandroid/content/ComponentName;ZZZ)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/16 v2, -0x2710

    .line 8
    if-eq p1, v2, :cond_0

    .line 10
    move v3, v1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v3, v0

    .line 13
    :goto_0
    const-string/jumbo v4, "userId cannot be USER_NULL"

    .line 16
    invoke-static {v3, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 19
    iput p1, p0, Lcom/android/server/devicepolicy/OwnerShellData;->userId:I

    .line 21
    iput p2, p0, Lcom/android/server/devicepolicy/OwnerShellData;->parentUserId:I

    .line 23
    const-string v3, "admin must not be null"

    .line 25
    invoke-static {p3, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 28
    iput-object p3, p0, Lcom/android/server/devicepolicy/OwnerShellData;->admin:Landroid/content/ComponentName;

    .line 30
    iput-boolean p4, p0, Lcom/android/server/devicepolicy/OwnerShellData;->isDeviceOwner:Z

    .line 32
    iput-boolean p5, p0, Lcom/android/server/devicepolicy/OwnerShellData;->isProfileOwner:Z

    .line 34
    iput-boolean p6, p0, Lcom/android/server/devicepolicy/OwnerShellData;->isManagedProfileOwner:Z

    .line 36
    if-eqz p6, :cond_3

    .line 38
    if-eq p2, v2, :cond_1

    .line 40
    move p0, v1

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    move p0, v0

    .line 43
    :goto_1
    const-string/jumbo p3, "parentUserId cannot be USER_NULL for managed profile owner"

    .line 46
    invoke-static {p0, p3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 49
    if-eq p2, p1, :cond_2

    .line 51
    move v0, v1

    .line 52
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    move-result-object p0

    .line 56
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 59
    move-result-object p0

    .line 60
    const-string/jumbo p1, "cannot be parent of itself (%d)"

    .line 63
    invoke-static {v0, p1, p0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 66
    :cond_3
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "OwnerShellData[userId="

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget v1, p0, Lcom/android/server/devicepolicy/OwnerShellData;->userId:I

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, ",admin="

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget-object v1, p0, Lcom/android/server/devicepolicy/OwnerShellData;->admin:Landroid/content/ComponentName;

    .line 20
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/OwnerShellData;->isDeviceOwner:Z

    .line 29
    if-eqz v1, :cond_0

    .line 31
    const-string v1, ",deviceOwner"

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/OwnerShellData;->isProfileOwner:Z

    .line 38
    if-eqz v1, :cond_1

    .line 40
    const-string v1, ",isProfileOwner"

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/OwnerShellData;->isManagedProfileOwner:Z

    .line 47
    if-eqz v1, :cond_2

    .line 49
    const-string v1, ",isManagedProfileOwner"

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    :cond_2
    const/16 v1, -0x2710

    .line 56
    iget v2, p0, Lcom/android/server/devicepolicy/OwnerShellData;->parentUserId:I

    .line 58
    if-eq v2, v1, :cond_3

    .line 60
    const-string v1, ",parentUserId="

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    :cond_3
    iget-boolean p0, p0, Lcom/android/server/devicepolicy/OwnerShellData;->isAffiliated:Z

    .line 70
    if-eqz p0, :cond_4

    .line 72
    const-string p0, ",isAffiliated"

    .line 74
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    :cond_4
    const/16 p0, 0x5d

    .line 79
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    move-result-object p0

    .line 86
    return-object p0
.end method
