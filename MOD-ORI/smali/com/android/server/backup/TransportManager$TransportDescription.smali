.class public final Lcom/android/server/backup/TransportManager$TransportDescription;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public configurationIntent:Landroid/content/Intent;

.field public currentDestinationString:Ljava/lang/String;

.field public dataManagementIntent:Landroid/content/Intent;

.field public dataManagementLabel:Ljava/lang/CharSequence;

.field public name:Ljava/lang/String;

.field public final transportDirName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/backup/TransportManager$TransportDescription;->name:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/backup/TransportManager$TransportDescription;->transportDirName:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/backup/TransportManager$TransportDescription;->configurationIntent:Landroid/content/Intent;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/backup/TransportManager$TransportDescription;->currentDestinationString:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/backup/TransportManager$TransportDescription;->dataManagementIntent:Landroid/content/Intent;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/server/backup/TransportManager$TransportDescription;->dataManagementLabel:Ljava/lang/CharSequence;

    .line 15
    .line 16
    return-void
.end method
