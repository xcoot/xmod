.class public abstract synthetic Lcom/android/server/enterprise/auditlog/eventsdata/EventDataMap$$ExternalSyntheticOutline0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static m(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map$Entry;
    .locals 7

    .line 1
    invoke-static {p2}, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventMessage;->buildMessage(Ljava/lang/String;)Lcom/android/server/enterprise/auditlog/eventsdata/types/EventMessage;

    .line 2
    .line 3
    .line 4
    move-result-object v1

    .line 5
    new-instance p2, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    .line 6
    .line 7
    new-instance v2, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventComponent;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-direct {v2, p3, v0}, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventComponent;-><init>(Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    new-instance v3, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventPrivacy;

    .line 14
    .line 15
    const/4 p3, 0x2

    .line 16
    invoke-direct {v3, p3}, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventPrivacy;-><init>(I)V

    .line 17
    .line 18
    .line 19
    new-instance v4, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventSeverity;

    .line 20
    .line 21
    const/4 p3, 0x5

    .line 22
    invoke-direct {v4, p3}, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventSeverity;-><init>(I)V

    .line 23
    .line 24
    .line 25
    new-instance v5, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventGroup;

    .line 26
    .line 27
    invoke-direct {v5, p0}, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventGroup;-><init>(I)V

    .line 28
    .line 29
    .line 30
    new-instance v6, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventOutcome;

    .line 31
    .line 32
    invoke-direct {v6, v0}, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventOutcome;-><init>(I)V

    .line 33
    .line 34
    .line 35
    move-object v0, p2

    .line 36
    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;-><init>(Lcom/android/server/enterprise/auditlog/eventsdata/types/EventMessage;Lcom/android/server/enterprise/auditlog/eventsdata/types/EventComponent;Lcom/android/server/enterprise/auditlog/eventsdata/types/EventPrivacy;Lcom/android/server/enterprise/auditlog/eventsdata/types/EventSeverity;Lcom/android/server/enterprise/auditlog/eventsdata/types/EventGroup;Lcom/android/server/enterprise/auditlog/eventsdata/types/EventOutcome;)V

    .line 37
    .line 38
    .line 39
    invoke-static {p1, p2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0
.end method
