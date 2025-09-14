.class public abstract Lcom/android/server/enterprise/EnterpriseServiceConstants;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final KEY_CUSTOMIZE_INTENT_KEYPRESS:Ljava/util/List;

.field public static final KEY_CUSTOMIZE_KEYCODE:Ljava/util/List;

.field public static final KEY_CUSTOMIZE_KEYPRESS:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/enterprise/EnterpriseServiceConstants$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/server/enterprise/EnterpriseServiceConstants$1;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lcom/android/server/enterprise/EnterpriseServiceConstants;->KEY_CUSTOMIZE_KEYCODE:Ljava/util/List;

    .line 11
    .line 12
    new-instance v0, Lcom/android/server/enterprise/EnterpriseServiceConstants$2;

    .line 13
    .line 14
    invoke-direct {v0}, Lcom/android/server/enterprise/EnterpriseServiceConstants$2;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lcom/android/server/enterprise/EnterpriseServiceConstants;->KEY_CUSTOMIZE_KEYPRESS:Ljava/util/List;

    .line 22
    .line 23
    new-instance v0, Lcom/android/server/enterprise/EnterpriseServiceConstants$3;

    .line 24
    .line 25
    invoke-direct {v0}, Lcom/android/server/enterprise/EnterpriseServiceConstants$3;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    sput-object v0, Lcom/android/server/enterprise/EnterpriseServiceConstants;->KEY_CUSTOMIZE_INTENT_KEYPRESS:Ljava/util/List;

    .line 33
    .line 34
    return-void
.end method
