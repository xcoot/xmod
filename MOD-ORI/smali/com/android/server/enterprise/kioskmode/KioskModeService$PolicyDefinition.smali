.class public final Lcom/android/server/enterprise/kioskmode/KioskModeService$PolicyDefinition;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final defaultMessage:Ljava/lang/String;

.field public final defaultValue:I

.field public final enforcedMessage:Ljava/lang/String;

.field public final policyMask:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$PolicyDefinition;->policyMask:I

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$PolicyDefinition;->defaultValue:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$PolicyDefinition;->defaultMessage:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    xor-int/lit8 p1, p1, 0x1

    .line 15
    .line 16
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$PolicyDefinition;->enforcedMessage:Ljava/lang/String;

    .line 21
    .line 22
    return-void
.end method
