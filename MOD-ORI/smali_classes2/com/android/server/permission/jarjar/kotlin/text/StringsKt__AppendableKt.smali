.class public abstract Lcom/android/server/permission/jarjar/kotlin/text/StringsKt__AppendableKt;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static appendElement(Ljava/lang/Appendable;Ljava/lang/Object;Lcom/android/server/permission/jarjar/kotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    if-nez p2, :cond_3

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    instance-of p2, p1, Ljava/lang/CharSequence;

    .line 8
    .line 9
    :goto_0
    if-eqz p2, :cond_1

    .line 10
    .line 11
    check-cast p1, Ljava/lang/CharSequence;

    .line 12
    .line 13
    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 14
    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    instance-of p2, p1, Ljava/lang/Character;

    .line 18
    .line 19
    if-eqz p2, :cond_2

    .line 20
    .line 21
    check-cast p1, Ljava/lang/Character;

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 36
    .line 37
    .line 38
    :goto_1
    return-void

    .line 39
    :cond_3
    invoke-interface {p2, p1}, Lcom/android/server/permission/jarjar/kotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    const/4 p0, 0x0

    .line 43
    throw p0
.end method
