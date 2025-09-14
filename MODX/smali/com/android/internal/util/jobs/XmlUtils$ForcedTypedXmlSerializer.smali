.class public final Lcom/android/internal/util/jobs/XmlUtils$ForcedTypedXmlSerializer;
.super Lcom/android/internal/util/XmlSerializerWrapper;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/modules/utils/TypedXmlSerializer;


# virtual methods
.method public final attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;
    .locals 0

    .line 1
    invoke-static {p3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    .line 4
    move-result-object p3

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/XmlSerializerWrapper;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final attributeBytesBase64(Ljava/lang/String;Ljava/lang/String;[B)Lorg/xmlpull/v1/XmlSerializer;
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {p3, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 5
    move-result-object p3

    .line 6
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/XmlSerializerWrapper;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public final attributeBytesHex(Ljava/lang/String;Ljava/lang/String;[B)Lorg/xmlpull/v1/XmlSerializer;
    .locals 0

    .line 1
    invoke-static {p3}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    .line 4
    move-result-object p3

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/XmlSerializerWrapper;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final attributeDouble(Ljava/lang/String;Ljava/lang/String;D)Lorg/xmlpull/v1/XmlSerializer;
    .locals 0

    .line 1
    invoke-static {p3, p4}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    .line 4
    move-result-object p3

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/XmlSerializerWrapper;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final attributeFloat(Ljava/lang/String;Ljava/lang/String;F)Lorg/xmlpull/v1/XmlSerializer;
    .locals 0

    .line 1
    invoke-static {p3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    .line 4
    move-result-object p3

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/XmlSerializerWrapper;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;
    .locals 0

    .line 1
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 4
    move-result-object p3

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/XmlSerializerWrapper;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final attributeIntHex(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;
    .locals 1

    .line 1
    const/16 v0, 0x10

    .line 3
    invoke-static {p3, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 6
    move-result-object p3

    .line 7
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/XmlSerializerWrapper;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final attributeInterned(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/XmlSerializerWrapper;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;
    .locals 0

    .line 1
    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 4
    move-result-object p3

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/XmlSerializerWrapper;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final attributeLongHex(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;
    .locals 1

    .line 1
    const/16 v0, 0x10

    .line 3
    invoke-static {p3, p4, v0}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    .line 6
    move-result-object p3

    .line 7
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/XmlSerializerWrapper;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method
