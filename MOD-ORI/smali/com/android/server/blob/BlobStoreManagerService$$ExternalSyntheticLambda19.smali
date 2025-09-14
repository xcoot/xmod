.class public final synthetic Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/util/function/Function;

.field public final synthetic f$2:Landroid/app/blob/BlobHandle;

.field public final synthetic f$3:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(ILcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda13;Landroid/app/blob/BlobHandle;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda19;->f$0:I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda19;->f$1:Ljava/util/function/Function;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda19;->f$2:Landroid/app/blob/BlobHandle;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda19;->f$3:Ljava/util/ArrayList;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 9

    .line 1
    iget v0, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda19;->f$0:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda19;->f$1:Ljava/util/function/Function;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda19;->f$2:Landroid/app/blob/BlobHandle;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda19;->f$3:Ljava/util/ArrayList;

    .line 8
    .line 9
    check-cast p1, Lcom/android/server/blob/BlobMetadata$Leasee;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/android/server/blob/BlobMetadata$Leasee;->isStillValid()Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-nez v3, :cond_0

    .line 16
    .line 17
    goto :goto_3

    .line 18
    :cond_0
    iget v3, p1, Lcom/android/server/blob/BlobMetadata$Accessor;->uid:I

    .line 19
    .line 20
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-eq v0, v3, :cond_1

    .line 25
    .line 26
    goto :goto_3

    .line 27
    :cond_1
    iget-object v0, p1, Lcom/android/server/blob/BlobMetadata$Leasee;->descriptionResEntryName:Ljava/lang/String;

    .line 28
    .line 29
    if-nez v0, :cond_2

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    :goto_0
    move v7, v0

    .line 33
    goto :goto_1

    .line 34
    :cond_2
    iget-object v3, p1, Lcom/android/server/blob/BlobMetadata$Accessor;->packageName:Ljava/lang/String;

    .line 35
    .line 36
    invoke-interface {v1, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Landroid/content/res/Resources;

    .line 41
    .line 42
    const-string/jumbo v4, "string"

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v0, v4, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    goto :goto_0

    .line 50
    :goto_1
    const-wide/16 v0, 0x0

    .line 51
    .line 52
    iget-wide v3, p1, Lcom/android/server/blob/BlobMetadata$Leasee;->expiryTimeMillis:J

    .line 53
    .line 54
    cmp-long v0, v3, v0

    .line 55
    .line 56
    if-nez v0, :cond_3

    .line 57
    .line 58
    invoke-virtual {v2}, Landroid/app/blob/BlobHandle;->getExpiryTimeMillis()J

    .line 59
    .line 60
    .line 61
    move-result-wide v0

    .line 62
    move-wide v5, v0

    .line 63
    goto :goto_2

    .line 64
    :cond_3
    move-wide v5, v3

    .line 65
    :goto_2
    new-instance v0, Landroid/app/blob/LeaseInfo;

    .line 66
    .line 67
    iget-object v4, p1, Lcom/android/server/blob/BlobMetadata$Accessor;->packageName:Ljava/lang/String;

    .line 68
    .line 69
    iget-object v8, p1, Lcom/android/server/blob/BlobMetadata$Leasee;->description:Ljava/lang/CharSequence;

    .line 70
    .line 71
    move-object v3, v0

    .line 72
    invoke-direct/range {v3 .. v8}, Landroid/app/blob/LeaseInfo;-><init>(Ljava/lang/String;JILjava/lang/CharSequence;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    :goto_3
    return-void
.end method
