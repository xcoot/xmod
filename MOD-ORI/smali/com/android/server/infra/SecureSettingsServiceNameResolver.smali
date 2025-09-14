.class public final Lcom/android/server/infra/SecureSettingsServiceNameResolver;
.super Lcom/android/server/infra/ServiceNameBaseResolver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mProperty:Ljava/lang/String;

.field public final mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3}, Lcom/android/server/infra/ServiceNameBaseResolver;-><init>(Landroid/content/Context;Z)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroid/text/TextUtils$SimpleStringSplitter;

    .line 5
    .line 6
    const/16 p3, 0x3a

    .line 7
    .line 8
    invoke-direct {p1, p3}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/infra/SecureSettingsServiceNameResolver;->mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/android/server/infra/SecureSettingsServiceNameResolver;->mProperty:Ljava/lang/String;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final dumpShort(ILjava/io/PrintWriter;)V
    .locals 1

    .line 2
    const-string/jumbo v0, "defaultService="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/infra/ServiceNameBaseResolver;->getDefaultServiceName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method public final dumpShort(Ljava/io/PrintWriter;)V
    .locals 1

    .line 1
    const-string v0, "SecureSettingsServiceNamer: prop="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/infra/SecureSettingsServiceNameResolver;->mProperty:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method public final readServiceName(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/infra/ServiceNameBaseResolver;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object p0, p0, Lcom/android/server/infra/SecureSettingsServiceNameResolver;->mProperty:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0, p0, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public final readServiceNameList(I)[Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/infra/ServiceNameBaseResolver;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/server/infra/SecureSettingsServiceNameResolver;->mProperty:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    new-instance v0, Landroid/util/ArraySet;

    .line 14
    .line 15
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/infra/SecureSettingsServiceNameResolver;->mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    invoke-virtual {p0}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_0

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    new-array p0, p0, [Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    check-cast p0, [Ljava/lang/String;

    .line 61
    .line 62
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "SecureSettingsServiceNameResolver["

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/infra/SecureSettingsServiceNameResolver;->mProperty:Ljava/lang/String;

    .line 9
    .line 10
    const-string v1, "]"

    .line 11
    .line 12
    invoke-static {v0, p0, v1}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method
