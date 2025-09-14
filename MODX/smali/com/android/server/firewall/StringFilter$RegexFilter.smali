.class public final Lcom/android/server/firewall/StringFilter$RegexFilter;
.super Lcom/android/server/firewall/StringFilter;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mPattern:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>(Lcom/android/server/firewall/StringFilter$1;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/firewall/StringFilter;-><init>(Lcom/android/server/firewall/StringFilter$1;)V

    .line 4
    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/android/server/firewall/StringFilter$RegexFilter;->mPattern:Ljava/util/regex/Pattern;

    .line 10
    return-void
.end method


# virtual methods
.method public final matchesValue(Ljava/lang/String;)Z
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 3
    iget-object p0, p0, Lcom/android/server/firewall/StringFilter$RegexFilter;->mPattern:Ljava/util/regex/Pattern;

    .line 5
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_0

    .line 15
    const/4 p0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    :goto_0
    return p0
.end method
