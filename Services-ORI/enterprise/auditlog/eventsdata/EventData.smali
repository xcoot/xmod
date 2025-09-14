.class public final Lcom/android/server/enterprise/auditlog/eventsdata/EventData;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final component:Lcom/android/server/enterprise/auditlog/eventsdata/types/EventComponent;

.field public final group:Lcom/android/server/enterprise/auditlog/eventsdata/types/EventGroup;

.field public final message:Lcom/android/server/enterprise/auditlog/eventsdata/types/EventMessage;

.field public final outcome:Lcom/android/server/enterprise/auditlog/eventsdata/types/EventOutcome;

.field public final privacy:Lcom/android/server/enterprise/auditlog/eventsdata/types/EventPrivacy;

.field public final severity:Lcom/android/server/enterprise/auditlog/eventsdata/types/EventSeverity;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/auditlog/eventsdata/types/EventMessage;Lcom/android/server/enterprise/auditlog/eventsdata/types/EventComponent;Lcom/android/server/enterprise/auditlog/eventsdata/types/EventPrivacy;Lcom/android/server/enterprise/auditlog/eventsdata/types/EventSeverity;Lcom/android/server/enterprise/auditlog/eventsdata/types/EventGroup;Lcom/android/server/enterprise/auditlog/eventsdata/types/EventOutcome;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->message:Lcom/android/server/enterprise/auditlog/eventsdata/types/EventMessage;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->privacy:Lcom/android/server/enterprise/auditlog/eventsdata/types/EventPrivacy;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->component:Lcom/android/server/enterprise/auditlog/eventsdata/types/EventComponent;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->severity:Lcom/android/server/enterprise/auditlog/eventsdata/types/EventSeverity;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->group:Lcom/android/server/enterprise/auditlog/eventsdata/types/EventGroup;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->outcome:Lcom/android/server/enterprise/auditlog/eventsdata/types/EventOutcome;

    .line 15
    .line 16
    return-void
.end method

.method public static createEvent(IIILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;
    .locals 8

    .line 1
    new-instance v7, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    .line 2
    .line 3
    new-instance v1, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventMessage;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-direct {v1, p3, v0}, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventMessage;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    new-instance v2, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventComponent;

    .line 10
    .line 11
    invoke-direct {v2, p4, v0}, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventComponent;-><init>(Ljava/lang/String;I)V

    .line 12
    .line 13
    .line 14
    new-instance v3, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventPrivacy;

    .line 15
    .line 16
    invoke-direct {v3, p0}, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventPrivacy;-><init>(I)V

    .line 17
    .line 18
    .line 19
    new-instance v4, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventSeverity;

    .line 20
    .line 21
    invoke-direct {v4, p1}, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventSeverity;-><init>(I)V

    .line 22
    .line 23
    .line 24
    new-instance v5, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventGroup;

    .line 25
    .line 26
    invoke-direct {v5, p2}, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventGroup;-><init>(I)V

    .line 27
    .line 28
    .line 29
    new-instance v6, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventOutcome;

    .line 30
    .line 31
    invoke-direct {v6, p5}, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventOutcome;-><init>(I)V

    .line 32
    .line 33
    .line 34
    move-object v0, v7

    .line 35
    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;-><init>(Lcom/android/server/enterprise/auditlog/eventsdata/types/EventMessage;Lcom/android/server/enterprise/auditlog/eventsdata/types/EventComponent;Lcom/android/server/enterprise/auditlog/eventsdata/types/EventPrivacy;Lcom/android/server/enterprise/auditlog/eventsdata/types/EventSeverity;Lcom/android/server/enterprise/auditlog/eventsdata/types/EventGroup;Lcom/android/server/enterprise/auditlog/eventsdata/types/EventOutcome;)V

    .line 36
    .line 37
    .line 38
    return-object v7
.end method
