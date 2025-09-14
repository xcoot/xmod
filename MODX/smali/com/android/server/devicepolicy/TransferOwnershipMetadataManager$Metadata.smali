.class public final Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final adminType:Ljava/lang/String;

.field public final sourceComponent:Landroid/content/ComponentName;

.field public final targetComponent:Landroid/content/ComponentName;

.field public final userId:I


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;Landroid/content/ComponentName;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;->sourceComponent:Landroid/content/ComponentName;

    .line 6
    iput-object p2, p0, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;->targetComponent:Landroid/content/ComponentName;

    .line 8
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 17
    iput p3, p0, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;->userId:I

    .line 19
    iput-object p4, p0, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;->adminType:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 6
    return v1

    .line 7
    :cond_0
    check-cast p1, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;

    .line 9
    iget v0, p1, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;->userId:I

    .line 11
    iget v2, p0, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;->userId:I

    .line 13
    if-ne v2, v0, :cond_1

    .line 15
    iget-object v0, p0, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;->sourceComponent:Landroid/content/ComponentName;

    .line 17
    iget-object v2, p1, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;->sourceComponent:Landroid/content/ComponentName;

    .line 19
    invoke-virtual {v0, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 25
    iget-object v0, p0, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;->targetComponent:Landroid/content/ComponentName;

    .line 27
    iget-object v2, p1, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;->targetComponent:Landroid/content/ComponentName;

    .line 29
    invoke-virtual {v0, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 35
    iget-object p0, p0, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;->adminType:Ljava/lang/String;

    .line 37
    iget-object p1, p1, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;->adminType:Ljava/lang/String;

    .line 39
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 42
    move-result p0

    .line 43
    if-eqz p0, :cond_1

    .line 45
    const/4 v1, 0x1

    .line 46
    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;->userId:I

    .line 3
    const/16 v1, 0x1f

    .line 5
    add-int/2addr v0, v1

    .line 6
    mul-int/2addr v0, v1

    .line 7
    iget-object v2, p0, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;->sourceComponent:Landroid/content/ComponentName;

    .line 9
    invoke-virtual {v2}, Landroid/content/ComponentName;->hashCode()I

    .line 12
    move-result v2

    .line 13
    add-int/2addr v2, v0

    .line 14
    mul-int/2addr v2, v1

    .line 15
    iget-object v0, p0, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;->targetComponent:Landroid/content/ComponentName;

    .line 17
    invoke-virtual {v0}, Landroid/content/ComponentName;->hashCode()I

    .line 20
    move-result v0

    .line 21
    add-int/2addr v0, v2

    .line 22
    mul-int/2addr v0, v1

    .line 23
    iget-object p0, p0, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;->adminType:Ljava/lang/String;

    .line 25
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 28
    move-result p0

    .line 29
    add-int/2addr p0, v0

    .line 30
    return p0
.end method
