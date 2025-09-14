.class public final Lcom/android/server/pm/permission/LegacyPermission;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mGids:[I

.field public final mPermissionInfo:Landroid/content/pm/PermissionInfo;

.field public final mType:I

.field public final mUid:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Landroid/content/pm/PermissionInfo;

    invoke-direct {v0}, Landroid/content/pm/PermissionInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/LegacyPermission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 8
    iput-object p2, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 9
    iput-object p3, v0, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    const/4 p2, 0x2

    .line 10
    iput p2, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 11
    iput p1, p0, Lcom/android/server/pm/permission/LegacyPermission;->mType:I

    const/4 p1, 0x0

    .line 12
    iput p1, p0, Lcom/android/server/pm/permission/LegacyPermission;->mUid:I

    .line 13
    sget-object p1, Llibcore/util/EmptyArray;->INT:[I

    iput-object p1, p0, Lcom/android/server/pm/permission/LegacyPermission;->mGids:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PermissionInfo;II[I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/server/pm/permission/LegacyPermission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 3
    iput p2, p0, Lcom/android/server/pm/permission/LegacyPermission;->mType:I

    .line 4
    iput p3, p0, Lcom/android/server/pm/permission/LegacyPermission;->mUid:I

    .line 5
    iput-object p4, p0, Lcom/android/server/pm/permission/LegacyPermission;->mGids:[I

    return-void
.end method


# virtual methods
.method public final write(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/permission/LegacyPermission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 2
    .line 3
    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    const-string v1, "item"

    .line 10
    .line 11
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 12
    .line 13
    .line 14
    iget-object v2, p0, Lcom/android/server/pm/permission/LegacyPermission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 15
    .line 16
    iget-object v2, v2, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 17
    .line 18
    const-string/jumbo v3, "name"

    .line 19
    .line 20
    .line 21
    invoke-interface {p1, v0, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 22
    .line 23
    .line 24
    iget-object v2, p0, Lcom/android/server/pm/permission/LegacyPermission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 25
    .line 26
    iget-object v2, v2, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 27
    .line 28
    const-string/jumbo v3, "package"

    .line 29
    .line 30
    .line 31
    invoke-interface {p1, v0, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 32
    .line 33
    .line 34
    iget-object v2, p0, Lcom/android/server/pm/permission/LegacyPermission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 35
    .line 36
    iget v2, v2, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 37
    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    const-string/jumbo v3, "protection"

    .line 41
    .line 42
    .line 43
    invoke-interface {p1, v0, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 44
    .line 45
    .line 46
    :cond_1
    iget v2, p0, Lcom/android/server/pm/permission/LegacyPermission;->mType:I

    .line 47
    .line 48
    const/4 v3, 0x2

    .line 49
    if-ne v2, v3, :cond_3

    .line 50
    .line 51
    const-string/jumbo v2, "type"

    .line 52
    .line 53
    .line 54
    const-string v3, "dynamic"

    .line 55
    .line 56
    invoke-interface {p1, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 57
    .line 58
    .line 59
    iget-object v2, p0, Lcom/android/server/pm/permission/LegacyPermission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 60
    .line 61
    iget v2, v2, Landroid/content/pm/PermissionInfo;->icon:I

    .line 62
    .line 63
    if-eqz v2, :cond_2

    .line 64
    .line 65
    const-string v3, "icon"

    .line 66
    .line 67
    invoke-interface {p1, v0, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 68
    .line 69
    .line 70
    :cond_2
    iget-object p0, p0, Lcom/android/server/pm/permission/LegacyPermission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 71
    .line 72
    iget-object p0, p0, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 73
    .line 74
    if-eqz p0, :cond_3

    .line 75
    .line 76
    const-string v2, "label"

    .line 77
    .line 78
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-interface {p1, v0, v2, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 83
    .line 84
    .line 85
    :cond_3
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 86
    .line 87
    .line 88
    return-void
.end method
