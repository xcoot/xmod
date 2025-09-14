.class public final Lcom/android/server/enterprise/auditlog/eventsdata/types/EventMessage;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final defaultMessage:Ljava/lang/String;

.field public final formatType:I

.field public message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventMessage;->defaultMessage:Ljava/lang/String;

    .line 6
    iput p2, p0, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventMessage;->formatType:I

    .line 8
    return-void
.end method

.method public static buildMessage(Ljava/lang/String;)Lcom/android/server/enterprise/auditlog/eventsdata/types/EventMessage;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventMessage;

    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventMessage;-><init>(Ljava/lang/String;I)V

    .line 7
    return-object v0
.end method


# virtual methods
.method public final buildLogMessage(Ljava/util/List;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventMessage;->message:Ljava/lang/String;

    .line 3
    if-eqz v0, :cond_3

    .line 5
    if-nez p1, :cond_0

    .line 7
    goto :goto_3

    .line 8
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_4

    .line 14
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventMessage;->message:Ljava/lang/String;

    .line 16
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 22
    const/4 p1, 0x0

    .line 23
    goto :goto_2

    .line 24
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 27
    move-result v1

    .line 28
    new-array v1, v1, [Ljava/lang/Object;

    .line 30
    const/4 v2, 0x0

    .line 31
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 34
    move-result v3

    .line 35
    if-ge v2, v3, :cond_2

    .line 37
    :try_start_0
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 40
    move-result-object v3

    .line 41
    check-cast v3, Ljava/lang/String;

    .line 43
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 46
    move-result-object v3

    .line 47
    aput-object v3, v1, v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    goto :goto_1

    .line 50
    :catch_0
    :try_start_1
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 53
    move-result-object v3

    .line 54
    check-cast v3, Ljava/lang/String;

    .line 56
    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 59
    move-result-object v3

    .line 60
    aput-object v3, v1, v2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 62
    goto :goto_1

    .line 63
    :catch_1
    :try_start_2
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 66
    move-result-object v3

    .line 67
    check-cast v3, Ljava/lang/String;

    .line 69
    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    .line 72
    move-result-object v3

    .line 73
    aput-object v3, v1, v2
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 75
    goto :goto_1

    .line 76
    :catch_2
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 79
    move-result-object v3

    .line 80
    aput-object v3, v1, v2

    .line 82
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 84
    goto :goto_0

    .line 85
    :cond_2
    move-object p1, v1

    .line 86
    :goto_2
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 89
    move-result-object p1

    .line 90
    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventMessage;->message:Ljava/lang/String;

    .line 92
    goto :goto_4

    .line 93
    :cond_3
    :goto_3
    const-string p1, ""

    .line 95
    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventMessage;->message:Ljava/lang/String;

    .line 97
    :cond_4
    :goto_4
    return-void
.end method
