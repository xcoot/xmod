.class public final Lcom/android/server/devicepolicy/PackageSetPolicySerializer;
.super Lcom/android/server/devicepolicy/PolicySerializer;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public final readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/admin/PolicyValue;
    .locals 1

    .line 1
    const-string/jumbo p0, "strings"

    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-interface {p1, v0, p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 9
    if-nez p0, :cond_0

    .line 11
    const-string p0, "DevicePolicyEngine"

    .line 13
    const-string p1, "Error parsing PackageSet policy value."

    .line 15
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    return-object v0

    .line 19
    :cond_0
    const-string p1, ";"

    .line 21
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 24
    move-result-object p0

    .line 25
    invoke-static {p0}, Ljava/util/Set;->of([Ljava/lang/Object;)Ljava/util/Set;

    .line 28
    move-result-object p0

    .line 29
    new-instance p1, Landroid/app/admin/PackageSetPolicyValue;

    .line 31
    invoke-direct {p1, p0}, Landroid/app/admin/PackageSetPolicyValue;-><init>(Ljava/util/Set;)V

    .line 34
    return-object p1
.end method

.method public final saveToXml(Ljava/lang/Object;Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/util/Set;

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    const-string p0, ";"

    .line 8
    invoke-static {p0, p1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 11
    move-result-object p0

    .line 12
    const/4 p1, 0x0

    .line 13
    const-string/jumbo v0, "strings"

    .line 16
    invoke-interface {p2, p1, v0, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 19
    return-void
.end method
