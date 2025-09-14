.class public final Lcom/android/server/compat/overrides/OverrideValue;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public enabled:Ljava/lang/Boolean;

.field public packageName:Ljava/lang/String;


# direct methods
.method public static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/compat/overrides/OverrideValue;
    .locals 3

    .line 1
    new-instance v0, Lcom/android/server/compat/overrides/OverrideValue;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    const-string/jumbo v2, "packageName"

    .line 10
    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object v2

    .line 14
    if-eqz v2, :cond_0

    .line 16
    iput-object v2, v0, Lcom/android/server/compat/overrides/OverrideValue;->packageName:Ljava/lang/String;

    .line 18
    :cond_0
    const-string/jumbo v2, "enabled"

    .line 21
    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object v1

    .line 25
    if-eqz v1, :cond_1

    .line 27
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 30
    move-result v1

    .line 31
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 34
    move-result-object v1

    .line 35
    iput-object v1, v0, Lcom/android/server/compat/overrides/OverrideValue;->enabled:Ljava/lang/Boolean;

    .line 37
    :cond_1
    invoke-static {p0}, Lcom/android/server/compat/overrides/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 40
    return-object v0
.end method


# virtual methods
.method public final write(Lcom/android/server/compat/overrides/XmlWriter;)V
    .locals 2

    .line 1
    const-string v0, "<override-value"

    .line 3
    invoke-virtual {p1, v0}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/android/server/compat/overrides/OverrideValue;->packageName:Ljava/lang/String;

    .line 8
    const-string v1, "\""

    .line 10
    if-nez v0, :cond_0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const-string v0, " packageName=\""

    .line 15
    invoke-virtual {p1, v0}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/android/server/compat/overrides/OverrideValue;->packageName:Ljava/lang/String;

    .line 20
    invoke-virtual {p1, v0}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p1, v1}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    .line 26
    :goto_0
    iget-object v0, p0, Lcom/android/server/compat/overrides/OverrideValue;->enabled:Ljava/lang/Boolean;

    .line 28
    if-nez v0, :cond_1

    .line 30
    goto :goto_2

    .line 31
    :cond_1
    const-string v0, " enabled=\""

    .line 33
    invoke-virtual {p1, v0}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    .line 36
    iget-object p0, p0, Lcom/android/server/compat/overrides/OverrideValue;->enabled:Ljava/lang/Boolean;

    .line 38
    if-nez p0, :cond_2

    .line 40
    const/4 p0, 0x0

    .line 41
    goto :goto_1

    .line 42
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 45
    move-result p0

    .line 46
    :goto_1
    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    .line 49
    move-result-object p0

    .line 50
    invoke-virtual {p1, p0}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p1, v1}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    .line 56
    :goto_2
    const-string p0, ">\n"

    .line 58
    invoke-virtual {p1, p0}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    .line 61
    const-string p0, "</override-value>\n"

    .line 63
    invoke-virtual {p1, p0}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    .line 66
    return-void
.end method
