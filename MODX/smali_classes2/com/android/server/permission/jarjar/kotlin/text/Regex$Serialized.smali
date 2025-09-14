.class final Lcom/android/server/permission/jarjar/kotlin/text/Regex$Serialized;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final flags:I

.field private final pattern:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/permission/jarjar/kotlin/text/Regex$Serialized;->pattern:Ljava/lang/String;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/permission/jarjar/kotlin/text/Regex$Serialized;->flags:I

    .line 7
    .line 8
    return-void
.end method

.method private final readResolve()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/permission/jarjar/kotlin/text/Regex;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/permission/jarjar/kotlin/text/Regex$Serialized;->pattern:Ljava/lang/String;

    .line 4
    .line 5
    iget p0, p0, Lcom/android/server/permission/jarjar/kotlin/text/Regex$Serialized;->flags:I

    .line 6
    .line 7
    invoke-static {v1, p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const-string v1, "compile(...)"

    .line 12
    .line 13
    invoke-static {v1, p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, p0}, Lcom/android/server/permission/jarjar/kotlin/text/Regex;-><init>(Ljava/util/regex/Pattern;)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method
