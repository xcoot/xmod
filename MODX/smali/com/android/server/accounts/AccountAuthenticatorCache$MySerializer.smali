.class public final Lcom/android/server/accounts/AccountAuthenticatorCache$MySerializer;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/content/pm/XmlSerializerAndParser;


# virtual methods
.method public final createFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Ljava/lang/Object;
    .locals 1

    .line 1
    const/4 p0, 0x0

    .line 2
    const-string/jumbo v0, "type"

    .line 5
    invoke-interface {p1, p0, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 9
    invoke-static {p0}, Landroid/accounts/AuthenticatorDescription;->newKey(Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;

    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public final writeAsXml(Ljava/lang/Object;Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 1

    .line 1
    check-cast p1, Landroid/accounts/AuthenticatorDescription;

    .line 3
    iget-object p0, p1, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    .line 5
    const/4 p1, 0x0

    .line 6
    const-string/jumbo v0, "type"

    .line 9
    invoke-interface {p2, p1, v0, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 12
    return-void
.end method
