.class public final Lcom/android/server/devicepolicy/OwnersData$ProfileOwnerReadWriter;
.super Lcom/android/server/devicepolicy/OwnersData$FileReadWriter;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mUserId:I

.field public final synthetic this$0:Lcom/android/server/devicepolicy/OwnersData;


# direct methods
.method public constructor <init>(Lcom/android/server/devicepolicy/OwnersData;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/devicepolicy/OwnersData$ProfileOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/OwnersData;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Lcom/android/server/devicepolicy/OwnersData;->getProfileOwnerFile(I)Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/OwnersData$FileReadWriter;-><init>(Ljava/io/File;)V

    .line 8
    .line 9
    .line 10
    iput p2, p0, Lcom/android/server/devicepolicy/OwnersData$ProfileOwnerReadWriter;->mUserId:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final readInner(Lcom/android/modules/utils/TypedXmlPullParser;ILjava/lang/String;)Z
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    if-le p2, v0, :cond_0

    .line 4
    .line 5
    return v1

    .line 6
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    const-string/jumbo p2, "profile-owner"

    .line 10
    .line 11
    .line 12
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    if-nez p2, :cond_1

    .line 17
    .line 18
    const-string p0, "Unexpected tag: "

    .line 19
    .line 20
    invoke-virtual {p0, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    const-string p1, "DevicePolicyManagerService"

    .line 25
    .line 26
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    const/4 p0, 0x0

    .line 30
    return p0

    .line 31
    :cond_1
    iget-object p2, p0, Lcom/android/server/devicepolicy/OwnersData$ProfileOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/OwnersData;

    .line 32
    .line 33
    iget-object p2, p2, Lcom/android/server/devicepolicy/OwnersData;->mProfileOwners:Landroid/util/ArrayMap;

    .line 34
    .line 35
    iget p0, p0, Lcom/android/server/devicepolicy/OwnersData$ProfileOwnerReadWriter;->mUserId:I

    .line 36
    .line 37
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-static {p1}, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p2, p0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    return v1
.end method

.method public final shouldWrite()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/OwnersData$ProfileOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/OwnersData;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/devicepolicy/OwnersData;->mProfileOwners:Landroid/util/ArrayMap;

    .line 4
    .line 5
    iget p0, p0, Lcom/android/server/devicepolicy/OwnersData$ProfileOwnerReadWriter;->mUserId:I

    .line 6
    .line 7
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    :goto_0
    return p0
.end method

.method public final writeInner(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/OwnersData$ProfileOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/OwnersData;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/devicepolicy/OwnersData;->mProfileOwners:Landroid/util/ArrayMap;

    .line 4
    .line 5
    iget p0, p0, Lcom/android/server/devicepolicy/OwnersData$ProfileOwnerReadWriter;->mUserId:I

    .line 6
    .line 7
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    .line 16
    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    const-string/jumbo v0, "profile-owner"

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1, v0}, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->writeToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method
