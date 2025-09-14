.class public final enum Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;
.super Ljava/lang/Enum;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;

.field public static final enum NOTIFICATION_PANEL_CLOSE:Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;

.field public static final enum NOTIFICATION_PANEL_OPEN:Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;


# instance fields
.field private final mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/16 v2, 0x145

    .line 5
    .line 6
    const-string v3, "NOTIFICATION_PANEL_OPEN"

    .line 7
    .line 8
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;-><init>(IILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;->NOTIFICATION_PANEL_OPEN:Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;

    .line 12
    .line 13
    new-instance v1, Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    const/16 v3, 0x146

    .line 17
    .line 18
    const-string v4, "NOTIFICATION_PANEL_CLOSE"

    .line 19
    .line 20
    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;-><init>(IILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v1, Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;->NOTIFICATION_PANEL_CLOSE:Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;

    .line 24
    .line 25
    filled-new-array {v0, v1}, [Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;->$VALUES:[Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;

    .line 30
    .line 31
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;->mId:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;->$VALUES:[Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;->mId:I

    .line 2
    .line 3
    return p0
.end method
