.class public final Lcom/android/server/pm/pkg/SuspendParams;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAppExtras:Landroid/os/PersistableBundle;

.field public final mDialogInfo:Landroid/content/pm/SuspendDialogInfo;

.field public final mLauncherExtras:Landroid/os/PersistableBundle;

.field public final mQuarantined:Z


# direct methods
.method public constructor <init>(Landroid/content/pm/SuspendDialogInfo;Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/pkg/SuspendParams;->mDialogInfo:Landroid/content/pm/SuspendDialogInfo;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/pkg/SuspendParams;->mAppExtras:Landroid/os/PersistableBundle;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/pm/pkg/SuspendParams;->mLauncherExtras:Landroid/os/PersistableBundle;

    .line 9
    .line 10
    iput-boolean p4, p0, Lcom/android/server/pm/pkg/SuspendParams;->mQuarantined:Z

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/android/server/pm/pkg/SuspendParams;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/android/server/pm/pkg/SuspendParams;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/server/pm/pkg/SuspendParams;->mDialogInfo:Landroid/content/pm/SuspendDialogInfo;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/android/server/pm/pkg/SuspendParams;->mDialogInfo:Landroid/content/pm/SuspendDialogInfo;

    .line 16
    .line 17
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget-object v1, p0, Lcom/android/server/pm/pkg/SuspendParams;->mAppExtras:Landroid/os/PersistableBundle;

    .line 25
    .line 26
    iget-object v3, p1, Lcom/android/server/pm/pkg/SuspendParams;->mAppExtras:Landroid/os/PersistableBundle;

    .line 27
    .line 28
    invoke-static {v1, v3}, Landroid/os/BaseBundle;->kindofEquals(Landroid/os/BaseBundle;Landroid/os/BaseBundle;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_3
    iget-object v1, p0, Lcom/android/server/pm/pkg/SuspendParams;->mLauncherExtras:Landroid/os/PersistableBundle;

    .line 36
    .line 37
    iget-object v3, p1, Lcom/android/server/pm/pkg/SuspendParams;->mLauncherExtras:Landroid/os/PersistableBundle;

    .line 38
    .line 39
    invoke-static {v1, v3}, Landroid/os/BaseBundle;->kindofEquals(Landroid/os/BaseBundle;Landroid/os/BaseBundle;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_4

    .line 44
    .line 45
    return v2

    .line 46
    :cond_4
    iget-boolean p0, p0, Lcom/android/server/pm/pkg/SuspendParams;->mQuarantined:Z

    .line 47
    .line 48
    iget-boolean p1, p1, Lcom/android/server/pm/pkg/SuspendParams;->mQuarantined:Z

    .line 49
    .line 50
    if-eq p0, p1, :cond_5

    .line 51
    .line 52
    return v2

    .line 53
    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/pkg/SuspendParams;->mDialogInfo:Landroid/content/pm/SuspendDialogInfo;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/pm/pkg/SuspendParams;->mAppExtras:Landroid/os/PersistableBundle;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/os/PersistableBundle;->size()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v1, v2

    .line 20
    :goto_0
    add-int/2addr v0, v1

    .line 21
    mul-int/lit8 v0, v0, 0x1f

    .line 22
    .line 23
    iget-object v1, p0, Lcom/android/server/pm/pkg/SuspendParams;->mLauncherExtras:Landroid/os/PersistableBundle;

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    invoke-virtual {v1}, Landroid/os/PersistableBundle;->size()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    :cond_1
    add-int/2addr v0, v2

    .line 32
    mul-int/lit8 v0, v0, 0x1f

    .line 33
    .line 34
    iget-boolean p0, p0, Lcom/android/server/pm/pkg/SuspendParams;->mQuarantined:Z

    .line 35
    .line 36
    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    add-int/2addr p0, v0

    .line 41
    return p0
.end method

.method public final saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string/jumbo v1, "quarantined"

    .line 3
    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/android/server/pm/pkg/SuspendParams;->mQuarantined:Z

    .line 6
    .line 7
    invoke-interface {p1, v0, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/server/pm/pkg/SuspendParams;->mDialogInfo:Landroid/content/pm/SuspendDialogInfo;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    const-string v1, "dialog-info"

    .line 15
    .line 16
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 17
    .line 18
    .line 19
    iget-object v2, p0, Lcom/android/server/pm/pkg/SuspendParams;->mDialogInfo:Landroid/content/pm/SuspendDialogInfo;

    .line 20
    .line 21
    invoke-virtual {v2, p1}, Landroid/content/pm/SuspendDialogInfo;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 22
    .line 23
    .line 24
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/pkg/SuspendParams;->mAppExtras:Landroid/os/PersistableBundle;

    .line 28
    .line 29
    const-string v2, "FrameworkPackageUserState"

    .line 30
    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    const-string v1, "app-extras"

    .line 34
    .line 35
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 36
    .line 37
    .line 38
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/pkg/SuspendParams;->mAppExtras:Landroid/os/PersistableBundle;

    .line 39
    .line 40
    invoke-virtual {v3, p1}, Landroid/os/PersistableBundle;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catch_0
    move-exception v3

    .line 45
    const-string v4, "Exception while trying to write appExtras. Will be lost on reboot"

    .line 46
    .line 47
    invoke-static {v2, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 48
    .line 49
    .line 50
    :goto_0
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 51
    .line 52
    .line 53
    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/pkg/SuspendParams;->mLauncherExtras:Landroid/os/PersistableBundle;

    .line 54
    .line 55
    if-eqz v1, :cond_2

    .line 56
    .line 57
    const-string v1, "launcher-extras"

    .line 58
    .line 59
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 60
    .line 61
    .line 62
    :try_start_1
    iget-object p0, p0, Lcom/android/server/pm/pkg/SuspendParams;->mLauncherExtras:Landroid/os/PersistableBundle;

    .line 63
    .line 64
    invoke-virtual {p0, p1}, Landroid/os/PersistableBundle;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :catch_1
    move-exception p0

    .line 69
    const-string v3, "Exception while trying to write launcherExtras. Will be lost on reboot"

    .line 70
    .line 71
    invoke-static {v2, v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72
    .line 73
    .line 74
    :goto_1
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 75
    .line 76
    .line 77
    :cond_2
    return-void
.end method
