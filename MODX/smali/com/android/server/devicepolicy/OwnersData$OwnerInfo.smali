.class public final Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final admin:Landroid/content/ComponentName;

.field public isOrganizationOwnedDevice:Z

.field public final packageName:Ljava/lang/String;

.field public remoteBugreportHash:Ljava/lang/String;

.field public remoteBugreportUri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->admin:Landroid/content/ComponentName;

    .line 6
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->packageName:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->remoteBugreportUri:Ljava/lang/String;

    .line 14
    iput-object p3, p0, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->remoteBugreportHash:Ljava/lang/String;

    .line 16
    iput-boolean p4, p0, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->isOrganizationOwnedDevice:Z

    .line 18
    return-void
.end method

.method public static readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string/jumbo v1, "component"

    .line 5
    invoke-interface {p0, v0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    const-string/jumbo v2, "remoteBugreportUri"

    .line 12
    invoke-interface {p0, v0, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object v2

    .line 16
    const-string/jumbo v3, "remoteBugreportHash"

    .line 19
    invoke-interface {p0, v0, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    move-result-object v3

    .line 23
    const-string/jumbo v4, "canAccessDeviceIds"

    .line 26
    invoke-interface {p0, v0, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object v4

    .line 30
    const-string/jumbo v5, "true"

    .line 33
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    move-result v4

    .line 37
    const-string/jumbo v6, "isPoOrganizationOwnedDevice"

    .line 40
    invoke-interface {p0, v0, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    move-result p0

    .line 48
    or-int/2addr p0, v4

    .line 49
    const-string v4, "DevicePolicyManagerService"

    .line 51
    if-nez v1, :cond_0

    .line 53
    const-string p0, "Owner component not found"

    .line 55
    invoke-static {v4, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    return-object v0

    .line 59
    :cond_0
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 62
    move-result-object v5

    .line 63
    if-nez v5, :cond_1

    .line 65
    const-string p0, "Owner component not parsable: "

    .line 67
    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    move-result-object p0

    .line 71
    invoke-static {v4, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    return-object v0

    .line 75
    :cond_1
    new-instance v0, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    .line 77
    invoke-direct {v0, v5, v2, v3, p0}, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;-><init>(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 80
    return-object v0
.end method


# virtual methods
.method public final dump(Landroid/util/IndentingPrintWriter;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "admin="

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->admin:Landroid/content/ComponentName;

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    const-string/jumbo v1, "package="

    .line 25
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    iget-object v1, p0, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->packageName:Ljava/lang/String;

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    .line 42
    const-string/jumbo v1, "isOrganizationOwnedDevice="

    .line 45
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    iget-boolean p0, p0, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->isOrganizationOwnedDevice:Z

    .line 50
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object p0

    .line 57
    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public final writeToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, v0, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5
    iget-object v1, p0, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->admin:Landroid/content/ComponentName;

    .line 7
    if-eqz v1, :cond_0

    .line 9
    const-string/jumbo v2, "component"

    .line 12
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 16
    invoke-interface {p1, v0, v2, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 19
    :cond_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->remoteBugreportUri:Ljava/lang/String;

    .line 21
    if-eqz v1, :cond_1

    .line 23
    const-string/jumbo v2, "remoteBugreportUri"

    .line 26
    invoke-interface {p1, v0, v2, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 29
    :cond_1
    iget-object v1, p0, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->remoteBugreportHash:Ljava/lang/String;

    .line 31
    if-eqz v1, :cond_2

    .line 33
    const-string/jumbo v2, "remoteBugreportHash"

    .line 36
    invoke-interface {p1, v0, v2, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 39
    :cond_2
    iget-boolean p0, p0, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->isOrganizationOwnedDevice:Z

    .line 41
    if-eqz p0, :cond_3

    .line 43
    const-string/jumbo v1, "isPoOrganizationOwnedDevice"

    .line 46
    invoke-interface {p1, v0, v1, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 49
    :cond_3
    invoke-interface {p1, v0, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 52
    return-void
.end method
